class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties, id: false do |t|
      t.column :id, 'BIGSERIAL PRIMARY KEY'

      t.text :logical_name, null: false, default: ''
      t.text :physical_name, null: false, default: ''
      t.text :comment, null: false, default: ''
      t.text :datatype, null: false, default: ''
      t.text :default_content, null: false, default: ''
      t.column :length, 'BIGINT', null: false, default: 0
      t.column :scale, 'BIGINT', null: false, default: 0
      t.column :null_flag, 'BOOLEAN', null: false, default: FALSE
      t.column :pk_flag, 'BOOLEAN', null: false, default: FALSE
      t.column :entity_id, 'BIGINT', null: false, default: 0

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