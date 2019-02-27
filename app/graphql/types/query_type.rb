module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false, description: "An example field added by the generator"
      # def test_field
      #   "Hello World!"
      # end

    field :test_field2, String, null: false, description: "An example field added by the generator"
    

    field :me, UserType do
      resolve ->(obj, args, ctx) {
        User.first
      }
    end
  end
end
