-- 1
SELECT * FROM mst_member WHERE id_propinsi = 12 AND id_kabupaten = 12.08;

-- 2
SELECT * FROM mst_member a LEFT JOIN mst_propinsi b ON a.id_propinsi = b.kode_propinsi WHERE a.id_propinsi IS NULL;
-- 3
SELECT * FROM mst_member a LEFT JOIN mst_kabupaten b ON a.id_kabupaten = b.kode_kabupaten WHERE a.id_kabupaten IS NULL;
-- 4
SELECT * FROM mst_member a LEFT JOIN mst_kecamatan b ON a.id_kecamatan = b.kode_kecamatan WHERE a.id_kecamatan IS NULL;
-- 5
SELECT nama FROM mst_member a LEFT JOIN mst_kabupaten b ON a.id_kabupaten = b.kode_kabupaten WHERE a.nama_kabupaten = 'KAB. SIMALUNGUN';
-- 6
SELECT COUNT(*) FROM mst_instansi a LEFT JOIN mst_kabupaten b ON a.kode_kabupaten = b.kode_kabupaten WHERE a.kode_kabupaten = 'KAB. BIREUEN' AND a.kode_kabupaten = 'KAB. BENER MERIAH';
-- 7
SELECT * FROM mst_member WHERE nama LIKE 'M%';
-- 8
SELECT email FROM mst_member a LEFT JOIN mst_provinsi b ON a.id_provinsi = b.kode_propinsi WHERE email LIKE '%no%' AND nama_propinsi = 'SUMATERA UTARA';
-- 9
SELECT * FROM mst_member WHERE kode_instansi LIKE '%2004';
-- 10
SELECT * FROM mst_member WHERE id_kecamatan LIKE '%.08.%';