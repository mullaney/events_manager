require 'spec_helper'

describe Event do 
  
  let(:event) { FactoryGirl.create(:event) }

  subject { event }

  it { should respond_to(:description) }
  it { should respond_to(:start_time) }
  it { should respond_to(:end_time) }

  it { should respond_to(:location) }
  it { should respond_to(:event_group) }

  it { should be_valid }

  describe ":start_time" do
    context "if :start_time is blank" do
      before do
        event.start_time = nil
      end
      it { should_not be_valid }
    end
  end

  describe "events must have an event_group" do
    context "if :start_time is blank" do
      before do
        event.start_time = nil
      end
      it { should_not be_valid }
    end
  end

  # describe "Courses" do
  #   context "if :type is 'course'" do
  #     before do
  #       event.event_group_id = event_group.id
  #       event.event_group.type = "course"
  #     end
  #     it { should respond_to(:course) }
  #   end
  # end

end
