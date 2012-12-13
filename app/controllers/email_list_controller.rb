# CURRENT FILE :: app/controllers/constant_contact/team_controller.rb
module ConstantContact
  class EmailListController < ::ApplicationController
    def index
      @email_lists = EmailList.all
    end
  end
end

