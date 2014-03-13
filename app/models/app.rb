class App
  include Mongoid::Document
  field :name, type: String
  field :desc, type: String
  field :language, type: String
end
