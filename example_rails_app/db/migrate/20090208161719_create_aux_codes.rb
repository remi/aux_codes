# autogenerated migration (generated by ./script/generate aux_codes)
#
# db/migrate/YYYYMMDDHHMMSS_create_aux_codes.rb
#
class CreateAuxCodes < ActiveRecord::Migration
  def self.up
    AuxCodes::CreateAuxCodes.migrate :up
  end

  def self.down
    AuxCodes::CreateAuxCodes.migrate :down
  end
end