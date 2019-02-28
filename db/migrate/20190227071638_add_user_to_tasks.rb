class AddUserToTasks < ActiveRecord::Migration[5.0]
  def change
    # 下記は、add_column :tasks, :user_id, :integerを実行しているようなもの。
    # ただしforeign_keyで外部キー制約をつけている
    add_reference :tasks, :user, foreign_key: true
  end
end
