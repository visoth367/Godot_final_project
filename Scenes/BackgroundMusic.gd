extends Node

# Change the variable type to AudioStreamPlayer2D
var bg_music : AudioStreamPlayer2D

func _ready():
	bg_music = $audio_stream_player_2d  # Path to the AudioStreamPlayer2D node
	bg_music.play()  # Start playing the background music

func _on_player_dies():
	bg_music.stop()  # Stop the music when the player dies

func _on_restart():
	bg_music.play()  # Restart the music when the game restarts
