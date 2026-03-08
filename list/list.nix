let
  # Listは、スペース区切リで要素を列挙することができる
  # Listの要素は、異なる型を混在させることができる
  myList = [
    1
    "two"
    ./.
  ];
  # Listの結合は、 ++ で行うことができる
  joinedList = [
    3
    4
  ]
  ++ [
    5
    6
  ];
  # Listの中での関数適用は、() で囲ってあげる必要がある。
  f = x: x + 1;
  functionAppliedList = [
    1
    2
    (f 3)
    (f 4)
    # 以下のように、() で囲わないと、f 5 は、関数がリストの要素として扱われてしまう
    f
    5
  ];
in
{
  inherit myList;
  inherit joinedList;
  inherit functionAppliedList;
}
