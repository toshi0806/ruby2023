# client1.rb

# socket 

# http://www.is.kyusan-u.ac.jp/~toshi/index.html

# ruby client1.rb
# ruby client1.rb www.is.kyusan-u.ac.jp /~toshi/index.html

require "socket"

port=80
host=ARGV[0]
path=ARGV[1]

s=TCPSocket.open host, port
s.puts "GET #{path} HTTP/1.1"
s.puts "Host: #{host}" # "Host:" + host
s.puts

while line=s.gets
    line.chomp!
    break if line==""
end

while line=s.gets
    line.chomp!
    puts line
end

s.close
