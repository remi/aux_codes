#
# ActiveRecord migration for creating the aux_codes table
#
class CreateAuxCodes < ActiveRecord::Migration
  
  def self.up
    create_table :aux_codes,   :comment => 'Auxilary Codes' do |t|

      t.integer  :aux_code_id, :comment => 'ID of parent aux code (Category)',      :null => false
      t.string   :name,        :comment => 'Name of Category code (or child code)', :null => false

      %w( integer decimal string text boolean datetime ).each do |field_type|
        t.column field_type.to_sym, "#{field_type}_field"
      end

      t.timestamps
    end
  end

  def self.down
    drop_table :aux_codes
  end

end