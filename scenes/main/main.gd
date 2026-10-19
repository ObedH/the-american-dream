class_name Main
extends Node

enum MainState {
	UNINITIALIZED,
	MENU,
	PLAY
}

var current_state: MainState
var menu: Menu
var play: Play

func _ready() -> void:
	current_state = MainState.UNINITIALIZED
	var menu_res: PackedScene = load("res://scenes/menu/menu.tscn")
	menu = menu_res.instantiate()
	add_child(menu)
	menu.play_pressed.connect(_on_menu_play_pressed)
	current_state = MainState.MENU
	menu.initialize()


func _on_menu_play_pressed() -> void:
	if current_state != MainState.MENU:
		push_warning("Invalid state!")
		return
	
	current_state = MainState.UNINITIALIZED
	
	menu.queue_free()
	menu = null
	
	var play_res: PackedScene = load("res://scenes/play/play.tscn")
	play = play_res.instantiate()
	add_child(play)
	current_state = MainState.PLAY
	play.initialize()
	
