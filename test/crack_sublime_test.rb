require  'test/unit'
require 'crack_sublime'

class BinaryToHexTest<Test::Unit::TestCase

	def setup
	  	@crack=CrackSublime.new("sublime_text.exe")
	end

	def test_exe_file_read
	  	@crack.exe_file_set("8ac3",834421)
   	  	assert_equal(@crack.exe_file_read(2,834421).encode('UTF-8'),"8ac3")

		@crack.exe_file_set("b001",834421)
		assert_equal(@crack.exe_file_read(2,834421).encode('UTF-8'),"b001")
	end
	
	def teardown

	end
end
