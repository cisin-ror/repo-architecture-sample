module DataBaseStore
  module Repos
    module Repository
      def initialize(klass)
        @klass = klass
      end

      def all
        klass.find_each.lazy.map &method(:map_record)
      end

      private
      attr_accessor :klass
    end
  end
end
