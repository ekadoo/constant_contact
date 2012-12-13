# CURRENT FILE :: lib/generators/team_page/templates/migration.rb
class CreateVendors < ActiveRecord::Migration
  def self.up
    create_table :vendors do |t|
      t.string	:constant_contact_id
      t.text	 	:opt_outs
      t.text		:bounces
      t.timestamps
    end
  end

  def self.down
    drop_table :vendors
  end
end

