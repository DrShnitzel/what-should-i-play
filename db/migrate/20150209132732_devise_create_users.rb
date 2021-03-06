class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Base
      t.string :name
      t.string :nickname
      t.string :avatar

      ## Omniauthable
      t.string :provider
      t.integer :uid, limit: 8

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string :current_sign_in_ip
      t.string :last_sign_in_ip

      t.timestamps
    end

    add_index :users, [:provider, :uid], unique: true
  end
end
