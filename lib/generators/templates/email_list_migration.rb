# CURRENT FILE :: lib/generators/team_page/templates/migration.rb
class CreateEmailLists < ActiveRecord::Migration
  def self.up
    create_table :email_lists do |t|
      t.string	:constant_contact_id
      t.integer	:vendor_id
      t.timestamps
    end
  end

  def self.down
    drop_table :email_lists
  end
end

