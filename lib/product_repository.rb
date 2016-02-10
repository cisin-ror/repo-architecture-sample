require_relative 'repository'

module DataBaseStore
  module Repos
    class ProductRepository
      include Repository

      def initialize(db = Models::Product)
        super
      end

      private

      def map_record(record)
        Entities::ProductEntity.new.tap do |product|
          product.price       = record.price
          product.name        = record.name
          product.weight      = record.weight
          product.description = record.description
        end
      end
    end
  end
end
