class User < ApplicationRecord
  has_many :articles, class_name: 'Blorgh::Article', foreign_key: :author_id
end
