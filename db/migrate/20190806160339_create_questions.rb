class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :questionnaire_id, null: false
      t.string :text, null: false
      t.integer :type_cd, null: false
      t.boolean :required, null: false

      t.timestamps
    end
  end
end
