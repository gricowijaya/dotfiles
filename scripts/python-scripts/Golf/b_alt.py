def pemenang(list_pemain_skor):
    """Mengembalikan (return) peserta ke berapa yang menjadi pemenang."""
    dict_gabungan = {}

    for i in list_pemain_skor:
        dict_gabungan.update(i)

    return min(dict_gabungan, key=dict_gabungan.get)
