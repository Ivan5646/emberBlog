class Comment
  include Mongoid::Document
  belongs_to :article  
  field :commenter, type: String
  field :body, type: String
 # embedded_in :article
end
