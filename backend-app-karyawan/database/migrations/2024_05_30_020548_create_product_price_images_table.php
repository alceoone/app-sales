<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('product_price_images', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('product_prices_id');
            $table->string('image_path');
            $table->timestamps();

            $table->foreign('product_prices_id')->references('id')->on('product_prices')->onDelete('cascade');

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('product_price_images');
    }
};
