File.open("ls.out", "r") do |file|
    i=1
    while line = file.gets
        puts i.to_s + ": " + line
        i+=1
    end

end
