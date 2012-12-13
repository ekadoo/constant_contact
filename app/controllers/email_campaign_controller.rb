# CURRENT FILE :: app/controllers/constant_contact/email_campaign_controller.rb
module ConstantContact
  class EmailCampaignController < ::ApplicationController
    def index
      @email_campaigns = EmailCampaign.all
    end
  end
end

