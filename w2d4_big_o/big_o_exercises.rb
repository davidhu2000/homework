fishes = ['fish', 'fiiiiiish', 'fiiiiish', 'fffish', 'ffiiiiisshh',
        'fsh', 'fiiiiissshhhhhh']

# O(n^2)
def quadratic_search(fishes)
  fishes.each_with_index do |fish1, idx1|
    max_length = true
    fishes.each_with_index do |fish2, idx2|
      next if idx1 == idx2
      max_length = false if fish2.length > fish1.length
    end
    return fish1 if max_length
  end
end

p quadratic_search(fishes) == 'fiiiiissshhhhhh'

# O(n log n)
class Array
  def merge_sort(&prc)
    return self if self.length <= 1

    prc ||= Proc.new { |x, y| x <=> y }

    center_idx = self.length / 2
    left = self.take(center_idx).merge_sort(&prc)
    right = self.drop(center_idx).merge_sort(&prc)

    Array.merge(left, right, &prc)
  end

  def self.merge(left, right, &prc)
    res = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1 then res << left.shift
      when 0  then res << left.shift
      when 1  then res << right.shift
      end
    end

    res + right + left
  end
end

def nlogn_search(fishes)
  fishes.merge_sort do |fish1, fish2|
    fish2.length <=> fish1.length
  end.first
end

p nlogn_search(fishes) == 'fiiiiissshhhhhh'

# O(n)
def linear_search(fishes)
  longest_fish = fishes.first
  fishes.each do |fish|
    longest_fish = fish if fish.length > longest_fish.length
  end
  longest_fish
end

p linear_search(fishes) == 'fiiiiissshhhhhh'


tiles_array = ["up", "right-up", "right", "right-down", "down",
               "left-down", "left", "left-up" ]

# O(n)
def slow_dance(tile_direction, tiles_array)
  tiles_array.each_with_index do |tile, idx|
    return idx if tile == tile_direction
  end
end

p slow_dance('left-down', tiles_array) == 5

# O(1)
tiles_hash = {"up" => 0, "right-up" => 1, "right" => 2,
              "right-down" => 3, "down" => 4, "left-down" => 5,
              "left" => 6, "left-up" => 7 }

def fast_dance(tile_direction, tiles_hash)
  tiles_hash[tile_direction]
end

p fast_dance('left-down', tiles_hash) == 5
