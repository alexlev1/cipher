require 'digest'

puts "Введите слово или фразу для шифрования"
original_phrase = STDIN.gets.chomp

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"

cipher_type = STDIN.gets.chomp

if cipher_type == "1"
  cipher_frase = Digest::MD5.hexdigest(original_phrase)
elsif cipher_type == "2"
  cipher_frase = Digest::SHA1.hexdigest(original_phrase)
else
  puts "Такой кодировки не существует"
  exit
end

puts "Вот, что получилось:"
puts "#{cipher_frase}"