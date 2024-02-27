def merge_sort(arr)
  n=arr.length
  if n<=1
    return arr
  end

  mid = n / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..])

  merge(left,right) 
end


def merge(left,right) 
  
  merge_arr =[]
  left_pointer = 0
  right_pointer = 0
  while left_pointer< left.length && right_pointer<right.length
    if left[left_pointer]<=right[right_pointer] 
      merge_arr << left[left_pointer]
      left_pointer+=1
    else
      merge_arr << right[right_pointer]
      right_pointer+=1
    end
  end
    while left_pointer<left.length
      merge_arr << left[left_pointer]
      left_pointer+=1
    end
    while right_pointer<right.length
      merge_arr << right[right_pointer]
      right_pointer+=1
    end
  merge_arr
end



p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])