require 'rails_helper'

RSpec.describe Entry, type: :model do
  it "creates new entry"
  it "updates entry"
  it "deletes entry"
  it "shows entry"
  it "lists entries of a given date"

  it { should validate_length_of(:title).is_at_least(1).is_at_most(255) }
  it { should validate_length_of(:description).is_at_least(1).is_at_most(255) }
  it { should validate_length_of(:author).is_at_least(1).is_at_most(255) }

end
