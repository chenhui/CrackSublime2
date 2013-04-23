require_relative 'hex_to_bin'

class  BinFile 

	def initialize(file)
		@file = file		
	end

	def write_to(hex_string,offset)
		IO.binwrite(@file,([]<<hex_string).pack('H*'),offset)
	end

	def read_by_hex(length,offset)
		IO.binread(@file,length,offset).bin_to_hex
	end

	def write_utf8_to(utf8_string,offset)
		bin_string=utf8_string.encode('utf-8').bin_to_hex.hex_to_bin
		IO.write(@file,bin_string,offset)
	end	

	def  delete
		File.delete(@file)
	end

end

if $0 == __FILE__    
	file="test.txt"
	bin_file=BinFile.new(file)
	bin_file.write_to("ffff",3)
	p IO.binread(file)
	p bin_file.read_by_hex(2,3)
	bin_file.delete()
end

