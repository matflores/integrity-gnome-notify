require 'integrity'

module Integrity
  class Notifier
    class GnomeNotify < Notifier::Base
      def self.to_haml
      end

      def deliver!
        images_root = File.expand_path(File.join(File.dirname(__FILE__), '..', '..', '..', 'images'))
        system("notify-send \"#{commit.project.name}\" \"#{short_message}\" -i #{images_root}\/#{commit.status}.png -t 1000")
      end

      def to_s
        'GnomeNotify'
      end
    end

    register GnomeNotify
  end
end
