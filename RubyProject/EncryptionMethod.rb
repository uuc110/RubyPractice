# frozen_string_literal: true

def ceaser_cipher(string, shift)
  string.each_char do |char|
    if char =~ /[a-z]/
      char = (((char.ord - 'a'.ord) + shift) % 26 + 'a'.ord).chr
    elsif char =~ /[A-Z]/
      char = (((char.ord - 'A'.ord) + shift) % 26 + 'A'.ord).chr
    end
    print char
  end
end

ceaser_cipher('What a string!', 5)

