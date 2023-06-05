# コマンドライン引数の値を画面に表示
#msg=ARGV[0]
#puts msg

#for(int i=0; i<ARGV.length; i++) {
#    print(ARGV[i] + " ");
#}
#println();

i=0
while i<ARGV.length
    print ARGV[i]+" "
    i+=1
end
puts
