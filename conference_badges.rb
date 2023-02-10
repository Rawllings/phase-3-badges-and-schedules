# Write your code here.
def badge_maker(name)
 "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  # messages = names.map { |name| badge_maker(name) }
  message = []
  names.map do |name|
    message << "Hello, my name is #{name}."
  end
  return message

end

def assign_rooms(speakers)
  message = []
  rooms = 1

  speakers.each do |speaker|
    message <<  "Hello, #{speaker}! You'll be assigned to room #{rooms}!"
    rooms += 1
  end
  return message
end

def printer(names)
  batch_badges = batch_badge_creator(names)
  batch_badges.each do |badge|
    puts badge
  end

  room_assignments = assign_rooms(names)
  room_assignments.each do |assignment|
    puts assignment
  end
end