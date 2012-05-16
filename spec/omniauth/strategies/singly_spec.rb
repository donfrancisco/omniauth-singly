require "spec_helper"

describe OmniAuth::Strategies::Singly do
  subject do
    OmniAuth::Strategies::Singly.new({})
  end

  context "client_options" do
    it "uses the correct site" do
      subject.options.client_options.site.
        should == "https://api.singly.com"
    end

    it "uses the correct authorize_url" do
      subject.options.client_options.authorize_url.
        should == "https://api.singly.com/oauth/authorize"
    end

    it "uses the correct token_url" do
      subject.options.client_options.token_url.
        should == "https://api.singly.com/oauth/access_token"
    end
  end
end
