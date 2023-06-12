# client1.rb

# socket 

# http://www.is.kyusan-u.ac.jp/~toshi/index.html

require "socket"

port=80
s=TCPSocket.open "www.is.kyusan-u.ac.jp", port
s.puts "GET /~toshi/ HTTP/1.0"
s.puts
while line=s.gets
    line.chomp!
    break if line==""
    puts line
end
s.close
