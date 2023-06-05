#! /usr/bin/env ruby
if ARGV[0] == "-n"
    nopt=true
    file=ARGV[1]
else
    nopt=false
    file=ARGV[0]
end

linnum=1
File.open(file, "r") do |f|
    while line = f.gets
        printf("%5d ",linnum) if nopt
        linnum += 1
        puts line
    end
end