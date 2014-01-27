	  # t.string   "name"
   #  t.string   "box_office_url"
   #  t.datetime "created_at"
   #  t.datetime "updated_at"
   #  t.text     "description"
   #  t.string   "street_address"
   #  t.string   "street_address_2"
   #  t.string   "city"
   #  t.string   "state"
   #  t.string   "zip"
   #  t.string   "box_office_phone"
   #  t.string   "website_url"
   #  t.string   "map_url"
   #  t.text     "embedded_map_code"

FactoryGirl.define do
  factory :location do
    name "One Great Theater"
    description "An intimate modern theater with 99 seats."
    box_office_url "http://thetheater.com/box-office"
    street_address "1234 Main Street"
    city "Chicago"
    state "IL"
    zip "61550"
    box_office_phone "312-234-9999"
    website_url "http://thetheater.com"
    map_url "https://goo.gl/maps/iSZCP"
    embedded_map_code '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2968.3623521643403!2d-87.65282289999998!3d41.928064500000005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x880fd3047d86303d%3A0x1af6d52448be48eb!2s2540+N+Lincoln+Ave%2C+Chicago%2C+IL+60614!5e0!3m2!1sen!2sus!4v1390796231322" width="600" height="450" frameborder="0" style="border:0"></iframe>'
  end
end
