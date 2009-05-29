require 'test_helper'
require 'integrity/notifier/test'
require 'integrity/notifier/integrity-gnome-notify'

class IntegrityGnomeNotifyTest < Test::Unit::TestCase
  include Integrity::Notifier::Test

  context "A gnome-notify notifier" do
    setup { setup_database }

    should "register itself" do
      assert_equal Integrity::Notifier::GnomeNotify, Integrity::Notifier.available["GnomeNotify"]
    end
  end
end
