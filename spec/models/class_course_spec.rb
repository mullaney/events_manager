require 'spec_helper'

describe ClassCourse do

  let(:class_course) { FactoryGirl.create(:class_course) }

  subject { class_course }

  it { should respond_to(:id_num) }
  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:id) }

  it { should respond_to(:class_sections) }
end
