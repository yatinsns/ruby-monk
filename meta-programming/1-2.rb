class Doctor
=begin
  define_method("perform_rhinoplasty") do |argument|
    "performing rhinoplasty on #{argument}"
  end

  define_method("perform_checkup") do |argument|
    "performing checkup on #{argument}"
  end
=end

  ["rhinoplasty", "checkup"].each do |action|
    define_method("perform_#{action}") do |argument|
      "performing #{action.gsub('_', ' ')} on #{argument}"
    end
  end
end

doctor = Doctor.new
puts doctor.perform_rhinoplasty("nose")
puts doctor.perform_checkup("throat")

class Monk
  ["life", "the universe", "everything"].each do |action|
    define_method("meditate_on_#{action.gsub(' ', '_')}") do ||
      "I know the meaning of the #{action}"
    end
  end
end

