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
        Schema::create('product_prices', function (Blueprint $table) {
            $table->id();
            $table->string('kode_cabang')->index();
            $table->string('bar_code')->index();
            $table->string('nama_barang')->index();
            $table->string('cd_brg')->nullable();
            $table->integer('saldo')->default(0)->nullable();
            $table->decimal('hrg_0', 10, 2)->nullable();
            $table->decimal('hrg_1', 10, 2)->nullable();
            $table->decimal('hrg_2', 10, 2)->nullable();
            $table->decimal('hrg_3', 10, 2)->nullable();
            $table->decimal('hrg_4', 10, 2)->nullable();
            $table->decimal('hrg_5', 10, 2)->nullable();
            $table->longText('title')->nullable();
            $table->longText('description_1')->nullable();
            $table->longText('description_2')->nullable();
            $table->longText('description_3')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('product_prices');
    }
};
