def caesar_cipher(text, num)
  result = ""

  text.each_char do |char|
    if char =~ /[A-Za-z]/
      alpha = char.ord < 91 ? 'A'.ord : 'a'.ord
      temp = ((char.ord - alpha - num) % 26 + alpha).chr
      result << temp
    else
      result << char
    end
  end

  return result
end

puts "Enter a text:"
text = gets.chomp

puts "Enter a number:"
num = gets.chomp.to_i

result = caesar_cipher(text, num)
puts result
