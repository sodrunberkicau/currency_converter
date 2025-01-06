## Curency converter
Project ini ada dua function yang dipilih untuk di test :

 1. `convertToUsd`
 Function `convertToUsd` digunakan untuk mengonversi nilai mata uang IDR (indonesian rupiah) ke USD, 
Function ini memiliki 1 paramater yang wajib diisi yaitu idrAmount dengan tipe data double.

Didalam function ini memiliki logika untuk melakukan perhitungan idrAmount dibagi dengan exchange rate. 

Exchange rate merupakan sebuah variable constant yang digunakan untuk menyimpan nilai yaitu 16.22900
Proyek ini adalah aplikasi Flutter sederhana yang digunakan untuk mengonversi mata uang antara IDR (Indonesian Rupiah) dan USD (United States Dollar) menggunakan nilai tukar tetap.

Proyek ini menggunakan State Management berbasis Provider untuk mengelola logika bisnis dan pembaruan UI.


 
 2. convertToIDR
Proyek ini adalah aplikasi Flutter sederhana yang digunakan untuk mengonversi mata uang antara IDR (Indonesian Rupiah) dan USD (United States Dollar) menggunakan nilai tukar tetap.
Proyek ini menggunakan State Management berbasis Provider untuk mengelola logika bisnis dan pembaruan UI.


3. Antarmuka Pengguna (UI)
File: screen/home_screen.dart
Menyediakan dua tombol untuk memilih konversi:
IDR ke USD
USD ke IDR
File: screen/idr_to_usd_screen.dart
Layar untuk konversi IDR ke USD:
Mengambil input dari pengguna dalam bentuk IDR.
Menggunakan fungsi convertToUsd dari IDRToUSDConverter.
Menampilkan hasil konversi dalam format mata uang USD.
File: screen/usd_to_idr_screen.dart
Layar untuk konversi USD ke IDR:
Mengambil input dari pengguna dalam bentuk USD.
Menggunakan fungsi convertToIDR dari USDToIDRConverter.
Menampilkan hasil konversi dalam format mata uang IDR.
Proyek ini adalah aplikasi Flutter sederhana yang digunakan untuk mengonversi mata uang antara IDR (Indonesian Rupiah) dan USD (United States Dollar) menggunakan nilai tukar tetap.

Proyek ini menggunakan State Management berbasis Provider untuk mengelola logika bisnis dan pembaruan UI.


