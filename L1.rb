def show_message(age, name, surname)
 if(age != nil)
    print "Hello, #{name.chomp} #{surname.chomp}. "
    if(age.to_i < 18)
      puts 'Your age is below 18, but you can study right now'
    else 
      puts 'Dis a good day to work'
    end
 else puts 'Put a correct data'
 end
end

def input(message)
  print "Write #{message}: "
  return  gets	
end

$name = input('Name: ')
$surname = input('Surname: ')
$age = input('Age: ')

show_message($age, $name, $surname)