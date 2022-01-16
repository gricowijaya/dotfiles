def rerata(list_pemain_skor):
    """Mengembalikan (return) rata-rata skor semua pemain."""
    list_skor = []

    for i in list_pemain_skor:
        list_skor.append(list(i.values())[0])

    return sum(list_skor) / len(list_skor)
