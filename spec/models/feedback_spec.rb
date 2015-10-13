require 'rails_helper'

describe Feedback do
  it { should validate_presence_of :content }
  it { should belong_to :section  }
end
