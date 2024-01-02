def merge_sort(arr)
  return arr if arr.length == 1

  left_arr, right_arr = arr.each_slice((arr.length / 2.0).round).to_a

  right_arr = merge_sort(right_arr)
  left_arr = merge_sort(left_arr)
  # puts "left: #{left_arr.inspect}, right: #{right_arr.inspect}"
  merge(left_arr, right_arr)
end

def merge(l_arr, r_arr)
  result = []
  while !l_arr.empty? && !r_arr.empty?
    if l_arr[0] > r_arr[0]
      result << r_arr[0]
      r_arr.delete_at(0)
    else
      result << l_arr[0]
      l_arr.delete_at(0)
    end
  end

  # attach to other values if one array is empty
  until l_arr.empty?
    result << l_arr[0]
    l_arr.shift
  end
  until r_arr.empty?
    result << r_arr[0]
    r_arr.shift
  end

  result
end

xmp = [2, 3, 5, 34, 6, 78, 2, 4, 2]
p xmp
p merge_sort(xmp)
