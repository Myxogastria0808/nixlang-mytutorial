let
  # assert式
  # 条件式がfalseのときにエラーを発生させる
  # assert <条件式>; <式>
  safeDiv =
    a: b:
    assert b != 0;
    a / b;
in
{
  safeDiv1 = safeDiv 10 2; # 5
  safeDiv2 = safeDiv 10 0; # エラー
}
