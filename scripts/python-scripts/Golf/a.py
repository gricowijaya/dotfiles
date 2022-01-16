def list_pemain_skor():
    """Membuat sebuah sebuah list dengan elemen berupa dictionary yang berisi nama peserta dan skor peserta di semua holes."""

    def konversi_skor(istilah):
        """
        Mengkonversi skor dari istilah menjadi bilangan bulat.

        Keyword arguments:
        istilah -- istilah nilai dalam permain golf dalam bentuk string
        """
        # Pada pertandingan ini digunakan nilai PAR sama dengan lima.
        PAR = 5

        if istilah == 'ACE':
            return 1
        elif istilah == 'QD':
            PAR += 4
        elif istilah == 'TP':
            PAR += 3
        elif istilah == 'DB':
            PAR += 2
        elif istilah == 'BG':
            PAR += 1
        elif istilah == 'BR':
            PAR -= 1
        elif istilah == 'EG':
            PAR -= 2
        elif istilah == 'AL':
            PAR -= 3
        elif istilah == 'CN':
            PAR -= 4

        return PAR


    # Main function
    file_teks = open("input.txt", "r")
    pemain_golf = []

    # Membaca baris pertama file teks dan langsung dijadikan sebuah list
    data_file = file_teks.readline().split()

    # Proses pembuatan dict dan memasukkannya ke dalam list
    while data_file:
        total_skor = 0

        for i in data_file[1:]:
            total_skor += konversi_skor(i)

        pemain_golf.append(dict([(data_file[0], total_skor)]))

        # Membaca baris-baris berikutnya
        data_file = file_teks.readline().split()

    return pemain_golf
