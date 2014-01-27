require 'spec_helper'

describe EventGroup do
  let(:event_group) { FactoryGirl.create(:event_group) }

  subject { event_group }

  it { should respond_to(:name) }
  it { should respond_to(:type) }
  it { should respond_to(:description) }

  it { should respond_to(:events) }
  it { should respond_to(:locations) }

  it { should be_valid }

  describe ":name" do
    context "if :name is blank" do
      before do
        event_group.name = nil
      end
      it { should_not be_valid }
    end
  end

end
