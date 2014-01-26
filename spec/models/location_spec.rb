require 'spec_helper'

describe Location do

  let(:location) { FactoryGirl.create(:location) }

  subject { location }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:box_office_url) }
end
