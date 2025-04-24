extends CharacterBody2D
class_name E

signal battle_start(battle_enemy: Array[Enemy], leader: Leader)

var battle_enemy: Array[Enemy] = []

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D and body.name == "Leader":
		var leader = body as Leader
		if leader:
			var tween = create_tween()
			tween.tween_property(leader, "speed", 0, 0)
			TransitionLayer.change_scene("res://scenes/field/battle_field.tscn")
			print(battle_start)
			battle_start.emit(battle_enemy, leader)
