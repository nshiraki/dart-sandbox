// クラス
// プロパティの宣言
// プロパティの呼び出し

main(List<String> arguments) {
  final moto = Motorcycle();
  // プロパティの呼び出し
  print("Motorcycle: brand= ${moto.brand}, name= ${moto.name}");
}

// プロパティを追加したクラス
class Motorcycle {
  // nullableで定義
  String? brand = "Ducati";
  String? name = "Ducati 996";
}
