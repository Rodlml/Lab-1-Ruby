class Computer
    @@users = {}
    
    def initialize username, password
        @username = username
        @password = password
        
        @files = {}
    end

    def create name
    	if @files[name] == nil
    		@files[name] = Time.now.inspect
    	else
    		puts "ERROR: Archivo ya existe!"
    	end
    end

    def ls
    	sorted = Hash[@files.sort_by{|k,v| k}]
    	sorted.each{|key,value|
    		puts "#{key} created at #{value}"
    	}
    end
end

class File
	def initialize name, hour
		@name = name
		@time = hour
		#puts "#{@time}"
	end
end