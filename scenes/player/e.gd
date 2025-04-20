extends CharacterBody2D
class_name E

signal battle_start(battle_enemy: Array[Enemy], leader: Leader)

var battle_enemy: Array[Enemy] = []

func _on_area_2d_body_entered(body: Node2D) -> void:
	# emit_signal("battle_start", battle_enemy, body)
	if body is CharacterBody2D and body.name == "Leader":
		print("_on_area_2d_body_entered")
		var leader = body as Leader
		if leader:
			print(battle_start)
			battle_start.emit(battle_enemy, leader)
