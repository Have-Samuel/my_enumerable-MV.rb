# Create your own Enumerable

Learning objectives
Use Ruby syntax for basic programming operations.
Apply Ruby best practices and language style guides in code.

## Description

In this project you will learn how to use a module inside your class. For this you will create a class MyList and a module MyEnumerable. Your module MyEnumerable will implement a subset of the functionality of Enumerable.

IMPORTANT NOTE: Read all requirements before you start building your project.

## General requirements

    - Make sure that there are no linter errors.
    - Make sure that you used correct GitHub Flow.
    - Make sure that you documented your work in a professional way.

## Ruby requirements

- Follow our list of best practices for Ruby.

## Project requirements

- Check offical documentation about the following 3 methods in Enumerable. Make sure that you understand what they are doing.
- description of #all? method
- description of #any? method
- description of #filter method

- Create a class MyList that has an instance variable @list.
- In MyList implement a method #each that yields successive members of @list and uses the MyEnumerable module.
- Create a module MyEnumerable that implements the following methods (they should have the same funcionality as methods in Enumerable):
  - #all?
  - #any?
  - #filter
Each class and module should has a separate .rb file.
Verify your solution:

# Create our list

irb> list = MyList.new(1, 2, 3, 4)
=> #<MyList: @list=[1, 2, 3, 4]>

# Test #all?

irb> list.all? {|e| e < 5}
=> true
irb> list.all? {|e| e > 5}
=> false

# Test #any?

irb> list.any? {|e| e == 2}
=> true
irb> list.any? {|e| e == 5}
=> false

# Test #filter

irb> list.filter {|e| e.even?}
=> [2, 4]

## Additional requirements

These are all optional, but if you're interested in exploring this topic further, feel free to implement them. Any exploration here should be done outside program time.

If you decide to implement these requirements you should do it in a separate pull request. As always, remember to clearly document your decision in GitHub comments.

- For MyEnumerable implement:
  - #max
  - #min
  - #sort
