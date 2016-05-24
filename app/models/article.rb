class Article
  include Mongoid::Document
	include Mongoid::Document::Taggable
	include Mongoid::Slug
  embeds_many :comments  
  has_many :comments, dependent: :destroy
  field :title, type: String
  field :text, type: String
	#field :tags, type: Array
	
  slug :title
		
  validates :title, presence: true,
                    length: { minimum: 5 }
end
