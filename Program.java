import java.util.Comparator;
import java.util.Scanner;

public class Program {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int tinggiDani = sc.nextInt();
    int tinggiBayu = sc.nextInt();
    sc.close();

    Siswa Dani = new Siswa(tinggiDani);
    Siswa Bayu = new Siswa(tinggiBayu);

    Komparasi ProsesKomparasi = new Komparasi();
    System.out.println(ProsesKomparasi.compare(Dani, Bayu));
  }
}

class Siswa {
  private int tinggi;

  public Siswa(int tinggi_siswa) {
    tinggi = tinggi_siswa;
  }

  public int getTinggi() {
    return tinggi;
  }
}

class Komparasi implements Comparator<Siswa> {
  public int compare(Siswa siswa1, Siswa siswa2) {
    return Integer.compare(siswa1.getTinggi(), siswa2.getTinggi());
  }
}
