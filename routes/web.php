<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CategoryController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

// Route::get('/users', [UserController::class, 'index']);
Route::get('/products', [ProductController::class, 'index']);
Route::get('/categories', [CategoryController::class, 'index']);

// Add routes for creating, updating, and deleting as needed

Route::middleware('auth')->group(function () {
    Route::get('/dashboard', [ProductController::class, 'index'])->name('dashboard');
    
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    Route::get('/products/search', [ProductController::class, 'index'])->name('products.search');

});

Route::middleware(['auth', 'checkUserStatus'])->group(function () {
    Route::get('/create/product', [ProductController::class, 'createProduct'])->name('create.product');
    Route::post('/create/product', [ProductController::class, 'store'])->name('store.product');
    
    Route::get('/products/{product}/edit', [ProductController::class, 'editProductView'])->name('edit.product');
    Route::put('/products/{product}', [ProductController::class, 'updateProduct'])->name('update.product');
    Route::delete('/products/{product}', [ProductController::class, 'destroy'])->name('destroy.product');
    
    Route::get('/users', [ProfileController::class, 'showUsers'])->name('users');
});

require __DIR__.'/auth.php';
