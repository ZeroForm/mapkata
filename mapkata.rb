class Mapkata
	attr_accessor :x, :y, :points
	
	def initialize()
      @points = {}
      @hazards = {}
   	end

	def move_from(x,y,radius)

		next_points = {}
		current_points = {[x,y]=>true} #square we input is certainly marked

		radius+=1 #first square doesnt really count so have to add one to our loop count

		radius.times do #make sure we do it at least radius times .. if radius is too high last loops will be quick
			current_points.each_key do |point|
				x = point[0]
				y = point[1]
				#disallow anything outside the map bounds, hazards, and don't repeat any points
				if @points[[x,y]] || (x < 0) || (x >= @x) || (y < 0) || (y >= @y) || @hazards[[x,y]]
					next
				end

				#mark the current square
				@points[[x,y]] = true

				#mark all adjacent squares for next time
				next_points[[x-1,y]] = true
				next_points[[x+1,y]] = true
				next_points[[x,y+1]] = true
				next_points[[x,y-1]] = true
			end
			current_points = next_points #next loops will go over the currently adjacent squares
			next_points = {}
		end
	end

	def square_marked?(x,y)
		@points[[x,y]]?true:false
	end

	def squares_marked
		@points.length
	end

	def add_hazard(x,y)
		@hazards[[x,y]] = true
	end

end