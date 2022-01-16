def pemenang(list_pemain_skor):
    """
    Mengembalikan (return) peserta ke berapa yang menjadi pemenang.
    
    Keyword arguments:
    list_pemain_skor -- sebuah list dengan elemen dictionary yang nama peserta dan skor peserta di semua holes
    """
    list_skor = []

    for i in list_pemain_skor:
        list_skor.append(list(i.values())[0])

    return list_skor.index(min(list_skor)) + 1
