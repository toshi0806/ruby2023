# キーボードから名前を入力
print "name?"
name = gets

# name.txt というファイルに変数 name の値を出力
file = File.open "name.txt", "a"
file.puts name
file.close

