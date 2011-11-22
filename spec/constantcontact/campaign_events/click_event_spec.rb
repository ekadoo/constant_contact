require 'spec_helper'

describe CampaignEvents::SentEvent do
  it { should be_a_kind_of CampaignEvents::Base }
  describe do
	  subject { CampaignEvents::ClickEvent }
	  its(:collection_name) { should == "clicks" }
	end
end