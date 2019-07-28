class Array
  def my_reverse
    low = 0
    high = (length - 1)
    while(low < high)
      tmp = self[low]
      self[low] = self[high]
      self[high] = tmp
      low += 1
      high -= 1
    end
    self
  end

  def my_rotate(k)
    (self[0...k].my_reverse + self[k...length].my_reverse).my_reverse
  end

  def leader()
    max = 0
    arr1 = []
    self.my_reverse.each do |a|
      if (max <= a)
        arr1 << a
        max = a
      else
        break
      end
    end
    arr1
  end

end


# arr = [1,3,4,5,6]
# puts "Reverse of #{arr} is :#{arr.my_reverse}"
#
# arr = [1,3,5,6]
# puts "Reverse of #{arr} is :#{arr.my_reverse}"
#
#
# arr = [1,3,4,5,6]
# k = 2
# puts "#{k} Rotate of #{arr} is :#{arr.my_rotate(k)}"
# puts "#{arr}"

puts "leader array"
arr = [5,3,1,3,23,3]
puts "Array : #{arr} leader array : #{arr.leader}"
arr = [5,3,25,13,10,3]
puts "Array : #{arr} leader array : #{arr.leader}"
