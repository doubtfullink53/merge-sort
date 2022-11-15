def merge_sort(numbers_array)
    n = numbers_array.length
    if n <= 1
      numbers
    else
      
    left, right = numbers_array.each_slice((n / 2.0)).to_a

    sorted = merge(left, right)


    end

end

def merge(left, right)

  case
  when left == []
    right
  when right == []
    left
  when right.first > left.first
    [left[0]] + merge(left[1..-1], right)
  else
    [right[0]] + merge(left, right[1..-1])
  end


end




   p merge_sort([4,5,8,6,8,9])