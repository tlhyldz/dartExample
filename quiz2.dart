import 'dart:io';
/* Odev
1- iki notu girilen öğrencinin ortalamasını bulup sonucu yazdır.

2- Fiyatı girilen ürüne %18 kdv ekleyerek son fiyatı hesapla. */

void main(List<String> args) {
  /*print("birinci notunuzu giriniz");
  int not1 = int.parse(stdin.readLineSync()!);
  
  print("ikinici notunuzu giriniz");
  int not2 = int.parse(stdin.readLineSync()!);
  print("iki notun ortalaması: ${(not1+not2)/2}");*/

  print("ürün fiyatı giriniz:");
  int fiyat = int.parse(stdin.readLineSync()!);
  print("kdv'li fiyat: ${(fiyat*18)/100+fiyat}");



}
