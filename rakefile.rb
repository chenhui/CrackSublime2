require 'rake\testtask'
$:.unshift  File.dirname(__FILE__)

Rake::TestTask.new('test') do |t|
	t.test_files=FileList['test/*test.rb']
	t.warning=true
end 

task:default=>[:test]