# client1.rb

# socket 

# http://www.is.kyusan-u.ac.jp/~toshi/index.html

require "socket"

port=80
s=TCPSocket.open "www.is.kyusan-u.ac.jp", port
s.puts "GET /~toshi/ HTTP/1.0"
s.puts

is_body=false
while line=s.gets
    line.chomp!
    is_body=true if line==""
    puts line if is_body
end
s.close
