class Appointment
  include Mongoid::Document
  include Mongoid::Timestamps
  
  belongs_to :patient, class_name: "Patient"
  field :scheduled_at, type: DateTime
end
