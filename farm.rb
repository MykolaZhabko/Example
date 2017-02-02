# Написать метод который будет проверять возраст всех свиней, и если они старше 10 дней, сдавать на мясо
# За каждую сданую свинью ферма получает 10$
# За каждую новокупленную свинью ферма платит 2$
# Существует вероятность болезни для свиньи 1/200
# Сделать пошаговый жизненный цикл фермы см. пример
# Если ферма собирает 1000$ она закупает 20 новых свиней, если есть места
# Увеличивать возраст свиньи
# Можно достроить ферму если больше 50000$
# Каждый день на кормежку одной свиньи уходит 0.5$
# Добавить стартовый капитал для фермы
# Импровизация приветствуется

class Farm
  attr_reader :width, :length

  def initialize width, length
    @width = width
    @length = length
    init_pens
  end
def status
    puts '================================================'
    @width.times do |i|
      @length.times do |j|
        print @pens[i][j].condition
      end
      puts
    end
    puts '================================================'
    puts
  end
def grow day = gets.chomp.to_i
  @day = day
  while @day > 0 do
    @width.times do |i|
        @length.times do |j|
          @pens[i][j].next_day
        end
      end
      system 'cls'
      @day -=1
     puts '================================================'
      @width.times do |i|
        @length.times do |j|
          print @pens[i][j].next_day_print
        end
        puts
      end
      puts '================================================'
      puts
      sleep 0.1
  end

end
private
def init_pens
    @pens = []

    @width.times do |i|
      @pens[i] = []
        @length.times do |j|
          @pens[i][j] = Pen.new
        end
      end
    end

end

class Pen
attr_accessor :pig
def initialize pig = 1
    @pig = pig
end
def condition
  @pig = rand(25..87)
    print "#{@pig} "
end
def next_day
  if @pig != 90 && @pig != 0
    @pig += 1
end
if @pig == 90
  @pig = 0
end
    print "#{@pig} "
end
def next_day_print
    print "#{@pig} "
end
end

class Pig
  attr_reader :age

  def initialize (age = 30)
    @age = age
  end

  private
end


system 'cls'
puts "                    WELCOME TO YOUR FARM                 "
print "Print 'View' to look on farm: "
prog = gets.chomp
farm = Farm.new 5, 10
case prog
  when "View" then
    farm.status
  end

puts "Enter growing days: "
farm.grow
#farm.add_pigs(10)

# пример
#while farm.still_live
#  farm.next_day
#end
