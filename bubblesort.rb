def bubblesort(array)
    while(check_in_order(array) == false)
        array.each_with_index do |item,index|   
            if(index < (array.length() - 1) && (item > array[index + 1]  )) 
                    current_item = item
                    next_item = array[index + 1]
                    array[index] = next_item

            end
        end
    end
    return array.to_s
    
end

def check_in_order(array)
    array.each_with_index do |item,index|   
        if(index < (array.length() - 1))
            unless(item > array[index + 1])
                return false
            end
        end
    end
    return true
end

puts(bubblesort([1,20,3,4,5,6,7]))
puts(bubblesort([1,3,5,9]))
puts(bubblesort([10,2,3,4,5,6]))
puts(bubblesort([1,2,3,4,50,6]))


