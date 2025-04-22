extends CanvasLayer

func change_scene(target_scene: String) -> void:
	$AnimationPlayer.play("fade_to_black")
	await $AnimationPlayer.animation_finished
	get_tree().change_scene_to_file(target_scene)
	$AnimationPlayer.play_backwards("fade_to_black")


func _ready() -> void:
	change_scene("res://scenes/field/battle_field.tscn")
