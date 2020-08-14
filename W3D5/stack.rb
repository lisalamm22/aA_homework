class Stack
    def initialize
      @stack = []
    end

    def push(el)
      @stack.push(el)
    end

    def pop
      @stack.pop
    end

    def peek
      @stack.last
    end
  end

  # TEST
  p stack = Stack.new
  p stack.push('a')
  p stack.push('b')
  p stack.push('c')
  p stack.pop
  p stack.peek
