class Mars_Rover
   
   def initialize x, y, facing
      @x_coordinate = x
      @y_coordinate = y
      @facing = facing
      @grid_width = 20
      @grid_height = 20
      case @facing
      when 'n'
         @direction = 1
      when 'e'
         @direction = 2
      when 's'
         @direction = 3
      else
         @direction = 4
      end
   end

   def facing
      case @direction
      when 1
         @facing = 'n'
      when 2
         @facing = 'e'
      when 3
         @facing = 's'
      else
         @facing = 'w'
      end
      @facing
   end

   def coordinates
      @x_coordinate.to_s() + ',' + @y_coordinate.to_s()
   end

   def move instructions
      instructions.split("").each do |i|
         case i
         when 'r'
            @direction += 1
            if @direction > 4
               @direction = 1
            end
         when 'l'
            @direction -= 1
            if @direction < 1
               @direction = 4
            end
         when 'f'
            case @direction
            when 1
               @y_coordinate += 1
            when 2
               @x_coordinate += 1
            when 3
               @y_coodinate -= 1
            else
               @x_coordinate -= 1
            end
         when 'b'
            case @direction
            when 1
               @y_coordinate -= 1
            when 2
               @x_coordinate -= 1
            when 3
               @y_coodinate += 1
            else
               @x_coordinate += 1
            end
         end
         wrap_around_planet
      end
   end

   def wrap_around_planet
      if @x_coordinate < 0
         @x_coordinate = @grid_width
      elsif @x_coordinate > @grid_width
         @x_coordinate = 0
      elsif @y_coordinate < 0
         @y_coordinate = @grid_height
      elsif @y_coordinate > @grid_height
         @y_coordinate = 0
      end
   end

end
