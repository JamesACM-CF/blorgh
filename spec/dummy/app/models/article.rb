module Blorgh
  class Article < ApplicationRecord
    belongs_to :author, class_name: 'User'

    delegate :name, to: :author, prefix: true, allow_nil: true
  end
end
