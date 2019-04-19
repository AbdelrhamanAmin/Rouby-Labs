class ComplexNumber
    @@plusCounter = 0
    @@multiplCounter = 0

    attr_accessor :real, :img
    def initialize(real , img)
        @real = real
        @img = img 
    end
    def +(num)
        @@plusCounter+=1
        ComplexNumber.new(self.real+num.real,self.img+num.img)
    end

    def *(num)
        @@multiplCounter+=1
        ComplexNumber.new((self.real*num.real) - (self.img * num.img) ,(self.real*num.img) +( self.img*num.real) )
    end

    def self.bulk_add(arr)
        sum = ComplexNumber.new(0,0)
        # for c in arr
        #     sum = sum + c 
        # end
        arr.each do |c|
            sum = sum + c
        end

        sum
        # arr.inject(:+)
    end

    def self.bulk_multiply(arr)
        multiply = ComplexNumber.new(1,0)
        # for c in arr
        #     multiply = multiply * c
        # end
        arr.each do |c|
            multiply = multiply * c
        end
        multiply
        # arr.inject(:*)
    end

    def self.get_status
        puts "Addition operation = #{@@plusCounter} ,Multiplication operation =#{@@multiplCounter}"
        
    end

end

n = ComplexNumber.new(3,2)
x = ComplexNumber.new(1,7) 
z = ComplexNumber.new(10,8)

w = ComplexNumber.bulk_add([n,x])
q = ComplexNumber.bulk_multiply([n,x])

puts"------------------------------------"
puts "Adding With bulk function :"
puts "Adding => #{w.real}+#{w.img}i"
puts "Multiplication => #{q.real}+#{q.img}i"
puts"------------------------------------"
puts "Adding and Multipication Without bulk-function :"
puts "Adding => #{(n+x).real}+#{(n+x).img}i"
puts "Multiplication => #{(n*x).real}+#{(n*x).img}i"
puts"------------------------------------"
ComplexNumber.get_status