class RemoveTelphonFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :telphon, :string
  end
end
