# CURRENT FILE :: lib/generators/team_page/templates/migration.rb
class CreateEmailCampaigns < ActiveRecord::Migration
  def self.up
    create_table :email_campaigns do |t|
      t.string	:constant_contact_id
			t.text		:bounces
			t.text		:clicks
			t.text		:opens
			t.text		:opt_outs
      t.timestamps
    end
  end

  def self.down
    drop_table :email_campaigns
  end
end

