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

require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
