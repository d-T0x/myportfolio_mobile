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
 
<br><br>

## **Assignment 8 - Deadline: Monday, 23 Sep 2026**
> ### Pertanyaan Reflektif Tugas 8
1. Jawaban akan saya pecah menjadi beberapa sub-poin
    1. Perbedaan method routing
        - `Navigator.push()` : menambahkan alur routing di bagian top of routing stack
        - `Navigator.pushReplacement()` : mengganti routing top of stack menjadi routing baru (replace top of stack, tidak menambah routing baru)
        -  `Navigator.pop()` : mem-"pop" top of stack sehingga mengembalikan current page ke page di top of stack
    2. Metode yang digunakan untuk membuka formulir dari kartu aksi adalah `Navigator.push()`
    3. Opsi drawer di di `left_drawer.dart` menggunakan `Navigator.push()` untuk page selain Home dan menggunakan `Navigator.pushReplacement()` untuk pergi ke Home. Hal ini berarti ketika menuju page selain Home, dalam stack routing ditambahkan route ke page yang dituju, sedangkan saat kembali ke Home, alih-alih me-pop, top of stack diganti dengan route ke Home.

2. Jawaban akan saya pecah menjadi beberapa sub-poin
    1. Susunan
        - Scaffold : mensuplai layout dasar dari Material Design supaya widget-widget di Material Design dapat dipakai
        - AppBar : mendisplay "header" dalam page yang
        - Drawer : meningkatkan user experience dalam menelusuri halaman-halaman aplikasi
    4. Warna tema portofolio digunakan di `AppBar` form project dan experience selain digunakan pada `AppBar` di home page.


3. Jawaban akan saya pecah menjadi beberapa sub-poin
    1. Tata letak tersebut digunakan untnuk formulir karena bersesuaian dengan User Experience paling optimal; susunan pengisian dimulai dari nama, deskripsi, kategori, dan seterusnya sesuai dengan urutan pengisian data terpenting hingga detailnya.
    2. Widget pengatur jarak digunakan untuk menyesuaikan peletakan widget lainnya supaya optimal sesuai ruang layar yang terbatas. Di sisi lain, widget penggulir memberikan fleksibilitas ruang yang lebih dengan fungsinya yang seakan meng-"expand" ruang milik halaman tertentu melalui pengguliran (*scroll*).  

//Apa peran GlobalKey<FormState>, validator, dan validate() saat tombol Simpan ditekan? Berikan satu contoh nilai yang ditolak oleh validasi dan jelaskan mengapa memilih jenis input atau papan ketik saja belum cukup.

4. Jawaban akan saya pecah menjadi beberapa sub-poin
    1. GlobalKey<FormState> : digunakan untuk me-*generate* key yang nantinya digunakan untuk memvalidasi form. Menggunakan `_formKey.currentState`, `validate()` milik FormState akan dipanggil untuk melakukan validasi field form. 

    2. Validator : memvalidasi submisi suatu field dalam form sesuai kriteria yang telah dibuat. Contoh ada pada project dan experience form, validator di form input string memverifikasi apakah field nama kosong, jika kosong akan me-*return* `null` yang berarti tidak ada *error* sedangkan kalau kosong maka akan me-*return* *error*. 
 
    ```dart
    validator: (String? value) {
    if (value == null || value.trim().isEmpty) {
        return "Deskripsi pengalaman tidak boleh kosong!";
    }
    return null;
    },
    ```

    3. Validate() : digunakan untuk memastikan validasi setiap field dalam form. Pengecekan validasi ada pada `form.dart` dan terekspresikan dalam (sebagian) kode:

    ```dart
    if (!validateOnFocusChange || !hasFocus || (validateOnFocusChange && hasFocus)) {
        final bool isFieldValid = field.validate();
        hasError |= !isFieldValid;
        // Ensure that only the first error message gets announced to the user.
        if (errorMessage.isEmpty) {
          errorMessage = field.errorText ?? '';
        }
        if (invalidFields != null && !isFieldValid) {
          invalidFields.add(field);
        }
    }
    ```

> ### Features
1. Add projects and experiences
2. Snackbar notifs 

> ### AI Use
1. #### Tools
    1. None
2. #### Prompt Strategy
    1. None
3. #### Prompting Log
    1. None

> ### Learning Sources
1. https://api.flutter.dev/flutter/material/Scaffold-class.html
2. https://api.flutter.dev/flutter/widgets/Navigator-class.html
3. https://docs.flutter.dev/cookbook/forms/validation

<br><br>