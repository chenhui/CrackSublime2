require 'test/unit'
require 'hex_to_bin'


class BinStringTest<Test::Unit::TestCase

	def setup
	end

	def test_binary_to_hexs
		assert_equal "陈辉".bin_to_hex(),"e99988e8be89" 
	end

	def  test_hex_to_bin
		assert_equal "e99988e8be89".hex_to_bin.force_encoding('UTF-8'),"陈辉"
	end

	def teardown
	end
end
