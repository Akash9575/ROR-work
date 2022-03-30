#  puts "How many element you want in an array"
#  n = gets.to_i
#  array = [] 

#  puts "enter array element"
#  while n!=0 do
#     array << gets.to_i
#     n = n-1
#  end

# puts "enter the sum"
# sum = gets.to_i


numbers = [2,7,11,15]
result = 13

   # b = (0...numbers.length).to_a
   # c = b.combination(2).to_a
   # d = c.select{|x,y| numbers[x] + numbers[y] == result}
   # print d.first




   

      def sum(nums, target)
         hash = {}
         nums.each_with_index do |num, index|
           
            n = target - num
           if hash.include?(n)
             return [hash[n], index]
           else
             hash[num] = index
           end
         end
         return "can't find the sum"
       end


      print sum(numbers,result)
     
# =======

# output
#   [0,2]

