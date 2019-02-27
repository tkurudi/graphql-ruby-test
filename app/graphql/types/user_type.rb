module Type
  class UserType < Types::BaseObject
    # name "User"
    description "a user"

    field :id, !Int
    field :emailAddress, !String, property: :email

  end
end 