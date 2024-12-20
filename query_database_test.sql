-- 1. Update alamat mahasiswa dengan NIM ‘123456’ menjadi ‘Jl. Raya No.5’.
UPDATE mahasiswa SET alamat='Jl. Raya No.5' WHERE NIM=123456;
SELECT * FROM mahasiswa; --untuk lihat perubahannya

-- 2. Tampilkan NIM, nama, dan jurusan dari mahasiswa yang memiliki jurusan ‘Teknik Informatika’,
-- serta tampilkan juga nama dosen pembimbingnya.
SELECT mahasiswa.nim, mahasiswa.nama, mahasiswa.jurusan, mata_kuliah.dosen_pengajar          
FROM mahasiswa                                          
LEFT JOIN mata_kuliah ON mahasiswa.nim = mata_kuliah.nim
WHERE jurusan='Teknik Informatika';

-- 3. Tampilkan 5 nama mahasiswa dengan umur tertua
SELECT * FROM mahasiswa                                         
ORDER BY umur DESC
LIMIT 5;

-- 4. Tampilkan nama mahasiswa, mata kuliah yang diambil, dan nilai yang diperoleh
-- untuk setiap mata kuliah. Hanya tampilkan data mahasiswa yang memiliki nilai lebih
-- bagus dari 70.
SELECT mahasiswa.nama, mata_kuliah.mata_kuliah, mata_kuliah.nilai
FROM mata_kuliah  
JOIN mahasiswa ON mahasiswa.nim = mata_kuliah.nim
WHERE mata_kuliah.nilai > 70;
