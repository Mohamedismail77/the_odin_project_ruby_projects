def stock_picker(data)
    days = data.combination(2).to_a 
    possibility = days.map{|day| day[1]-day[0]}
    result = days[possibility.index(possibility.max)]
    [data.index(result[0]),data.index(result[1])]
end


puts stock_picker([17,3,6,9,15,8,6,1,10]).to_s