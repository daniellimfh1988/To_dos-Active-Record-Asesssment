require_relative 'config/application'
require_relative 'app/main'

command = ARGV[0]
user_input = ARGV[1..-1].join(" ")

if command == "list"

TaskController.list
elsif command == "add"
TaskController.add(user_input)
elsif command == "delete"
TaskController.delete(user_input.to_i) #needs fix
elsif command == "complete"
TaskController.complete(user_input)
else
puts "What did you say?"
endgit