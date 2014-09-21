module ApplicationHelper
  def dispatcher_route
    controller_name = controller_path.gsub(/\//, "_")
    "#{controller_name}##{action_name}"
  end

  def token_url(token)
    "#{request.protocol}#{request.host_with_port}/#{token}"
  end
end
