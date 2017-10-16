# This is my initial work in second file

class RefactoredClass

  def arr
    [1,2,3,4,5]
  end

  def nums_in_english
    {1 => "one", 2 => "two", 3 => "three",
      4 => "four", 5 => "five"}
    end

  def print_squares
    puts "This is the original array: " + arr
    new_arr = arr.map do |num|
      num*num
    end
    puts "This is the modified array: " + new_arr
  end


  def print_nums_in_english
    puts "Starting second method..."
    arr.each do |num|
      puts nums_in_english[num]
    end
  end

  def print_nums_plus_one
    puts "Starting third method..."
    arr.each do |num|
      puts num + 1
    end
  end

end
