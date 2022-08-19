arr = [5, 7, 11, 13, 15, 17, 21, 23, 25, 30]
def binary_search(arr, num, initial=0, last=arr.length-1)
  if initial > last
    return -1
  end
  mid = (initial + last) / 2
  if arr[mid] == num
     mid
  elsif arr[mid] < num
    initial = mid+1
    binary_search(arr, num, initial, last)
  else
    last = mid-1
    binary_search(arr, num, initial, last)
  end
end
puts binary_search(arr,30)