  def prompt_user

    puts "Type '1' to convert from Celsius to Fahrenheit
    or Type '2' to convert from Fahrenheit to Celsius"

    @user_selection = gets.chomp
    puts "You selected: #{@user_selection}"
    user_input
  end

  def fahrenheit_temp_calculate
    puts "Enter Celsius Temperature"
    celsius = gets.chomp.to_f
    fahrenheit = (celsius * 1.8) + 32
    puts "#{celsius} degrees celsius is equal to #{fahrenheit.round(2)} degrees fahrenheit"
  end

  def celsius_temp_calculate
    puts "Enter Fahrenheit Temperature"
    fahrenheit = gets.chomp.to_f
    celsius = (fahrenheit-32) * 0.5556
    puts "#{fahrenheit} degrees fahrenheit is equal to #{celsius.round(2)} degress celsius"
  end

  def user_input

    if @user_selection == "1"
      celsius_temp_calculate
    elsif @user_selection == "2"
      fahrenheit_temp_calculate
    else
      puts " 1 for celsius and 2 for fahrenheit, try again."
    end
  end

prompt_user
