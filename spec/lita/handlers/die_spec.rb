require 'spec_helper'

describe Lita::Handlers::Die, lita_handler: true do
  before do
    allow(robot).to receive(:shut_down)
  end

  context 'with an admin user' do
    before do
      allow(robot.auth).to receive(:user_is_admin?).with(user).and_return(true)
    end

    it 'dies' do
      expect(robot).to receive(:shut_down)
      send_command('die')
    end

    it 'sobs' do
      send_command('die')
      expect(replies.last).to match(/cries/)
    end
  end

  context 'with a non-admin user' do
    it "doesn't die" do
      expect(robot).not_to receive(:shut_down)
      send_command('die')
    end

    it 'says nothing' do
      send_command('die')
      expect(replies).to be_empty
    end
  end

  describe 'routes' do
    it { is_expected.to route_command('die').with_authorization_for(:admins).to(:die) }
    it { is_expected.not_to route_command('die').with_authorization_for(:other) }
    it { is_expected.not_to route_command('die') }
  end
end
