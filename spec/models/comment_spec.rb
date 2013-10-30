require 'spec_helper'

describe Comment do
  it { should belong_to :restaurant }
  it { should validate_presence_of :content }
end
