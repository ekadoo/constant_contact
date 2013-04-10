module ConstantContact
  class List < Base

    # @@column_names = [:contact_count, :display_on_signup, :members, :name, :opt_in_default, :short_name, :sort_order]
    attr_reader :new_members

    def to_xml
      xml = Builder::XmlMarkup.new
      xml.tag!("ContactList", :xmlns => "http://ws.constantcontact.com/ns/1.0/") do
        self.attributes.each{|k, v| xml.tag!( k.to_s.camelize, v )}
      end
    end

    def self.find_by_name(name)
      lists = self.find :all
      lists.find{|list| list.Name == name}
    end

    def enqueue_contact(contact)
      @new_contacts = [] unless defined?(@new_contacts)
      @new_contacts << contact
    end

    def subscribe_members!
      @new_members.each do |member|
        existing_member = Contact.find_by_email(member.email)
        if existing_member.present?
          member = existing_member
          member.contact_lists.nil ? member.contact_lists=[self.id] : member.contact_lists << self.class.parse_id(self.id)
        else
          member.contact_lists = [self.class.parse_id(self.id)]
        end
        puts "trying to save #{member.encode}"
        member.save
      end
    end

  end
end
