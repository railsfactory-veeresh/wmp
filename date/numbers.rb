class Numbers

  def self.convert(number)
    number1=number.to_i%10
    if number1 == 1
    return "#{number.to_i}st"
    end
  if number1 ==2
    return "#{number.to_i}nd"
  end
  if number1 == 3
  return "#{number.to_i}rd"
  end
  if number1>=4 || number1==0
   return "#{number.to_i}th"
  end
end

end 
