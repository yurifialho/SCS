class CreateLinguagens < ActiveRecord::Migration
  def change
    create_table :linguagens do |t|
      t.string :nome

      t.timestamps
    end
  end
end
