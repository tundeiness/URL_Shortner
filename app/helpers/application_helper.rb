module ApplicationHelper
  def flash_helper(flash_name)
    case flash_name
    when 'success'
      'success'
    when "notice"
      'notice'
    when "error"
      'error'
    end
  end
end
