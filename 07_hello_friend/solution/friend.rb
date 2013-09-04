class Friend
  def greeting (name = nil)
    case
      when name == nil then "Hello!"
      when name != nil then "Hello, #{name}!"
    end
  end
end
