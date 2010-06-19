class CreateLogs < ActiveRecord::Migration
  
  create_table :logs, :force => true do |t|
    t.string :title
    t.text :body
    t.belongs_to :user
    t.string :users_to_notify
    t.string :category
    t.string :status
    t.timestamps
  end

  def self.down
    drop_table :logs
  end
end
