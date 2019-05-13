module Memorable
  module ClassMethods
  def reset_all
   self.all.clear
  end
end

  module InstanceMethods
  def count
    self.all.count
  end
end
end 
