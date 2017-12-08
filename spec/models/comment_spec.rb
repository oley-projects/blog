require "spec_helper"

describe Comment do 
  describe "validations" do
    it { should validate_presence_of :body }
    it { should validate_length_of(:body).is_at_least(2).is_at_most(1000) }
  end
  
  describe "assosiations" do
    it { should belong_to :article }
  end
end