require "./football/version"

class FootballClass
	attr_accessor :file_contents
	def initialize
		read
		write
	end
	def read
		@file_content = File.open("/home/calin/football/football.dat","r")
	end
	def write
		line_nr = 1
		minim = 999999999
		team = ""
		@file_content.each_line do |line|
			line=line.split(' ')
			if line_nr >= 6
				if minim > line[6].to_i - line[8].to_i
					minim = line[6].to_i - line[8].to_i
					team = line[1]
				end
			end
			line_nr += 1
		end
		puts team
	end
end
FootballClass.new
