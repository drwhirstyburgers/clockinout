require 'rails_helper'

RSpec.describe Teacher, type: :model do
  let(:teacher) { Teacher.create!(name: "Jane Doe", time_in: Time.current, time_out: Time.current) }

  describe "attributes" do
    it "has name and time in and time out elements" do
      expect(teacher).to have_attributes(name: "Jane Doe")
    end
  end
end
