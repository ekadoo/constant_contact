module ConstantContact
  class Schedule < Base
    self.prefix = "/campaigns/:campaign_id/"

    def to_xml
      xml = Builder::XmlMarkup.new
      xml.tag!("Schedule", :xmlns => "http://ws.constantcontact.com/ns/1.0/", :id => "#{self.campaign.id}/schedules/1") do
        xml.tag!("ScheduledTime", self.scheduled_time.strftime(DATE_FORMAT))
      end
    end

    def validate
      errors.add(:scheduled_time, 'cannot be blank') unless attributes.has_key?('ScheduledTime')
    end

    def campaign
      Campaign.find(prefix_options[:campaign_id])
    end

  end
end