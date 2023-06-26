SELECT*,
DATE(tanggal_lahir) as tanggal_lahir_saja,
TIMESTAMP(DATE(tanggal_lahir)) as tanggal_lahir_stamp,
MONTH(tanggal_lahir) as bulan_lahir,
YEAR(tanggal_lahir) as tahun_lahir,
DAY(tanggal_lahir) as tanggal_lahir,
DATE(CONCAT_WS('-', YEAR(tanggal_lahir), MONTH(tanggal_lahir), DAY(tanggal_lahir))) as tanggal_lahir_concat
FROM mahasiswa