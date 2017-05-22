class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "Example job is running!"
  end
end
