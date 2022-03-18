def caesar_cipher(str, factor)
  str_array = []
  str.each_char do |char|
    str_array.append(char.ord)
  end

  new_array = []
  str_array.each do |num|
    if num >= 65 && num <= 90
      new_num = num + factor
      if new_num > 90
        new_num -= 26
      end
      new_array.append(new_num)
    elsif num >= 97 && num <= 122
      new_num = num + factor
      if new_num > 122
        new_num -= 26
      end
      new_array.append(new_num)
    else new_array.append(num)
    end
  end

  new_string = []
  new_array.each do |number|
    new_string.append(number.chr)
  end
  
  p new_string.join("")
end

caesar_cipher("What a string!", 5)
