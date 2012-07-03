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
		it "output should not be nil after run " do
			kata02.write.should_not be_nil
		end
		it "output should be Leincester" do
			result = kata02.write
			result.should eq("Leicester")
		end
	end
end
