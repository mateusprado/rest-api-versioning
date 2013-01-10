class ApiConstraints

  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  dpef matches?(req)
    @default || req.headers['Accept'].include?("application/mateusprado-api.v#{@version}") 
  end
end
