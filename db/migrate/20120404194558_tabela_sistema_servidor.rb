class TabelaSistemaServidor < ActiveRecord::Migration
  def up
    create_table :sistemas_servidores do |t|
      t.references :sistema
      t.references :servidor
      
      t.timestamps
    end
  end

  def down
    drop_table :sistemas_servidores
  end
end
