class Admission 
  include Mongoid::Document
  include Mongoid::Timestamps
   belongs_to :patient, class_name: "Patient"
   field :reason, type: String
  
end
