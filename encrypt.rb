if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require 'digest'

puts "Введите слово или фразу для шифрования"
user_input = STDIN.gets.chomp

puts "What encoding do you prefer: 1) MD5 or 2)SHA1. Please input 1 or 2"
encrypt = STDIN.gets.to_i

case encrypt
when 1 then puts Digest::MD5.hexdigest(user_input)
when 2 then puts Digest::SHA1.hexdigest(user_input)
end
