def bubble_sort(input)
    swap = false
    n = input.size
    counter = 0
    while !swap
        swap = true
        for index in 0...n
            if ((index+1) < input.size)
                if(input[index] > input[index+1])
                    temp = input[index]
                    input[index] = input[index+1]
                    input[index+1] = temp
                    swap = false
                end
            end
        end
        counter += 1
        n = input.size - counter
    end
    input
end
p bubble_sort([6,5,4,3,2,1])