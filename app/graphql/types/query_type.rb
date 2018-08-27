
Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # User
  field :me, Types::UserType do

    resolve -> (root, args, ctx) { ctx[:current_user] }
  end

  # Projects
  field :projects, types[Types::ProjectType] do

    resolve -> (root, args, ctx) { ctx[:current_user].projects }
  end
end
