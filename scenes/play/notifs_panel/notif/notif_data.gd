class_name NotifData
extends Resource

enum NotifType {
	HOME,
	MONEY,
	RELA
}

@export var notif_type: NotifType
@export var message: String


func _init(type: NotifType, text: String) -> void:
	notif_type = type
	message = text
