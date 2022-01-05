// https://codeforces.com/problemset/problem/59/A
import java.util.Scanner;

class Extensions {

  public String modifyingWord(Word WrittenWord) {
    String modifiedWord;

    for (int i = 0; i < WrittenWord.InputWord.length(); i++) {
      int charValue = WrittenWord.InputWord.charAt(i);
      if (charValue >= 97 && charValue <= 122) {
        WrittenWord.lowercase++;
      } else {
        WrittenWord.uppercase++;
      }
    }

    if (WrittenWord.lowercase < WrittenWord.uppercase) {
      modifiedWord = WrittenWord.InputWord.toUpperCase();
    } else if (WrittenWord.lowercase > WrittenWord.uppercase) {
      modifiedWord = WrittenWord.InputWord.toLowerCase();
    } else {
      modifiedWord = WrittenWord.InputWord.toLowerCase();
    }

    return modifiedWord;
  }
}

public class Word {
  String InputWord;
  int lowercase = 0;
  int uppercase = 0;

  public Word(String Input) {
    InputWord = Input;
  }

  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);
    String wordInput = in.nextLine();
    in.close();
    Word word = new Word(wordInput);
    Extensions plugin = new Extensions();
    System.out.println(plugin.modifyingWord(word));
  }
}
