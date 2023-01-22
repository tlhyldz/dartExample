void main(List<String> args) async{
  Map<String,dynamic> gelenUser = await kisiBilgisi(6);
  List<String> kurslarListesi = await kurslar(gelenUser['username']);
  String yorum = await yorumlar(kurslarListesi[0]);
  print(yorum);
}

Future<Map<String,dynamic>> kisiBilgisi(int id){
  print("$id idli kullanıcı getiriliyor.");
  return Future<Map<String,dynamic>>.delayed(Duration(seconds: 4),(){
    return {'username': 'root','id':id};
  });
}

Future<List<String>> kurslar(String username){
  print("$username kullanıcısının kursları getiriliyor.");
  return Future<List<String>>.delayed(Duration(seconds: 4),(){
    return ['flutter','python','cyber security'];
  });
}

Future<String>yorumlar(String kursAdi){
  return Future<String>.delayed(Duration(seconds: 1),(){
    return "Kurs çok faydalı";
  });
}