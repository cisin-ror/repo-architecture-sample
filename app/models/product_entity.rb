module DataBaseStore
  module Entities
    class ProductEntity
      include ::Virtus.model

      attribute :price,       String
      attribute :name,        String
      attribute :weight,      String
      attribute :description, String
    end
  end
end
