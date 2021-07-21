/*
 * not this the page https://codeforces.com/problemset/problem/1543/A Time limit per test
 * the page https://codeforces.com/problemset/problem/1489/A Time limit per test
 * 1 second Memory limit per test 256 megabytes Input : Standard Input Output :
 * Standart Output
 */

import java.util.Scanner;

class Digit {

  public int sumOfDigits(int a) {
    int sum = 0;

    // summing all the digits from input value example 129,
    // sum == 1+2+9 = 12
    for (sum = 0; a != 0; a /= 10) {
      sum += a % 10;
    }

    // returning the sum
    return sum;
  }
}

// the class from Greates Common Divisor
class GCD {
  // method for sumOfDigits
  // finding GCD for searching the excitement value
  public static int gcd(int a, int b) {

    // Euclid Algorithm
    if (a == 0)
      return b;
    else if (b == 0)
      return a;

    return gcd(b % a, a);
  }
}

// Driver
public class Solution extends GCD {

  // the member of Class Solution
  public static int numberOfTestCases;
  // the
  public static int a;

  public static void main(String[] args) {

    // create new object called digit
    Digit digit = new Digit();

    // input
    Scanner in = new Scanner(System.in);

    // input how many test cases
    numberOfTestCases = in.nextInt();
    // input a
    a = in.nextInt();

    // display the GCD
    System.out.println(gcd(a, digit.sumOfDigits(a)));
    System.out.println(gcd((a + digit.sumOfDigits(a)), digit.sumOfDigits((a + digit.sumOfDigits(a)))));

    in.close();
  }
}
