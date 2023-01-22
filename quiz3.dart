/* Odev
1- Parametre olarak bir tane int sayı alan fonksiyon yazınız. Bu fonksiyon aldığı değer kadar 
olan çift sayıların toplamını döndürsün.

2- Daire alanı hesaplayan fonksiyon yazınız. PI opsiyonel olmalı. Eğer PI sayısı verilmediyse
varsıyalan olarak 3,14 alınız.

3- Bir üçgenin kenarlarını isimlendirilmiş parametre olarak fonksiyon yazınız.

*/

void main(List<String> args) {
  int toplam = ciftSayilarinToplami(10);
  print("toplam: $toplam");

  double alan = daireAlanHesap(2);
  print("alan $alan");
  double alan2 = daireAlanHesap(4,3);
  print("alan2 $alan2");

  ucgenCesidi(birinciKenar: 5, ikinciKenar: 5, ucuncuKenar: 5);
}

//Answer 1
int ciftSayilarinToplami(int sayi){
  int toplam = 0;
  for(int i = 0; i< sayi; i++){
    if (i % 2 == 0 ){
      toplam += i;
    }
  }
  return toplam;
}

//Answer 2
double daireAlanHesap(double yariCap, [double piSayisi=3.14]){
  return piSayisi * yariCap * yariCap;
}

//Answer 3
void ucgenCesidi({int birinciKenar = 1,int ikinciKenar=1,int ucuncuKenar=1}){
  if (birinciKenar == ikinciKenar && birinciKenar == ucuncuKenar){
    print("Bu üçgen eşkenar üçgendir");
  }else if(birinciKenar == ikinciKenar || birinciKenar == ucuncuKenar || ikinciKenar == ucuncuKenar){
    print("Bu üçgen ikizkenar üçgendir");
  }else{
    print("Bu üçgen çeşitkenar üçgendir");
  }
}






