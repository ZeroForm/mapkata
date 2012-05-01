class Mapkata
	attr_accessor :x, :y

	
	def initialize()
      @points = {}
   	end

	def move_from(x,y,radius)
	
		if x < 0 || x >= @x || y < 0 || y >= @y
			return
		end

		@points[[x,y]] = true
		if radius > 0
			move_from(x-1,y,radius-1)
			move_from(x+1,y,radius-1)
			move_from(x,y-1,radius-1)
			move_from(x,y+1,radius-1)
		end

	end

	def square_marked?(x,y)
		@points[[x,y]]?true:false
	end

	def squares_marked
		@points.length
	end
end