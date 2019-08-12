# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..10).each do |questionnaire_id|
  questionnaire = Questionnaire.create({
    title: "Questionnaire.#{questionnaire_id}",
    description: "This is a survey for ...",
    state: (questionnaire_id % 2 == 1) ? :published : :draft,
    start_at: Date.new(2019, 8, 1),
    end_at: Date.new(2020, 8, 1),
  })

  (1..10).each do |question_id|
    question = Question.create({
      questionnaire: questionnaire,
      text: "Question.#{question_id}",
      type_cd: (question_id % 4 != 0) ? question_id % 4 : 4,
      required: true,
    })
    p question

    (1..4).each do |option_id|
      option = Option.create!({
        question: question,
        text: "Option.#{option_id}",
      })
    end
  end
end
