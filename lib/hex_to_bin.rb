module BinAndHex 

	def bin_to_hex
		self.each_byte.map { |e| e<16 ? ('0'+e.to_s(16)) : e.to_s(16)}.join
	end

	def hex_to_bin
		self.scan(/../).map { |e| e.hex.chr  }.join
	end
end 

class String
	include BinAndHex
end

if $0==__FILE__
	puts "abcd陈辉".bin_to_hex
	puts "e99988e8be89".hex_to_bin
end	



