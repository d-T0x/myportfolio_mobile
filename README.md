# **PORTFOLIO MOBILE**
#### *mobile app built on Flutter as part of CS assignment*
 
I'll update this repo periodically, that's all :D
<br><br>

## **Assignment 7 - Deadline: Monday, 16 Sep 2026**
> ### Pertanyaan Reflektif Tugas 7
1. Widget tree adalah konsep pada Framework Flutter yang menunjukkan hubungan antar widget berbentuk tree. Dalam kata lain, penggunaan sistem widget dan sistem parent-childnya pada Flutter membentuk sebuah hubungan berbasis tree. <br><br>
Hubungan induk-anak (parent-child) pada flutter memenuhi aturan tertentu yakni "Constraints go down. Sizes go up. Parent sets position", yang berarti batasan max-min height-width didapat dari parent (turun ke children), ukuran widget diteruskan ke parent, dan parent mengatur posisi widgest childrennya.

2. Daftar widget dan fungsinya
    1. MyApp: aplikasi utama yang dijalankan
    2. MyHomePage: laman utama aplikasi (home page)
    3. Text: menampilkan text
    4. Padding: widget untuk inset childrennya
    5. Column: membuat array vertikal childrennya
    6. Row: membuat array horizontal childrennya
    7. SizedBox: membuat persegi (box) dengan ukuran tertentu
    8. Center: untuk me-center childrennya
    9. InfoCard: menampilkan kartu dengan data informasi
    10. Container: menampung kombinasi common painting, positioning, dan sizing widgets
    11. ItemCard: membentuk card dengan warna tertentu yang menampilkan snackbar saat ditekan

3. MaterialApp berfungsi sebagai parent yang mendefinisikan penggunaan fitur spesifik pada Material Design Widget. Pada dasarnya, Framework Flutter terbagi menjadi 2 bagian: Material widget (android based design guideline) dan Cupertino widget (iOS based design guideline). Widget ini umumnya digunakan sebagai root widget karena menjadi pendefinisi utama dari widget-widget Material-based lainnya.

4. StatelessWidget adalah widget yang setelah didefinisikan tidak dapat diubah (immutable), sedangkan StatefulWidget adalah widget yang dapat berubah sesuai dengna kondisi yang terpenuhi setelah didefinisikan. StatelessWidget baik digunakan ketika kita ingin membuat sebuah komponen statis atau saat ingin mengganti suatu bagian secara keseluruhan. Dibandingkan mengganti setiap komponen satu persatu, apabila kita ingin mengganti tampilan suatu bagian aplikasi secara total, StatelessWidget lebih baik digunakan. Di sisi lain, StatefulWidget baiknya digunakan ketika kita ingin ada komponen yang berubah bergantung pada suatu kejadian tertentu seperti user interaction dsb.

5. BuildContext adalah object yang digunakan Flutter untuk menentukan posisi suatu widget tertentu dalam widget tree. BuildContext penting karena beberapa fungsi krusial pada pengembangan aplikasi seperti navigasi dan konfigurasi widget diatur olehnya. <br><br>
Sebagaiamana yang telah dijelaskan sebelumnya, BuildContext pada suatu widget bisa digunakan salah satunya untuk mengonfigurasi  navigasi, hal ini dapat dilakukan menggunakan method seperti `Navigator.of(context).push()` pada method build suatu widget.


6. Perbedaan hot reload, hot restart, dan full restart:
    1. Hot reload meload perubahan kode ke VM, re-build widget tree, dan tetap mempertahankan state aplikasi (tidak menjalankan `main()` atau `initState()`)
    2. Hot restart meload perubahan kode ke VM dan restart aplikasi Flutter secara keseluruhan, menghapus state aplikasi saat itu.
    3. Full restart memulai ulang (restart) iOS/Android/web app sepenuhnya serta mengcompile program yang perlu dicompile. Dalam web, full restart juga restart Dart Development Compiler.
<br><br>
Kita tidak bisa mengandalkan hot reload sepenuhnya ketika terdapat perubahan kode dan ingin mencoba alur pengguna dari awal kode berjalan. Hal ini tidak bisa dicapai menggunakan hot reload karena state aplikasi akan tetap dipertahankan, berbeda dengan hot reload yang menghapus state sehingga dapat mempraktikkan alur penggunaan dari awal dengan lebih baik.

> ### Features
1. 

> ### AI Use
1. #### Tools
    1. None
2. #### Prompt Strategy
    1. None
3. #### Prompting Log
    1. None

> ### Learning Sources
1. https://youtube.com/playlist?list=PL4cUxeGkcC9giLVXCHSQmWqlHc9BLXdVx&si=Iq-ZYXg3x678JJh4
2. https://docs.flutter.dev/ui
3. https://stackoverflow.com/questions/55044126/what-is-the-difference-between-non-material-apps-and-material-apps
4. https://api.flutter.dev/flutter/widgets/BuildContext-class.html
5. https://stackoverflow.com/questions/61787776/what-is-the-difference-between-hot-reload-hot-restart-and-full-restart
6. 
<br><br>