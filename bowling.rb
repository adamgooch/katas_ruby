class Bowling
   def get_score frames
      score = 0
      frameScore = 0
      roll = 0
      multiplier = 1
      frames.split("").each do |i|
         rollScore = i.to_i
         roll += 1
         score += (rollScore * multiplier)
         if roll % 2 == 1 #first roll of frame 
            frameScore = 0
         end
         frameScore += rollScore
         frameScore == 10 ? multiplier = 2 : multiplier = 1
      end
      score
   end
end
