class MyComplex
    
    # attr_reader = :realNumber , :imagNumber
    # attr_writer = :realNumber , :imagNumber 
    #it will display error when write :realNumber , :imagNumber

    attr_accessor :realNumber , :imagNumber
    $count_addition = 0
    $count_multiplication = 0

    def initialize (x =0 , i=0)
        @realNumber = x
        @imagNumber = i
    end

   public def +(obj)
        self.class.new(
            @realNumber + obj.realNumber ,
        #    (@imagNumber + obj.imagNumber).to_s + "i")
        (@imagNumber + obj.imagNumber))
        $count_addition = $count_addition + 1
        
    end
    def *(obj)
        # obj.imagNumber.chomp("i") 
        self.class.new(
        #    ( (@realNumber* obj.realNumber )-(@imagNumber *(obj.imagNumber).to_i)), ((@realNumber * (obj.imagNumber).to_i) + (@imagNumber * obj.realNumber).to_s + "i")
        ( (@realNumber* obj.realNumber )-(@imagNumber *obj.imagNumber)), ((@realNumber * (obj.imagNumber)) + (@imagNumber * obj.realNumber))

        )
        $count_multiplication = $count_multiplication + 1
    end
    def bulk_add (myObjects = Array.new)
        sum = MyComplex.new 
        myObjects.each {
            |obj| 
            sum = sum + obj
            #  sum = sum + obj
            # sum.realNumber += obj.realNumber 
            # sum.imagNumber += obj.imagNumber
         }
         return sum
    end
    def  bulk_multiply(myObjects = Array.new)
        multiply = MyComplex.new
        myObjects.each{
            |obj| multiply = multiply * obj
        }
    end 
    def  get_stats​()
        puts "The number of using addition #{$count_addition}"

    end
end
comp1 = MyComplex.new(3, 2)
comp2 = MyComplex.new(1 , 7)
comp3 = MyComplex.new(14 , 8)
newComp = MyComplex.new
newComp = comp1 + comp2 
puts " OutPut The Addition Method"
puts newComp.realNumber  
puts newComp.imagNumber

################################# TEST THE MULTIPLICATION ######
myMultiblication = MyComplex.new
myMultiblication = comp1*comp2 
# puts "OutPut The Multiplication"
puts myMultiblication.realNumber 
puts myMultiblication.imagNumber
################################### TASK 2 #################

puts  "Task 2 sum of array of objects"
myArray = Array.new
myArray.push(comp1 , comp2 ,comp3)
bluck_outPut = MyComplex.new
bluck_outPut = newComp.bulk_add(myArray)
 puts bluck_outPut.realNumber 
 puts bluck_outPut.imagNumber 
###########################################################3
 puts "Task2 multiplication of array of objects"
 myArray1 = Array.new
myArray1.push(comp1 , comp2 ,comp3)
 zee = MyComplex.new
 bulk = MyComplex.new
 bulk = zee.bulk_multiply(myArray1)
 puts bulk.inspect
 puts bulk.realNumber
 puts bulk.imagNumber
######################################################################3
# puts comp1.class
# puts comp1.realNumber
# puts comp2.realNumber





