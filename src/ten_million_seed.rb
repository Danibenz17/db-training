number = rand(10)

MILLION = 1000000

(50 * MILLION).times do |i|
    puts number
    number = number + 1 + rand(10)
end
