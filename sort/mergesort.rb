# https://en.wikipedia.org/wiki/Merge_sort

def mergesort(array_to_sort, start_index,end_index)
    if (array_to_sort.any? {|el| el.class != Integer})
        puts "input Array needs to be of Integers, Array: #{array_to_sort}"
        return
    end
    out_array = []
   if (start_index < end_index)
    mid_index = (end_index - start_index)/2 + start_index
    array_a = mergesort(array_to_sort,start_index,mid_index)
    array_b = mergesort(array_to_sort,mid_index+1,end_index)

    out_array = sort(array_a,array_b, out_array)
   else
    out_array = [array_to_sort[start_index]]
  end
 
  out_array
end

def sort(array_a,array_b, out_array)
    while (array_a.size > 0) || (array_b.size > 0)
        out_array << if (array_a.size == 0)
                        array_b.shift
                     elsif (array_b.size == 0)
                        array_a.shift
                     elsif (array_a.first < array_b.first)
                        array_a.shift
                     else        
                        array_b.shift
                     end
    end

    out_array
end

puts "--- merge 4 elements ---"
ar = [1,3,5,2]
out = mergesort(ar, 0, ar.size - 1)
pp out

puts "--- merge 10 elements ---"
ar = [10,3,5,2,7,4,9,8,6,1]
out = mergesort(ar, 0, ar.size - 1)
pp out

puts "--- merge same elements ---"
ar = [1,1,1,1,1]
out = mergesort(ar, 0, ar.size - 1)
pp out

puts "--- merge mixed elements ---"
ar = [10,'z',2,'d',6,'g',8,'a']
out = mergesort(ar, 0, ar.size - 1)
pp out