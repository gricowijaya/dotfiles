from a import list_pemain_skor
from b import pemenang
from c import rerata

# Pembuatan sebuah sebuah list pemain_golf menggunakan user-defined function yang telah dibuat
pemain_golf = list_pemain_skor()

# Pencetakan peserta ke berapa yang menjadi pemenang menggunakan user-defined function yang telah dibuat
print("Peserta yang menjadi pemenang adalah peserta ke-" + str(pemenang(pemain_golf)))

# Pencetakan rata-rata skor semua pemain.
print("Rata-rata skor semua pemain adalah", rerata(pemain_golf))
