module ApplicationHelper
	def toastr_class_for flash_type
    { alert: "success", error: "error", warning: "warning", notice: "info" }[flash_type.to_sym] || flash_type.to_s
  end
end
