require "/home/calin/football/lib/football/version"

class FootballClass
	attr_accessor :file_contents
	def initialize
	end
	
	#read from file function
	def read
		@file_content = File.open("/home/calin/football/football.dat","r")
	end
	
	#write team
	def write
		#call read function
		read
		#initialization
		line_nr = 1
		minim = 999999999
		team = ""
		
		#verify each line and determine smallest difference
		@file_content.each_line do |line|
			line=line.split(' ')
			
			#skip headers
			if line_nr >= 6
				if minim > line[6].to_i - line[8].to_i
					minim = line[6].to_i - line[8].to_i
					team = line[1]
				end
			end
			
			#increment line number
			line_nr += 1
		end
		
		#show on screen the result
		puts team
		return team
	end
end

