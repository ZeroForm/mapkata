class Mapkata
	attr_accessor :x, :y

	
	def initialize()
      @points = {}
      @hazards = {}
   	end

	def move_from(x,y,radius)

		next_points = {}
		current_points = {[x,y]=>true}

		radius+=1

		radius.times do
			current_points.each_key do |origin|
				x = origin[0]
				y = origin[1]
				if (x < 0) || (x >= @x) || (y < 0) || (y >= @y)
					next
				end

				if @hazards[[x,y]]
					next
				end

				if @points[[x,y]]
					next
				end

				@points[[x,y]] = true

				next_points[[x-1,y]] = true
				next_points[[x+1,y]] = true
				next_points[[x,y+1]] = true
				next_points[[x,y-1]] = true

			end
			current_points = next_points
			next_points = {}
		end
		return

		if (x < 0) || (x >= @x) || (y < 0) || (y >= @y)
			return false
		end

		if square_hazard?(x,y)
			return false
		end	

		if @points[[x,y]] && @points[[x,y]] >= radius
		 	return false
		 end
	
		@points[[x,y]] = radius

		if radius > 0
			move_from(x-1,y,radius-1)
			move_from(x+1,y,radius-1)
			move_from(x,y-1,radius-1)
			move_from(x,y+1,radius-1)
		end

	end

	def square_hazard?(x,y)
		@hazards[[x,y]]?true:false
	end

	def square_marked?(x,y)
		@points[[x,y]]?true:false
	end

	def squares_marked
		#puts @points.inspect
		@points.length
	end


	def add_hazard(x,y)
		@hazards[[x,y]] = true
	end

end