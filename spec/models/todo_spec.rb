require 'rails_helper'

RSpec.describe Todo, type: :model do
  it { should validate_presence_of(:description) }
  it { should belong_to(:list) }
end
