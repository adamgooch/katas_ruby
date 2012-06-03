class Bowling
   def get_score frames
      score = 0
      frameScore = 0
      roll = 0
      multiplier = 1
      strike_count = 0
      frames.split("").each do |i|
         roll += 1

         # get the roll score
         if i == 'X'
            rollScore = 10
            strike_count += 2
         elsif i == '-'
            next
         else
            rollScore = i.to_i
         end

         # add roll score to total score
         score += (rollScore * multiplier)

         # check for a spare and determine multiplier
         if roll % 2 == 1 #first roll of frame 
            frameScore = 0
         end
         frameScore += rollScore
         if frameScore == 10
            multiplier = 2
         else
            multiplier = 1
         end
         if roll >= 20
            multiplier = 1
         end

         # check the strike counts and determine multiplier
         if strike_count == 1
            multiplier = 2
            if roll == 20
               multiplier = 1
            end
         elsif strike_count == 2 
            multiplier = 2
            if roll == 19
               multiplier = 1
            end
         elsif strike_count == 3
            strike_count -= 1
            multiplier = 3
            if roll == 19
               multiplier = 2
            elsif roll == 20
               multiplier = 1
            end
         end

         if strike_count > 0
            strike_count -= 1
         end

      end
      score
   end
end
