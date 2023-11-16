# From and Advanced Form

1. Untuk membuat sebuah form pada flutter sendiri biasanya menggunakan Widget StatefulWidget dan form sendiri disimpan menggunakan GlobalKey<FormState>. Form ini merupakan sebuah isian yang dapat menampung isi lebih dari satu data.

2. Untuk membuat suatu inputan yang menerima isian data dari pengguna, bisa digunakan textField yang dimana nanti datanya akan diambil menggunakan sebuah controller yang bernama TextEditingController.
seperti contoh:
var inputController = TextEditingController();

kemudian setelah di inisialisasi:
TextField(
     controller: inputController,
);

3. RadioButton walaupun bukan bagian dari widget form bawaan dalam flutter, widget ini dapat di integrasikan ke dalam flutter form untuk membuat form lebih interaktif, untuk pemanggilannya bisa sebagai berikut:
var radioValue = “”;

Radio<String>(
value: ‘Tugas 11’, 
groupValue: radioValue,
onChanged: (String? value) {
setState(() {
    radioValue = value ?? ‘’;
      });
   },
);


1. Form Picker merupakan istilah yang mengacu pada komponen UI yang digunakan dalam form pada flutter untuk membantu user memilih atau memberikan inputan data tertentu. Form picker sendiri digunakan dalam berbagai keadaan, seperti saat memilih tanggal hingga memilih sebuah daftar opsi, dan sebagainya.

2. Salah satu contoh Form picker yang ada seperti Date Picker. Date picker sendiri digunakan secara khusus untuk memilih tanggal. Date picker sendiri akan menampilkan kalender dan memungkinkan user untuk menekan tampilan kalender yang berisikan tanggal untuk di user inginkan.
Cara membuatnya:
final selectDate = await showDatePicker (
    context: context,
    initialDate: currentDate,
    firstDate: DateTime(2020),
    lastDate: DateTime(currentDate.year + 3),
);

Jadi saat menggunakan date picker diberikan tanggal pertama yang bisa dipilih dalam date picker. Kemudian pada lastDate, +3 artinya tanggal terakhir yang bisa dipilih dari tahun pertama tadi.

3. Saat menggunakan Form picker sendiri perlu diperhatikan beberapa kondisi, seperti memastikan validasi data agar saat digunakan user saat memilih atau memasukkan sebuah nilai sesuai dengan aturan yang ditetapkan.
