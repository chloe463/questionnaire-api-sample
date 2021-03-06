# == Schema Information
#
# Table name: options
#
#  id          :integer          not null, primary key
#  question_id :integer          not null
#  text        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Option < ApplicationRecord
  belongs_to :question
  delegate :questionnaire, to: :question
end
