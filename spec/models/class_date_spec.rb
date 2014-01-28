require 'spec_helper'

describe ClassDate do

  let(:class_date) { FactoryGirl.create(:class_date) }

  subject { class_date }

  it { should respond_to(:start_time) }
  it { should respond_to(:end_time) }
  it { should respond_to(:id) }
  it { should respond_to(:class_section_id) }

  it { should respond_to(:class_section) }
end
