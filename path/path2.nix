let
  hello = "hello.txt";
  # Path型とString型の結合は、Path型になる
  # また、生成されるPathは、絶対パスになる
  path = ./. + "hello";
in
path
