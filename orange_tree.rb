class OrangeTree

  def height(array_height)
    puts "The height of the tree is #{array_height.last}."
  end

  def one_year_passes(array_age, array_height)
    array_age.push(array_age.last.to_i+1)
    array_height.push(array_height.last.to_i+20)
  end

  def count_the_oranges(array_age, fruit_start)
    if
      array_age.last.to_i < fruit_start
      puts "Your tree has no fruits yet"
    end

    if
      array_age.last.to_i > fruit_start
      fruit_number = (array_age.last.to_i-fruit_start)*2
      puts "Your tree has #{fruit_number} fruits."
    end
  end

end

  orange = OrangeTree.new
  maximum_age = 25
  fruit_start = 5

  puts "How old is the tree? (in years)"
  initial_age = gets.chomp
  array_age = [initial_age]

  puts "How high is the tree? (in cm)"
  initial_height = gets.chomp
  array_height = [initial_height]


loop do

  puts "Which method do you want to run?"
  input=gets.chomp

  if
    input == "stop"
  break
  end

  if
    input == "height"
    orange.height(array_height)
  end

  if
    input == "one year"
    orange.one_year_passes(array_age, array_height)
      if array_age.last < maximum_age
        puts "Your tree is now #{array_age.last} years old and #{array_height.last}cm high."
      else
        puts "Your tree is dead."
      break
      end
  end

  if
    input == "count oranges"
    orange.count_the_oranges(array_age, fruit_start)
  end

end
