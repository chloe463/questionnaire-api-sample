# == Schema Information
#
# Table name: questionnaires
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  state_cd    :integer
#  start_at    :datetime
#  end_at      :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Questionnaire < ApplicationRecord
  has_many :questions
  has_many :options, through: :questions

  STATES = [:draft, :published, :closed].freeze
  as_enum :state, STATES
end
