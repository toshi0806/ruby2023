# キーボードから名前を入力
print "name?"
name = gets

# name.txt というファイルに変数 name の値を出力
File.open "name.txt", "a" do |file|
    file.puts name
end
