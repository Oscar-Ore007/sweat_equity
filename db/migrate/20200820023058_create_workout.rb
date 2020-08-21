class CreateWorkout < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name 
      t.string :type 
      t.float :duration 
      t.integer :calories_burned
      t.date :date 
      t.integer :user_id 
    end 
  end
end
