class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue.first
    end

end

# TEST 
p q = Queue.new
p q.enqueue('a')
p q.enqueue('b')
p q.enqueue('c')
p q.dequeue
p q.peek