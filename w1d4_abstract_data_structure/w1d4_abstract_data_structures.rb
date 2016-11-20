class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack
  end

end

puts "Stack"
stack = Stack.new
(1..5).each { |x| stack.add(x) }
p stack.show
stack.remove
p stack.show
stack.add(6)
p stack.show
stack.remove
p stack.show

class Queue
  def initialize
    @queue = []
  end

  def add(el)
    @queue << el
  end

  def remove
    @queue.shift
  end

  def show
    @queue
  end
end

puts "Queue"
queue = Queue.new
(1..5).each { |x| queue.add(x) }
p queue.show
queue.remove
p queue.show
queue.add(6)
queue.remove
p queue.show

class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    if keys.include? key
      @map[index(key)][1] = value
    else
      @map << [key, value]
    end
  end

  def lookup(key)
    @map.detect do |map_key, _|
      map_key == key
    end
  end

  def remove(key)
    @map.delete_at(index(key))
  end

  def show
    @map
  end

  private

  def keys
    @map.map(&:first)
  end

  def index(key)
    @map.index(lookup(key))
  end
end

puts "Map"
my_map = Map.new
my_map.assign(1, 'odd')
my_map.assign(2, 'even')
my_map.assign(3, 'odd')
p my_map.show
p my_map.lookup(2)
my_map.remove(1)
p my_map.show
my_map.assign(2, 'still even')
p my_map.show
