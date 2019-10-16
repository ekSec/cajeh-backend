class CreatePublications < ActiveRecord::Migration[6.0]
  def change
    create_table :publications do |t|
      t.string :title
      t.string :content
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
