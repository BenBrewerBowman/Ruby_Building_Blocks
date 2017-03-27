def caesar_cipher(phrase, shift_factor)
  a_to_z = ("a".."z").to_a.join
  a_to_z_rotated = a_to_z.chars.rotate(shift_factor).join
  phrase.downcase.tr(a_to_z, a_to_z_rotated)
end

print "Enter a phrase: "
phrase = gets.chomp
print "Please enter a shift factor: "
shift_factor = gets.chomp.to_i
puts "The shifted phrase is: " + caesar_cipher(phrase, shift_factor)
