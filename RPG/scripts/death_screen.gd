extends CanvasLayer

func _ready():
	$ScreenAnimation.play("fade")

func _on_ScreenAnimation_animation_finished(anim_name):
	if anim_name == "fade":
		$Particles2D.visible = true
		$LabelAnimation.play("label")
		$VBoxContainer/Retry.visible = true
		$VBoxContainer/Menu.visible = true

func _on_Retry_gui_input(event):
	if event is InputEventMouseButton and event.is_pressed():
		get_tree().reload_current_scene()

func _on_Menu_gui_input(event):
	if event is InputEventMouseButton and event.is_pressed():
		#enquanto n tem menu, esse botao quita
		get_tree().quit()
