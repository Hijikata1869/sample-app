class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[6.0]
  def change
    
    create_table(:users) do |t|
      ## Required 必須
      t.string :provider, :null => false, :default => "email"
      t.string :uid, :null => false, :default => ""

      ## Database authenticatable 使う
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable 使う
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.boolean  :allow_password_change, :default => false

      ## Rememberable 使う
      t.datetime :remember_created_at

      # ## Confirmable いらない
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable いらない
      # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ## User Info ::nickname, image, emailは使う。nameはいらない。
      # t.string :name
      t.string :nickname
      t.string :image
      t.string :email

      ## Tokens たぶん必要？
      t.text :tokens

      t.timestamps
    end

    add_index :users, :email,                unique: true
    add_index :users, [:uid, :provider],     unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true # いらない
    # add_index :users, :unlock_token,         unique: true
  end
end
