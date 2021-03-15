
require_relative 'Stack'

def balanced_brackets?(string)
     stack = Stack.new
     flag=false
    string.each_char do |x|
      if x=='(' || x=='{' || x=='['
        stack.push(x)
      elsif x==')' 
        if stack.pop == '('
          flag = true
        else
          flag = false
        end 
      elsif x=='}' 
        if stack.pop=='{'
          flag = true
        else
          flag = false
        end 
      elsif x==']'
        if stack.pop=='['
          flag = true
        else
          flag = false
        end 
      end      
    end
    
    flag
end


puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true
