module Blorgh
  class Article < ApplicationRecord
    validates_presence_of :title, :text
    has_many :comments
    belongs_to :author, class_name: 'User'

    delegate :name, to: :author, prefix: true, allow_nil: true
  end
end
