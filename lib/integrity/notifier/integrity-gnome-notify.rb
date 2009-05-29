require 'integrity'

module Integrity
  class Notifier
    class GnomeNotify < Notifier::Base
      def self.to_haml
      end

      def deliver!
      end

      def to_s
        'GnomeNotify'
      end
    end

    register GnomeNotify
  end
end
