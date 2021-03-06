#!/usr/bin/env ruby

### First question, comparing strings and symbols:
#
# According to StackOverflow:
# String has a lot more methods on it for string manipulation, 
# while a Symbol is a relatively lean object.
#
# Perhaps more important?
# A symbol (:whatever) is a string that always references the same object
# It always has the same data address
# A regular old string ("whatever") does not




##JS version#######################
#function sayHello(){ 
# console.log("hello");
#}
#
#RUBY:
def sayHello
	puts "hello"
end

sayHello




##JS##############################
#[4,1,2].sort(function(a,b){
#  return a+b;
#})
#
#RUBY: this will get the same result in ruby
arr = [4,1,2,5,3].reverse

puts arr

#this does the comparison thing, 
#but ruby seems to compare differently than javascript
#the JS version returns a reversed array.
#this is not the case with RUBY (see below)
#NEED TO ASK ABOUT THIS
arr = [4,1,2,5,3].sort do |a,b| a + b end

puts arr

## Check all of these...
# 2.0.0-p594 :005 > arr = [4,1,2,5,3].sort do |a,b| b - a end
#  => [5, 4, 3, 2, 1] 
# 2.0.0-p594 :006 > arr = [4,1,2,5,3].sort do |a,b| a - b end
#  => [1, 2, 3, 4, 5] 
# 2.0.0-p594 :007 > arr = [4,1,2,5,3].sort do |a,b| a + b end
#  => [3, 2, 4, 5, 1] 
# 2.0.0-p594 :008 > arr = [4,1,2,5,3].sort do |a,b| b + a end
#  => [3, 2, 4, 5, 1] 
# 2.0.0-p594 :009 > arr = [4,1,2,5,3].sort do |a,b| b <=> a end
#  => [5, 4, 3, 2, 1] 
# 2.0.0-p594 :010 > arr = [4,1,2,5,3].sort do |a,b| a <=> b end
#  => [1, 2, 3, 4, 5] 


##JS############################
#var name = "elie";
#
#if (name.length > 5) {
# console.log("your name is clearly not elie....");
#} else if(name.length === 4) {
# console.log("your name is elie");
#} else {
# console.log("no idea what your name is....");
#
#}
#RUBY:

name = "Elie"
  if name.length > 5
	puts "your name is clearly not elie...."
  elsif name.length == 4
  	puts "your name is elie"
  else
  	puts "no idea what your name is...." 
  end




##JS################################
#var times = 5;
#
#for(var i = 0; i < times; i++) {
#  console.log("HI!"); 
#}
#RUBY:

times = 5
for i in 0...times
	puts "HI!"
end

#I have heard that Rubyists do not like for loops
#So, this also works:
times = 5
times.times { puts "HI!"}




##JS###################################
#var person = {
#  name: "Elie"
#}
#
#console.log(person.name);
#
#RUBY: hmmmmmm...
# a Ruby object... ???
# or a Ruby class... ???
# or a Ruby module... ???
# here is one way to get the result with strings:
person = "%{first_name} %{last_name}"
puts person % {first_name: "Elie", last_name: "Schoppik"}






##JS#################################
#// This is a JavaScript comment - turn me into a Ruby comment!
#
#var firstName = "Tim";
#var lastName = "Garcia";
#
#console.log("This person's name is " + firstName + " " + lastName);
#
#// HINT - Try to use string interpolation to solve this! 


#RUBY:
##This is a Ruby comment
# I do not believe that variables are declared in Ruby
# I also believe that Rubyists use underscore rather than camel case
first_name = "Tim"
last_name = "Garcia"

puts "This person's name is #{first_name} #{last_name}"





##JS##################################
#function sayHi(name){
#	return name;
#}
#
#sayHi(); // what does this return in JavaScript? 
######## answer: undefined (but if I pass data into the function, it returns the data)

#RUBY: 
def say_hi(name)
	return name
end
#When you try this in Ruby, what do you get?
# => nil



##JS####################################
#var x;
#x === undefined;
# (Note that this returns true)
#
#RUBY:

x
x === undefined

#Ruby returns an error for this one,
# stating that x is an undefined local variable or method
# variables work differently...

# if you make it a function though...
def x 
	return x
end
# Ruby returns nil



## Try these in JS...
# irb(main):001:0> [] + []
# => []
# irb(main):002:0> [] + {}
# TypeError: no implicit conversion of Hash into Array
#   from (irb):2
#   from /usr/bin/irb:12:in `<main>'
# irb(main):003:0> {} + []
# NoMethodError: undefined method `+' for {}:Hash
#   from (irb):3
#   from /usr/bin/irb:12:in `<main>'
# irb(main):004:0> {} + {}
# NoMethodError: undefined method `+' for {}:Hash
#   from (irb):4
#   from /usr/bin/irb:12:in `<main>'
# irb(main):005:0> Array(16)
# => [16]
# irb(main):006:0> Array(16).join("wat")
# => "16"
# irb(main):007:0> Array(16).join("wat" + 1)
# TypeError: no implicit conversion of Fixnum into String
#   from (irb):7:in `+'
#   from (irb):7
#   from /usr/bin/irb:12:in `<main>'
# irb(main):008:0> Array(16).join("wat" - 1)
# NoMethodError: undefined method `-' for "wat":String
#   from (irb):8
#   from /usr/bin/irb:12:in `<main>'
# irb(main):009:0> Array(16).join("wat" - 1) + "Batman!"
# NoMethodError: undefined method `-' for "wat":String
#   from (irb):9
#   from /usr/bin/irb:12:in `<main>'
# irb(main):010:0>
# 
# from "WAT!"