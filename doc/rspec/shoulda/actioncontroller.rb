
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
