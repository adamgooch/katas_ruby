class Mars_Rover
   
   def initialize x, y, facing
      @x_coordinate = x
      @y_coordinate = y
      @facing = facing
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
         end
      end
   end

end
