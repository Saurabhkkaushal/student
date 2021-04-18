class StudentEntity < ApplicationRecord
	validates_uniqueness_of :email
	
  before_save :populate_enrollment_number

  ENROLL_PREFIX = 'id-'

  def populate_enrollment_number
    self.enroll_no = ENROLL_PREFIX + rand(1..10000).to_s if enroll_no.blank?

    while self.enroll_no.present? && StudentEntity.find_by(enroll_no: enroll_no).present?
       self.enroll_no = ENROLL_PREFIX + rand(1..10000).to_s 
    end

  end

end
