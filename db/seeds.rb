require 'faker'


20.times do
  Task.create :task_description => Faker::Lorem.sentence
end