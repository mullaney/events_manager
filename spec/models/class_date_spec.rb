require 'spec_helper'

describe ClassDate do

  let(:class_date) { FactoryGirl.create(:class_date) }

  subject { class_date }

  it { should respond_to(:start_time) }
  it { should respond_to(:end_time) }
  it { should respond_to(:id) }
  it { should respond_to(:class_section_id) }

  it { should respond_to(:class_section) }

  it { should be_valid }

  describe "Start and End Times" do
    context "end_time is earlier than start_time" do
      before do
        class_date.end_time   = Time.now - 1.day
        class_date.start_time = Time.now
      end
      it { should_not be_valid }
    end

    context "end_time is more than 24 after start_time" do
      before do
        class_date.end_time = class_date.start_time + 1.day + 1.minute
      end
      it { should_not be_valid }
    end

    context "end_time is less than 24 hours after start_time" do
      before do
        class_date.end_time = class_date.start_time + 1.day - 1.minute
      end
      it { should be_valid }
    end

    context "end_time is equal to start_time" do
      before do
        class_date.end_time = class_date.start_time + 1.day
      end
      it { should be_valid }
    end
  end
end
