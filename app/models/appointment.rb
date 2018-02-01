# == Schema Information
#
# Table name: appointments
#
#  id          :integer          not null, primary key
#  date        :date
#  hour        :time
#  annotations :text
#  patient_id  :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :user

  validates :patient_id, presence: true

end
