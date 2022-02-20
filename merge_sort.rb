def merge_sort(ary)
  if ary.size == 1
    ary
  else
    left = merge_sort(ary[0...ary.size/2])
    right = merge_sort(ary[ary.size/2...ary.size])
    merge(left, right)
  end
end

def merge(left, right, ary = [])
  (left.size + right.size).times do
    if left.empty?
      return ary.concat(right)
    elsif right.empty?
      return ary.concat(left)
    else
      if left[0] < right[0]
        ary.push(left.shift)
      else
        ary.push(right.shift)
      end
    end
  end
  ary
end

puts merge_sort([2, 20, 33, 73, 95, 39, 66, 69, 61, 98])
