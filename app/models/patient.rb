# == Schema Information
#
# Table name: patients
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  address     :string
#  age         :integer
#  sex         :string           default("Masculino")
#  departament :string
#  city        :string
#  country     :string           default("Guatemala")
#  email       :string
#  phone       :string
#  state       :string           default("active")
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  weight      :integer
#  size        :string
#  allergies   :text
#  medicines   :text
#  diseases    :text
#

class Patient < ApplicationRecord
	belongs_to :user
	has_many :appointments
	has_many :consultations
end
