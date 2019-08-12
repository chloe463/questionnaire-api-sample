class QuestionSerializer < ActiveModel::Serializer
  attribute :id
  attribute :questionnaire_id
  attribute :text
  attribute :type
  attribute :type_cd
  attribute :required
end
