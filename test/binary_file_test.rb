require 'test/unit'
require 'binary_file'

class BinFileTest<Test::Unit::TestCase

	def setup
		@bin_file=BinFile.new("test.txt")	
		@bin_file.write_utf8_to("陈辉",0)
	end

	def test_write_to
		@bin_file.write_to("ffff",3)	
		assert_equal("ffff",@bin_file.read_by_hex(2,3))
	end

	def  test_read_by_hex
		assert_equal "e99988e8be89".hex_to_bin.force_encoding('UTF-8'),"陈辉"
	end
	
	def teardown
		@bin_file.delete
	end

end

