require_relative 'LinkedList'
class Stack
    attr_accessor :list

    def initialize
        @list= LinkedList.new
    end
    
    def push(number)     
        @list.add_at(0,number)     
    end
    
    def pop
      @list.remove(0)
    end

    def min
        i = 0
        node = @list.get(i)
        min_var= node.value


        while !node.next_node.nil?
            i+=1
            node = @list.get(i)
            if min_var > node.value
                min_var=node.value
            end
        end
        return min_var           
    end

end