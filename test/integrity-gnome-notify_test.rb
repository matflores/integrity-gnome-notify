require 'test_helper'
require 'integrity/notifier/test'
require 'integrity/notifier/integrity-gnome-notify'

class IntegrityGnomeNotifyTest < Test::Unit::TestCase
  include Integrity::Notifier::Test

  context "A gnome-notify notifier" do
    setup { setup_database }

    should "register itself" do
      assert_equal Integrity::Notifier::GnomeNotify, 
                   Integrity::Notifier.available["GnomeNotify"]
    end

    [:successful, :failed, :pending].each do |status|
      should "send a notification after completing a #{status} build" do
        commit = Integrity::Commit.gen(status)
        notifier = Integrity::Notifier::GnomeNotify.new(commit, {})
        images_root = File.expand_path(File.join(File.dirname(__FILE__), '..', 'images'))
        mock(notifier).system(/^notify-send "#{commit.project.name}" "#{notifier.short_message}" -i #{images_root}\/#{commit.status}.png -t 1000$/)
        notifier.deliver!
      end
    end
  end
end
