class CreateQuestionnaires < ActiveRecord::Migration[5.2]
  def change
    create_table :questionnaires do |t|
      t.string :title
      t.text :description
      t.integer :state_cd
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
