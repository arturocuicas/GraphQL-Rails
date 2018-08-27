Types::UserType = GraphQL::ObjectType.define do
  # this type is named `Link`
  name 'User'

  # it has the following fields
  field :id, !types.Int
  field :email, !types.String
end
