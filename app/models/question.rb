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

class Question < ApplicationRecord
  belongs_to :questionnaire
  has_many :options

  TYPES = [:radio, :checkbox, :select, :text].freeze
  as_enum :type, TYPES
end
