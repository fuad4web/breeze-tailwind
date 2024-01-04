<?php

namespace App\Http\Controllers;

use App\Models\category;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    
    public function index(Request $request)
    {
        $query = $request->input('search');

        // Check if a search query is provided
        if ($query) {
            $products = Product::where('name', 'like', "%$query%")
                ->orWhere('description', 'like', "%$query%")
                ->with('category')
                ->paginate(10);
        } else {
            // If no search query, fetch all products
            $products = Product::with('category')->paginate(10);
        }

        return view('dashboard', compact('products'));
    }

    public function createProduct() {
        $categories = category::all(['id', 'category_name']);
        return view('product.create', compact('categories'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'product_name' => 'required|string|unique:products,name',
            'product_description' => 'required|string|min:10|max:250',
            'product_price' => 'required|numeric',
            'product_quantity' => 'required|numeric',
            'product_image' => 'required|image|mimes:jpeg,png,jpg,gif',
            'category_id' => 'required|exists:categories,id',
        ]);

        // Handle file upload
        $imagePath = $request->file('product_image')->store();

        // Create a new product
        Product::create([
            'name' => $request->product_name,
            'slug' => Str::slug($request->product_name),
            'product_image' => $imagePath,
            'description' => $request->product_description,
            'price' => $request->product_price,
            'quantity' => $request->product_quantity,
            'category_id' => $request->category_id,
        ]);

        return redirect()->route('dashboard')->with('status', 'product-created');
    }

    public function editProductView(Product $product)
    {
        $categories = category::all(['id', 'category_name']);
        return view('product.edit', compact('product', 'categories'));
    }

    public function updateProduct(Request $request, Product $product)
    {
        $request->validate([
            'product_name' => 'required|string',
            'product_description' => 'required|string',
            'product_price' => 'required|numeric',
            'product_quantity' => 'required|integer',
            'category_id' => 'required|exists:categories,id',
            'product_image' => 'image|mimes:jpeg,png,jpg,gif|max:2048', // Validate image upload
        ]);

        // Update the product attributes
        $product->update([
            'name' => $request->input('product_name'),
            'description' => $request->input('product_description'),
            'price' => $request->input('product_price'),
            'quantity' => $request->input('product_quantity'),
            'category_id' => $request->input('category_id'),
        ]);

        // Handle image update if a new image is provided
        if ($request->hasFile('product_image')) {
            // Delete the old image if it exists
            if ($product->product_image) {
                Storage::delete($product->product_image);
            }

            // Store the new image
            $imagePath = $request->file('product_image')->store();
            $product->update(['product_image' => $imagePath]);
        }

        return redirect()->route('dashboard')->with('status', 'product-updated');
    }

    public function destroy(Product $product)
    {
        // Delete the product image if it exists
        if ($product->product_image) {
            Storage::delete($product->product_image);
        }

        // Delete the product from the database
        $product->delete();

        return redirect()->route('dashboard')->with('status', 'product-deleted');
    }

}
