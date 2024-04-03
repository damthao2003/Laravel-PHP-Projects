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
        Schema::create('reviews', function (Blueprint $table) {
            $table->id('reviewID');
            $table->unsignedBigInteger('bookID');
            $table->unsignedBigInteger('userID');
            $table->tinyInteger('rating')->unsigned(); // unsigned: ko lay so am
            $table->text('reviewText');
            $table->date('reviewDate');
            $table->foreign('bookID')->references('bookID')->on('books');
            $table->foreign('userID')->references('userID')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('reviews');
    }
};
