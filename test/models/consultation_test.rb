# == Schema Information
#
# Table name: consultations
#
#  id            :integer          not null, primary key
#  patient_id    :integer
#  motivo        :text
#  fecha         :datetime
#  diagnostico   :text
#  anotaciones   :text
#  tratamiento   :text
#  sintomas      :text
#  antecedentes  :text
#  receta        :text
#  examen_fisico :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ConsultationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
