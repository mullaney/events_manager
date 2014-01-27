require 'spec_helper'

describe Location do 

  let(:location) { FactoryGirl.create(:location) }

  subject { location }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:box_office_url) }
  it { should respond_to(:id) }
  it { should respond_to(:street_address) }
  it { should respond_to(:street_address_2) }
  it { should respond_to(:city) }
  it { should respond_to(:state) }
  it { should respond_to(:zip) }
  it { should respond_to(:box_office_phone) }
  it { should respond_to(:website_url) }
  it { should respond_to(:map_url) }
  it { should respond_to(:embedded_map_code) }

  it { should respond_to(:events) }
  it { should respond_to(:event_groups) }

  it { should be_valid }

  describe ":name" do
    context "if :name is blank" do
      before do
        location.name = nil
      end
      it { should_not be_valid }
    end
  end

  describe ":box_office_url" do

    context "if :box_office_url is blank" do
      before do
        location.box_office_url = nil
      end
      it { should be_valid }
    end

    context "if :box_office_url does not have URL" do
      before do
        location.box_office_url = "this is not a url"
      end
      it { should_not be_valid }
    end

    context "if :box_office_url contains a valid URL" do
      before do
        location.box_office_url = "http://thetheater.com/index.php"
      end
      it { should be_valid }
    end
  end

  describe ":website_url" do

    context "if :website_url is blank" do
      before do
        location.website_url = nil
      end
      it { should be_valid }
    end
    
    context "if :website_url does not have URL" do
      before do
        location.website_url = "this is not a url"
      end
      it { should_not be_valid }
    end

    context "if :website_url contains a valid URL" do
      before do
        location.website_url = "http://thetheater.com/index.php"
      end
      it { should be_valid }
    end
  end

end
