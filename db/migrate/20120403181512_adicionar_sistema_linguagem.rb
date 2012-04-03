class AdicionarSistemaLinguagem < ActiveRecord::Migration
  def up
    change_table :linguagens do |t|
      t.references :sistema
    end
  end

  def down
     remove_column :sistemas, :sistema_id
  end
end
