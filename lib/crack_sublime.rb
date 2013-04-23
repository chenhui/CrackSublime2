require_relative 'binary_file'

class CrackSublime

	def initialize(file)
		@bin_file=BinFile.new(file)
	end

	def exe_file_read(length,offset)
		@bin_file.read_by_hex(length,offset)
	end

	def exe_file_set(hex_string,offset)
		@bin_file.write_to(hex_string,offset)
		
	end

end

if $0==__FILE__
	crack=CrackSublime.new('sublime_text.exe')
	offset=834421
	p	crack.exe_file_read(2,offset)
	crack.exe_file_set("B001",offset)
	p	crack.exe_file_read(2,offset)
end

