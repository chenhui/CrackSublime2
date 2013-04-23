require 'rake\testtask'

Rake::TestTask.new('test') do |t|
	t.test_files=FileList['*test.rb']
	t.warning=true
end		 

task:default=>[:test]