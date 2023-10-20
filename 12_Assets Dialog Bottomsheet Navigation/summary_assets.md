# Assets
- File yang di bundled dan di deployed ke dalam aplikasi
- Tipe - Tipe Assets: Static data (JSON Files), icons, images, dan fonts 

## Images
- Penggunaan images di flutter sangat mudah, cukup dengan menambahkan file image
ke dalam folder `assets/images` dan menambahkan path ke file tersebut ke dalam
file `pubspec.yaml` untuk menggunakan images assets kita hanya perlu memanggil
property `image.assets`
- Jika anda ingin menggunakan image dar internet maka anda tidak perlu
  menambahkan path ke file tersebut ke dalam file `pubspec.yaml` cukup dengan
  `Image.network('Link bisa ditaruh disini dan harus menggunakan petik dua')`
  
# Font
- Untuk menggunakan font di flutter kita harus menambahkan path ke file font
  tersebut ke dalam file `pubspec.yaml` dan menambahkan property `font_family`
  ke dalam file `pubspec.yaml` juga untuk menggunakan font tersebut kita harus
    menambahkan property `fontFamily` ke dalam widget `Text` atau `TextStyle`.
- Jika ingin menggunakan custom font anda bisa terlebih dahulu mendownload font
  yang anda inginkan dan install pada perangkat dekstop anda lalu baru bisa
  ditambahkan ke dalam file `pubspec.yaml`.

## Font Google
- Untuk menggunakan font google kita harus menambahkan package `google_fonts`
  ke dalam file `pubspec.yaml` dan menambahkan property `fontFamily` ke dalam
  widget `Text` atau `TextStyle` dan menambahkan property `fontFamily` ke
  dalam file `pubspec.yaml` juga.