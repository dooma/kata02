require "rspec"
require "./lib/football.rb"

class TestFootball
	kata02=FootballClass.new
	describe "#read" do
		it "file content should not be nil" do
			content=kata02.read
			content.should_not be_nil
		end
	end
	describe "#write" do
		it "output should be nil before run " do
			kata02.write.should be_nil
			kata02.write
		end
	end
end
