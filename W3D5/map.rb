class Map

    def initialize 
        @map = Array.new #{Array.new(2)}
    end

    def set(key,value)
        key_idx = nil
        @map.each_with_index {|ele,idx| key_idx = idx if ele[0] == key }
        if key_idx == nil 
            @map << [key,value]
        else
            @map[key_idx][1] = value
        end
    end

    def get(key)
        got = @map.select { |kv_arr| kv_arr[0] == key }
        got == [] ? nil : got
    end

    def delete(key)
        got = @map.select { |kv_arr| kv_arr[0] == key }
        got == []? nil : @map.delete(got[0])
    end

    def show
        @map
    end

end


# TEST
p m = Map.new
p m.set('k1','v1')
p m.set('k2','v2')
p m.set('k3','v3')
p m.set('k3','v4')
p m.get('k1')
p m.delete('k2')
p m.show