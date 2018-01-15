# encoding: utf-8

require "digest"

puts "Введите слово или фразу для шифрования: "
phrase = gets.strip

puts "Каким способом зашифровать:"
sleep 0.5
puts "1. MD5"
puts "2. SHA1"
puts "3. SHA2"
puts "Введите цифры 1, 2 или 3, соответственно:"

choice = gets.strip.to_i

if choice == 1
  puts "Вот что получилось:"
  puts Digest::MD5.hexdigest("choice")
elsif choice == 2
  puts "Вот что получилось:"
  puts Digest::SHA1.hexdigest("choice")
elsif choice == 3
  puts "Вот что получилось:"
  puts Digest::SHA2.hexdigest("choice")
else
  puts "Нужно было ввести цифры 1, 2 или 3, а не то, что сделали Вы!!!"
end

puts "Нажмите Enter для выхода из программы: "
gets
