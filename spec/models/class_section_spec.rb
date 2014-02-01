require 'spec_helper'

describe ClassSection do 

  let(:class_section) { FactoryGirl.create(:class_section) }

  subject { class_section }

  #parameters

  it { should respond_to(:class_course_id) }
  it { should respond_to(:min_students) }
  it { should respond_to(:max_students) }
  it { should respond_to(:id) }
  it { should respond_to(:info) }
  it { should respond_to(:location_id) }
  it { should respond_to(:cost_in_cents) }
  it { should respond_to(:published_at) }

  #associations

  it { should respond_to(:class_dates) }
  it { should respond_to(:class_course) }
  it { should respond_to(:location) }

  #methods

  it { should respond_to(:cost_in_dollars) }
  it { should respond_to(:published?) }
  it { should respond_to(:currently_registering?) }
  it { should respond_to(:in_session?) }
  it { should respond_to(:begins) }
  it { should respond_to(:ends) }

  it { should be_valid }

  #test parameters

  describe "Cost" do

    context "cost_in_cents is negative" do
      before { class_section.cost_in_cents = -10 }
      it { should_not be_valid }
    end

    context "cost_in_cents is positive" do
      before { class_section.cost_in_cents = 19900 }
      it { should be_valid }
    end

  end

  describe "Min/Max Students" do
    
    context "min_students is negative" do
      before { class_section.min_students = -10 }
      it { should_not be_valid }
    end

    context "max_students is negative" do
      before { class_section.max_students = -10 }
      it { should_not be_valid }
    end

    context "max_students is less than min_students" do
      before { class_section.max_students = 10 }
      before { class_section.min_students = 15 }
      it { should_not be_valid }
    end

    context "min_students is positive" do
      before { class_section.min_students = 12 }
      it { should be_valid }
    end

    context "max_students is positive" do
      before { class_section.max_students = 15 }
      it { should be_valid }
    end

    context "max_students is equal to min_students" do
      before { class_section.max_students = 10 }
      before { class_section.min_students = 10 }
      it { should be_valid }
    end

    context "max_students is greater than min_students" do
      before { class_section.max_students = 12 }
      before { class_section.min_students = 6 }
      it { should be_valid }
    end
  end
end