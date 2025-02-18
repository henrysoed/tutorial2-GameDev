Latihan: Playtest
1. Apa saja pesan log yang dicetak pada panel Output?
   ![image](https://github.com/user-attachments/assets/43b454d6-d9fd-461d-8489-fb35ea90d5af)
   Pesan log yang di cetak pada panel output adalah "Platform initialized" dan "Reached objective!"
   - *Platform initialized* merupakan pesan yang muncul saat awal kode di jalankan. Hal ini terjadi karena pada func_ready() terdapat baris print("Platform initialized")
   - *Reached objective!* merupakan pesan yang muncul karena objek telah mencapai batas area atas window.

2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
   ![image](https://github.com/user-attachments/assets/b97dd46d-0c8c-48a1-abfd-6e3c35c095c1)

3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
Iya, karena scene ObjectiveArea berkoneksi dengan signal body_entere untuk mendeteksi node yang memasuki area itu dengan method func_on_ObjectiveArea_body_entered(body: RigidBody2D). Funtion ini memiliki baris print("Reached objective!") apabila terdapat RigidBody2D dengan body.name == "BlueShip" memasuki area itu.

Latihan: Memanipulasi Node dan Scene
1. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?

   Node bertipe Sprite2D digunakan untuk menampilkan gambar atau tekstur pada game. Dalam hal ini, node Sprite2D pada BlueShip dan StonePlatform berfungsi untuk menampilkan gambar kapal (playerShip1_blue.png) dan platform batu (stone.png).

2. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?

   - RigidBody2D: Node ini digunakan untuk objek yang dipengaruhi oleh sistem fisika dalam Godot. Artinya, objek dengan RigidBody2D akan bereaksi terhadap gaya seperti gravitasi, tumbukan, dan gaya luar lainnya. Objek ini dapat bergerak secara dinamis sesuai dengan hukum fisika. Dalam kasus BlueShip, penggunaan RigidBody2D memungkinkan kapal bergerak secara bebas dalam dunia game, baik karena input pemain maupun karena interaksi dengan objek lain.

   - StaticBody2D: Node ini digunakan untuk objek yang tidak bergerak dan tidak terpengaruh oleh sistem fisika. Biasanya digunakan untuk elemen lingkungan seperti dinding, lantai, atau platform tetap. Karena StaticBody2D tidak mengalami perubahan posisi akibat gaya eksternal, maka objek lain yang bertabrakan dengannya akan bereaksi terhadap tumbukan, tetapi StaticBody2D sendiri tetap diam. Dalam hal ini, StonePlatform menggunakan StaticBody2D karena berfungsi sebagai platform yang tidak bergerak di dalam level.

3. Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?

   Secara logika, jika Mass diperbesar, kapal akan menjadi lebih berat dan lebih sulit untuk digerakkan oleh gaya luar (misalnya tabrakan atau gravitasi). Jika Mass diperkecil, kapal akan lebih mudah terpengaruh oleh gaya luar.
   
   Namun pada kenyataannya, setelah saya coba mengubah masa menjadi 1 kg dan 1000 kg tidak terlalu terlihat perbedaan nya.

4. Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?

   Jika atribut Disabled = true, maka StonePlatform tidak memiliki collision dan objek lain (termasuk BlueShip) akan bisa melewatinya tanpa ada tabrakan.

5. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
   - Position: Mengubah posisi kapal di viewport.
   - Rotation: Memutar kapal sesuai sudut yang diberikan.
   - Scale: Memperbesar atau memperkecil ukuran kapal.

6. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

   Nilai Position node StonePlatform dan StonePlatform2 relatif terhadap parent-nya (PlatformBlue). Karena mereka adalah child dari PlatformBlue, posisinya dihitung relatif terhadap parent, bukan terhadap MainLevel.
