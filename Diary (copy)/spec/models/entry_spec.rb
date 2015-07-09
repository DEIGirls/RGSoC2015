require 'rails_helper'

RSpec.describe Entry, type: :model do

  it { should validate_length_of(:title).is_at_least(1).is_at_most(255) }
  it { should validate_length_of(:description).is_at_least(1).is_at_most(4096) }
  it { should validate_length_of(:author).is_at_least(1).is_at_most(4) }
  it { should allow_value('Ines', 'Rosa').for(:author) }
  it { should_not allow_value('coiso', 'XD', 'GX', '', nil).for(:author) }

end
