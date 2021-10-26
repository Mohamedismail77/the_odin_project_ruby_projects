def stock_picker(data)
    days = data.combination(2).to_a 
    result = days[days.map{|day| day[1]-day[0]}.index(days.map{|day| day[1]-day[0]}.max())]
    [data.index(result[0]),data.index(result[1])]
end


puts stock_picker([17,3,6,9,15,8,6,1,10]).to_s