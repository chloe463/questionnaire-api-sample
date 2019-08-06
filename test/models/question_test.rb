# == Schema Information
#
# Table name: questions
#
#  id               :integer          not null, primary key
#  questionnaire_id :integer          not null
#  text             :string           not null
#  type_cd          :integer          not null
#  required         :boolean          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
