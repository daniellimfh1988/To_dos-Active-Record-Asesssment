require_relative '../config/application'

class TaskController
#List
  def self.list
    puts "My Task List:"
    Task.all.each do |t|
    puts "#{t.id}. #{t.task_description}" #should be in view file.
    end
  end

#ADD tasks
  def self.add(user_input)
    puts "You have added #{user_input}"
    added = Task.create(task_description: user_input)
    puts "Congratulations, you are well on your way to be a slave-driver"
end


#DELETE tasks
  def self.delete(task_id)
    puts "You have deleted #{task_id}!"
    temp = Task.find_by(id: task_id)
    temp.destroy
  end

  def self.complete(task_id)
    puts "Good job on completing #{task_id}!"
    temp = Task.find_by(id: task_id)
    # p temp.task_description
    # puts "temp - Complete"
    temp.update(task_description: temp.task_description +  ' - Completed')
  end

end