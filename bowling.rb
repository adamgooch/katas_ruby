class Bowling
   def get_score frames
      score = 0
      frameScore = 0
      roll = 0
      multiplier = 1
      strike = false
      frames.split("").each do |i|
         roll += 1

         if i == 'X'
            rollScore = 10
            strike = true
         elsif i == '-'
            next
         else
            rollScore = i.to_i
         end

         score += (rollScore * multiplier)

         if roll % 2 == 1 #first roll of frame 
            frameScore = 0
         elsif strike
            strike = false
         end

         frameScore += rollScore

         if frameScore == 10 || strike 
            multiplier = 2
         else 
            multiplier = 1
         end
      end
      score
   end
end
