#!/usr/bin/env ruby

##function sayHello(){ 
# console.log("hello");
#}
#

def sayHello
	puts "hello"
end

sayHello




##[4,1,2].sort(function(a,b){
#  return a+b;
#})
#
#this will get the same result in ruby
arr = [4,1,2,5,3].reverse

puts arr

#this does the comparison thing, 
#but ruby seems to compare differently than javascript
arr = [4,1,2,5,3].sort do |a,b| b + a end

puts arr



##var name = "elie";
#
#if (name.length > 5) {
# console.log("your name is clearly not elie....");
#} else if(name.length === 4) {
# console.log("your name is elie");
#} else {
# console.log("no idea what your name is....");
#
#}


name = "Elie"
  if name.length > 5
	puts "your name is clearly not elie...."
  elsif name.length == 4
  	puts "your name is elie"
  else
  	puts "no idea what your name is...." 
  end




##var times = 5;
#
#for(var i = 0; i < times; i++) {
#  console.log("HI!"); 
#}

times = 5
#for i in 0...times
#	puts "HI!"
#end

times.times { puts "HI!"}

##var person = {
#  name: "Elie"
#}
#
#console.log(person.name);








##// This is a JavaScript comment - turn me into a Ruby comment!
#
#var firstName = "Tim";
#var lastName = "Garcia";
#
#console.log("This person's name is " + firstName + " " + lastName);
#
#// HINT - Try to use string interpolation to solve this! 

##This is a Ruby comment
# I do not believe that variables are declared in Ruby
# I also believe that Rubyists use underscore rather than camel case
first_name = "Tim"
last_name = "Garcia"

puts "This person's name is #{first_name} #{last_name}"





##function sayHi(name){
#	return name;
#}
#
#sayHi(); // what does this return in JavaScript? 
#When you try this in Ruby, what do you get?



#var x;
#x === undefined;





