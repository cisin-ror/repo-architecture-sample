require_relative 'query_object'

module Storage
  module QueryObjects
    class GetProjects
      include QueryObject

      def initialize(repository = Repos::BrandRepository.new)
        super
      end

      def call
        repository.all
      end
    end
  end
end
