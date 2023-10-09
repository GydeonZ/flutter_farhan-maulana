# Advance REST API 

1. REST API di dalam flutter adalah sebuah konsep untuk mengakses data dari
   server. Untuk menggunakan API terlebih dahulu menambahkan dependensi dio pada pubspec.yaml

2. Serialisasi Json adalah proses mengubah objek menjadi string. Sedangkan
   deserialisasi adalah proses mengubah string menjadi objek.

3. Struktur Request dan Response API

   - Request API

     - Method: GET, POST, PUT, DELETE
     - Endpoint: https://api.themoviedb.org/3/movie/popular?api_key=<<api_key>>&language=en-US&page=1
     - Header: Accept: application/json
     - Body: -

   - Response API

     - Status Code: 200, 201, 400, 401, 403, 404, 500
     - Header: Content-Type: application/json
     - Body: JSON