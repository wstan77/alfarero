module ApplicationHelper
  def toastr_class_for flash_type
    { alert: "success", error: "error", warning: "warning", notice: "info" }[flash_type.to_sym] || flash_type.to_s
  end

  def img_placehold(msj, size=30, font_size=12, cycle=false)
  	if cycle
  		"http://place-hold.it/#{size}x#{size}/#{cycle('c52d2f', '579021', '60EEBF', 'AA6A99')}/white/D6D6D6.png&text=#{msj}&bold&fontsize=#{font_size}"
  	else
  		"http://place-hold.it/#{size}x#{size}/c52d2f/white/D6D6D6.png&text=#{msj}&bold&fontsize=#{font_size}"
  	end
  end
end
