class EmailCampaign < ActiveRecord::Base
  attr_accessible :constant_contact_id,:bounces,:opt_outs,:opens,:clicks
end
