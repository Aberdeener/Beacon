# frozen_string_literal: true

module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :comment_id, Integer
    field :user_id, Integer
    field :text, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :creator, Types::UserType
    field :issue, Types::IssueType
    field :text, String
  end
end
