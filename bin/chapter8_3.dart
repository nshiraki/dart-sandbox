// クラス
// メソッドの定義
// メソッドの呼び出し

main(List<String> arguments) {
  final moto = Motorcycle();
  // メソッドの呼び出し
  moto.startEngine();
  moto.stopEngine();
}

// メソッドを追加したクラス
class Motorcycle {

  void startEngine() {
    print("startEngine");
  }

  void stopEngine() {
    print("stopEngine");
  }
}
