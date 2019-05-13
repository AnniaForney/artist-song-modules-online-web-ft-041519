module Paramable
    module ClassMethods
    end
  def to_param
      name.downcase.gsub(' ', '-')
    end
end
