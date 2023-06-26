SELECT 
(SELECT tanggal_lahir FROM mahasiswa WHERE nama_awal_mahasiswa = 'Amanda') as amanda, 
(SELECT tanggal_lahir  FROM mahasiswa WHERE nama_awal_mahasiswa = 'Andi') as andi,
-- Datediff (selisih antara 2 tangal yang ditentukan)
(SELECT DATEDIFF(andi, amanda)) as selisih_hari
FROM
(SELECT
(SELECT tanggal_lahir
FROM mahasiswa WHERE nama_awal_mahasiswa = 'Amanda') as amanda,
(SELECT tanggal_lahir
FROM mahasiswa WHERE nama_awal_mahasiswa = 'Andi') as andi) amanda_andi;

-- Date Add (menambah beberapa hari/bulan/tahun berikutnya, berupa interval)
SELECT *, DATE_ADD(tanggal_lahir, INTERVAL 25 YEAR) as tanggal_ulang_tahun_ke25,
-- Date Sub (mengurangi beberapa hari/bulan/tahun sebelumnya, berupa interval)
DATE_SUB(CURRENT_DATE(), INTERVAL 30 SECOND) as 30_hari_lalu
FROM mahasiswa;