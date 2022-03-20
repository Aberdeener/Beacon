# frozen_string_literal: true

module Types
  class IssueType < Types::BaseObject
    field :id, ID, null: false
    field :issues_id, Integer
    field :title, String
    field :description, String
    field :created_by, Integer
    field :project_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :creator, Types::UserType
    field :project, Types::ProjectType
    field :title, String
    field :description, String
    field :comments, [Types::CommentType]
  end
end
