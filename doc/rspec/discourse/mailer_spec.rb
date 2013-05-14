# https://github.com/discourse/discourse/blob/master/spec/mailers/invite_mailer_spec.rb
require "spec_helper"

describe InviteMailer do

  describe "send_invite" do
    let(:invite) { Fabricate(:invite) }
    subject { InviteMailer.send_invite(invite) }

    its(:to) { should == [invite.email] }
    its(:subject) { should be_present }
    its(:body) { should be_present }
    its(:from) { should == [SiteSetting.notification_email] }
  end


end
