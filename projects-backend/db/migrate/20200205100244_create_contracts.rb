class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.string :projectName
      t.string :projectStreet
      t.string :projectCity
      t.string :projectCountry
      t.string :projectBudget
      t.timestamp :projectBeginDate
      t.timestamp :projectEndDate
      t.string :projectType
      t.string :projectInformation
      t.integer :projectStaff
      t.boolean :projectCompleted, :default => false
      t.integer :monthsEstimated
      t.integer :monthsCurrent
      t.integer :monthsOverDue
      t.integer :contractor_id
      t.string :contractor_lastName
      t.timestamps
    end
  end
end
