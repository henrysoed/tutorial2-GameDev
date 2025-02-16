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
2. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?
3. Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?
4. Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?
5. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
6. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
