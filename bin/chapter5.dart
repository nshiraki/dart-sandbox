// アロー関数
void main(List<String> arguments) {
  // アロー関数の呼び出し

  // 合計した数値を取得
  int total = add(num1: 2, num2: 3);
  // 合計を表示
  showIntValue(value: total);
}

// アロー関数の定義

// 引数のnum1とnum2を足した数値を返却
int add({int num1 = 0, int num2 = 0}) => num1 + num2;

// 引数で渡された数値を表示
void showIntValue({int value = 0}) => print('showIntValue: value= $value');
