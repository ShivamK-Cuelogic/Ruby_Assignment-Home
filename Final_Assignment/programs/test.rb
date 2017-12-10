require 'csv'
all_records = CSV.read('C:\Users\welcome\Desktop\Home_Ruby-master\Final_Assignment\DataFiles\Details1.csv', :headers=>true)
puts all_records.find{|k| k['username']=="Shom"}
