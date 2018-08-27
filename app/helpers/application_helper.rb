module ApplicationHelper
  def active?(path)
    "active" if current_page?(path)
  end

  def flash_messages
    if flash[:alert]
      return (js add_gritter(flash[:alert], title: "", sticky: false, class_name: "page__notification page__notification--alert", time: 20000000))
    elsif flash[:error]
      return (js add_gritter(flash[:error], title: "", sticky: false, class_name: "page__notification page__notification--error", time: 20000000))
    else
      return (js add_gritter(flash[:notice], title: "", sticky: false, class_name: "page__notification page__notification--notice", time: 20000000))
    end 
  end
end
