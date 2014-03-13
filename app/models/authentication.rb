class Authentication
  include Mongoid::Document
  field :auth_token, type: String
  field :provider, type: String
  embedded_in :user
end
