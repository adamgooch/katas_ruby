class Bowling
   def get_score frames
      score = 0
      frames.split("").each do |i|
         score += i.to_i
      end
      score
   end
end
