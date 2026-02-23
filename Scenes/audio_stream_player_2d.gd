extends Node

var bg_music : AudioStreamPlayer

func _ready():
	bg_music = $audio_stream_player_2d  # Reference to the AudioStreamPlayer node
	bg_music.play()  # Start music when the scene is ready

func _on_player_dies():
	bg_music.stop()  # Stop music when the player dies

func _on_restart():
	bg_music.play()  # Restart music when the game restarts
