class Dummy < OpenStruct
  include Translates
  translates :title, :description
end
