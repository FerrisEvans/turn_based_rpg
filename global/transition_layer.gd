extends CanvasLayer

func change_scene(target_scene: String) -> void:
	$AnimationPlayer.play("fade_to_balck")
	await $AnimationPlayer.animation_finished
	get_tree().change_scene_to_file(target_scene)
	$AnimationPlayer.play_backwards("fade_to_balck")
