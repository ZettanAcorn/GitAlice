class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :jobname
      t.string :date

      t.timestamps null: false
    end
  end
end
