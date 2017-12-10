
require 'csv'
require_relative 'Validation'
class Registration
  include Validation

  def getData
    valid=false
    while(valid==false)
      puts "\nEnter your Account No (Account No must be of 16 digits) \n"
      @acc_no=Integer(gets.chomp)
      if Validation.checkAccNo(@acc_no)==false
        print "Please enter valid account number or account number already exists"
        next
      end
      valid=true
    end
    valid=false
    while(valid==false)
      puts "\nEnter your name \n"
      @name=gets.chomp
      if Validation.checkName(@name)==false
        print "Name should not contain digits or symbols "
        next
      end
      valid=true
    end
    puts "Enter your age \n"
    @age=Integer(gets.chomp)
    valid=false
    while(valid==false)
      puts "Enter your username (Username must be unique)\n"
      @username=gets.chomp
      if Validation.checkUsername(@username,'username')==true
        puts "Username already exists"
        next
      end
      valid=true
    end
    valid=false
    while(valid==false)
      puts "Enter password \n"
      @password=gets.chomp
      puts "Enter confirm password\n"
      @confirm_password=gets.chomp
      if Validation.checkPassword(@password,@confirm_password)==false
        puts "Password and confirm password do not match"
        next
      end
      valid=true
    end
    puts "Congragulations,you are successfully registered.."
    return true
  end
  def writeIntoFile
    @acc_no=123,@name='siam',@age=22,@username='siam',@password='pass'
    File.open("C:\Users\welcome\Desktop\Home_Ruby-master\Final_Assignment\DataFiles\Details.csv",'ab') do |f|
     #csv << "\n"
      #csv << @acc_no.to_s+","+@name+","+@age.to_s+","+@username+","+@password+","+0.to_s
     f.write(@acc_no)
    end


    end
end
Registration.new.writeIntoFile