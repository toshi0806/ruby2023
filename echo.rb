# コマンドライン引数の値を画面に表示
#msg=ARGV[0]
#p ARGV
#String msg="";
#for(int i=0; i<ARGV.length; i++) {
#    print(ARGV[i] + " ");
#}
#println();

msg=""
i=0
while i<ARGV.length
    msg += ARGV[i]+" "
    i+=1
end
puts msg
