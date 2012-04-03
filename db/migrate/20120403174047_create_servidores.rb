class CreateServidores < ActiveRecord::Migration
  def change
    create_table :servidores do |t|
      t.string :nome
      t.string :ip

      t.timestamps
    end
  end
end
