class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :pub_type
      t.string :pub_name
      t.integer :year
      t.integer :month
      t.integer :pages
      t.string :notes
      t.string :summary
      t.integer :user_id

      t.timestamps
    end
    add_index :publications, [:user_id, :created_at]
  end
end
