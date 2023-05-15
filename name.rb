# name? と表示
# 変数にキーボードから名前を入力
# こんにちは、●● という形式で名前を表示

puts "name?"
name = gets
puts "こんにちわ、"+name

# number? と表示
# 変数にキーボードから数値を入力
# 入力された値+1を画面に表示
print "number?"
i = gets
#i = i.to_i
puts i.to_i+1
