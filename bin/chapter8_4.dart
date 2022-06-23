// クラス
// コンストラクタ
// インスタンス生成時に「引数を受け取らない」場合
// インスタンス生成時に「引数を受け取る」場合

main(List<String> arguments) {
  final moto1 = Motorcycle1();

  final moto2 = Motorcycle2("SUZUKI", "GS400");

  final moto3 = Motorcycle3("YAMAHA", "SR400");

}

// 引数を受け取らない場合のコンストラクタ(プロパティなし)
/*
class クラス名{
  クラス名(){
    処理...
  }
}
 */
class Motorcycle1 {
  Motorcycle1() {
    print("** 引数を受け取らない場合のコンストラクタ(プロパティなし) **");
    print("create Motorcycle1: property nothing");
  }
}

// 引数を受け取る場合のコンストラクタ
class Motorcycle2 {
  // プロパティを宣言
  String? brand;
  String? name;

  // コンストラクタで引数を渡す
  Motorcycle2(String brand, String name) {
    this.brand = brand;
    this.name = name;
    print("** 引数を受け取る場合のコンストラクタ **");
    print("create Motorcycle2: brand= $brand, name= $name");
  }
}

// 引数を受け取る場合のコンストラクタ(直接プロパティに代入)
class Motorcycle3 {
  // プロパティを宣言
  String brand;
  String name;

  // コンストラクタで引数を渡す
  Motorcycle3(this.brand, this.name) {
    print("** 引数を受け取る場合のコンストラクタ(直接プロパティに代入) **");
    print("create Motorcycle3: brand= $brand, name= $name");
  }
}
