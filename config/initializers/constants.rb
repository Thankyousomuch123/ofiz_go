# config/initializers/constants.rb
module LeaveTypes
  TYPES = {
    1 => "Casual Leave",
    2 => "Earned Leave"
  }.freeze

  SESSIONS = {
    1 => "Full Day",
    2 => "First Session",
    3 => "Second Session"
  }.freeze
end
