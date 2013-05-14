# ActiveRecord Matchers
# Matchers to test associations:
describe Post do
  it { should belong_to(:user) }
  it { should have_many(:tags).through(:taggings) }
end

describe User do
  it { should have_many(:posts) }
end

# ActiveModel Matchers
# Matchers to test validations and mass assignments:

describe Post do
  it { should validate_uniqueness_of(:title) }
  it { should validate_presence_of(:body).with_message(/wtf/) }
  it { should validate_presence_of(:title) }
  it { should validate_numericality_of(:user_id) }
  it { should validate_uniqueness_of(:title) }
end

describe User do
  it { should_not allow_value("blah").for(:email) }
  it { should allow_value("a@b.com").for(:email) }
  it { should ensure_inclusion_of(:age).in_range(1..100) }
  it { should_not allow_mass_assignment_of(:password) }
end

# ActionController Matchers
# Matchers to test common patterns:

describe PostsController, "#show" do
  context "for a fictional user" do
    before do
      get :show, :id => 1
    end

    it { should assign_to(:user) }
    it { should respond_with(:success) }
    it { should render_template(:show) }
    it { should_not set_the_flash }
  end
end
