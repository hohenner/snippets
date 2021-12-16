# https://en.wikipedia.org/wiki/Quicksort
# range has < 2 elements, do nothing
# pick pivot
# reorder: < pivot before, > pivot after
# works on array of integers

def quicksort(array,low, high)
    if low < high
    pivot_loc = partition_array(array,low,high)
    puts "+++ low:#{low} high: #{high} pivot_loc: #{pivot_loc} array: #{array}"
    quicksort(array,low, pivot_loc - 1)
    quicksort(array,pivot_loc + 1,high)
    end

end

def partition_array(array,low,high)
    pivot = ((high - low)/2).floor + low
    pivot_value = array[pivot]

    puts "--- array: #{array} low: #{low} high: #{high} pivot: #{pivot} pivot_value: #{pivot_value}"

    while low <= high
        puts "low: #{low} high: #{high} pivot: #{pivot} array #{array}"
        if array[low] > pivot_value
            puts "greater"
            temp = array[high]
            array[high] = array[low] 
            array[low] = temp
            if high == pivot
                puts "high == pivot"
                pivot = low
                low += 1
            end
            high -= 1
        else 
            puts "less low #{low} pivot #{pivot} pivot_value #{pivot_value} array #{array} high #{high}"
            if low <= pivot
                puts "low < pivot "
                low += 1
            else 
                puts "low >= pivot"
                array[pivot] = array[low]
                array[low] =  pivot_value
                pivot += 1
                low += 1
            end
        end
    end
    pivot
end

# --- 4 elements --- 
array = [4,2,3,1]
puts "start: #{array}"
quicksort(array,0, array.size - 1)
puts "end: #{array}"

# --- 4 elements --- 
array = [4,3,2,1]
puts "start: #{array}"
quicksort(array,0, array.size - 1)
puts "end: #{array}"

# --- 10 elements --- 
array = [10,100,5,4,2,3,1,8,20]
puts "start: #{array}"
quicksort(array,0, array.size - 1)
puts "end: #{array}"

# --- 20 elements ---
array = [10,40,20,30,70,30,80,100,110,1,6,3,9,8,120,111]
puts "start: #{array}"
quicksort(array,0, array.size - 1)
puts "end: #{array}"