class CreateSoiree < ActiveRecord::Migration
  def change
    create_table :soirees do |t|
      t.string :titre
    end
  end
end
