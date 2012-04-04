class SistemaBelongsLinguagem < ActiveRecord::Migration
  def up
    remove_column :linguagens, :sistema_id
    add_column :sistemas, :sistema_id, :integer
  end

  def down
    add_column :linguagens, :sistema_id
    remove_column :sistemas, :sistema_id, :integer
  end
end
