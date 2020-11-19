require 'digest'

puts "Please input a word or a phrase for encrypting"
user_input = STDIN.gets.chomp

puts "What encoding do you prefer: 1) MD5, 2) SHA1 or 3) SHA2. Please input 1, 2 or 3"
encrypt = STDIN.gets.to_i

until encrypt.between?(1, 3)
  puts 'Выберите 1 или 2'
  encrypt = STDIN.gets.to_i
end

case encrypt
when 1 then
  puts Digest::MD5.hexdigest(user_input)
when 2 then
  puts Digest::SHA1.hexdigest(user_input)
when 3 then
  puts Digest::SHA2.hexdigest(user_input)
end
