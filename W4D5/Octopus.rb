def sluggish(arr)
    arr.each do |fish1|
        return fish1 if arr.all? {|fish2| fish1.length >= fish2.length}
    end
end

def merge_sort(arr)
    return arr if arr.length <= 1
    mid = arr.length/2
    left = arr.take(mid)
    right = arr.drop(mid)

    merge(merge_sort(left),merge_sort(right))
end

def merge(left,right)
    merged = []
    until left.empty? || right.empty?
        if left.first.length < right.first.length
            merged << left.shift
        else
            merged << right.shift
        end
    end
    merged + left + right
end

def dominant(arr)
    merge_sort(arr)[-1]
end

def clever(arr)
    arr.inject {|longest, fish| fish.length > longest.length ? fish : longest}
end


fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
p "fiiiissshhhhhh"
p sluggish(fish)
p dominant(fish)
p clever(fish)

def slow_dance(dir,tiles)
    tiles.each_with_index {|tile,tentacle| return tentacle if tile == dir}
end

def fast_dance(dir,new_tiles)
    new_tiles[dir]
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
new_tiles_data_structure = {"up"=>0,"right-up"=>1, "right"=>2, "right-down"=>3, "down"=>4, "left-down"=>5, "left"=>6,  "left-up"=>7}
p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)
p fast_dance("up", new_tiles_data_structure)
p fast_dance("right-down", new_tiles_data_structure)