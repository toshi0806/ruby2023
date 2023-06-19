# client1.rb

# socket 

# http://www.is.kyusan-u.ac.jp/~toshi/index.html

# ruby client1.rb
# ruby client1.rb www.is.kyusan-u.ac.jp /~toshi/index.html

# ruby client1.rb -h www.is.kyusan-u.ac.jp /~toshi/index.html
# ruby client1.rb -b www.is.kyusan-u.ac.jp /~toshi/index.html

require "socket"

disp_head = false
disp_body = true

if ARGV[0] == "-h"
    disp_head = true
    disp_body = false
    ARGV.shift
elsif ARGV[0] == "-b"
    disp_body = true
    ARGV.shift
end

port=80
host=ARGV[0]
path=ARGV[1]

s=TCPSocket.open host, port
s.puts "GET #{path} HTTP/1.1"
s.puts "Host: #{host}" # "Host:" + host
s.puts

while line=s.gets
    line.chomp!
    puts line if disp_head
    break if line==""
end

while line=s.gets
    line.chomp!
    puts line if disp_body
end

s.close
