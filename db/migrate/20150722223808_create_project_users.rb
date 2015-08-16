class CreateProjectUsers < ActiveRecord::Migration
  def change
    create_table :project_users, id: false do |t|
      t.column :id, 'BIGSERIAL PRIMARY KEY'

      t.column :project_id, 'BIGINT', null: false, default: 0
      t.column :user_id, 'BIGINT', null: false, default: 0
      t.column :admin_flag, 'BOOLEAN', null: false, default: false

      t.column :created_id, 'BIGINT', null: false, default: 0
      t.column :updated_id, 'BIGINT', null: false, default: 0
      t.column :deleted_id, 'BIGINT', null: false, default: 0

      t.text :created_pg, null: false, default: ''
      t.text :updated_pg, null: false, default: ''
      t.text :deleted_pg, null: false, default: ''

      t.column :created_at, 'TIMESTAMPTZ', null: false
      t.column :updated_at, 'TIMESTAMPTZ', null: false
      t.column :deleted_at, 'TIMESTAMPTZ'

      t.text :bk
    end
  end
end
