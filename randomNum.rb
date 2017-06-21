class RandomTest

  def main
    # Exceptions handling
    begin
      # Initialize variable
      numArray = []

      # Generate random number to the array
      numArray = generateNumArray(numArray)

      # Display Array's content
      printArray(numArray)

      # Break
      puts "\n\n"

      # Sort the number array
      numArray = sortArray(numArray)

      printArray(numArray)

      # Verify if target exist
      if (toSearch(numArray))
        puts "Target found!"
      else
        puts "Target not found!"
      end #END if

    # Storing any exception in var theError
    rescue theError
      #Simply output the message
      puts "#{theError.class}: #{theError.message}"
    end #END of exception handling begin-rescue
  end #END main()

  def generateNumArray(inArray)
    # This function generate random number
    # to the array imported

    index = 0 #To use for the loop

    # generate random number to each index position
    while index < 10 do
      inArray[index] = rand(1..100)
      index += 1
    end #END while

    inArray # Return entire array
  end #END generateNumArray()

  def sortArray(inArray)
    # This function sort the array
    sortedArray = []
    index = 0

    #Sorting
    sortedArray = inArray.sort{|x, y| x <=> y }

    sortedArray #Return the sorted array
  end #END sortArray

  def printArray(inArray)
    # This function display all the elements
    # in the array

    inArray.each do |value|
      puts "#{value}\n"
    end #END loop
  end #END printArray()

  def toSearch(inArray)
    # This function search for keywords
    puts "Please enter which number you would like to search in the array:"
    keyNum = gets.chomp.to_i

    inArray.include?(keyNum) # return true/false
  end #END toSearch()
end #END class

# Run the program
runProgram = RandomTest.new
runProgram.main
