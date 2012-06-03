class Prime_Factors
   
   def get_factors number
      factors = []
      while number > 1
         for i in 2..number
            if number % i == 0
               factors << i
               number /= i
               break
            end
         end
      end
      factors
   end

end
