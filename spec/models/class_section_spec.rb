require 'spec_helper'

describe ClassSection do 

  let(:class_section) { FactoryGirl.create(:class_section) }

  subject { class_section }

  it { should respond_to(:class_course_id) }
  it { should respond_to(:min_students) }
  it { should respond_to(:max_students) }
  it { should respond_to(:id) }
  it { should respond_to(:info) }
  it { should respond_to(:location_id) }

  it { should respond_to(:class_dates) }
  it { should respond_to(:class_course) }
  it { should respond_to(:location) }

end