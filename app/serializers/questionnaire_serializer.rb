class QuestionnaireSerializer < ActiveModel::Serializer
  attribute :id
  attribute :title
  attribute :description
  attribute :state
  attribute :start_at
  attribute :end_at
end
