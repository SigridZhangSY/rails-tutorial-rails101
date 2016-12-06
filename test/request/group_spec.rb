RSpec.describe "Group", type: :request do
  before(:each) do
    @group_attrs = {}
  end

  describe "create new group" do
    it "should 201" do
      post "/groups"
    end
  end
end