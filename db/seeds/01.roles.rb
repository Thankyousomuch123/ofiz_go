# db/seeds/01_roles.rb

roles = [
  "HR Admin",
  "Manager",
  "Module Lead",
  "Team Lead",
  "Senior Developer",
  "Software Engineer",
  "Software Engineer Trainee",
  "HR Junior",
  "Staff"
]

roles.each do |role_name|
  Role.find_or_create_by(name: role_name)
end
