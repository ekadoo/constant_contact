# CURRENT FILE :: app/controllers/constant_contact/vendor_controller.rb
module ConstantContact
  class VendorController < ::ApplicationController
    def index
      @vendors = Vendor.all
    end
  end
end

