extends Node

const FRUIT = preload("res://LeapNight Assets/Sound/fruit.mp3")
const HIT = preload("res://LeapNight Assets/Sound/hit.ogg")
const JUMP = preload("res://LeapNight Assets/Sound/jump.wav")

@onready var sfx_streams: Node = $SFXStreams

func play_fruit() -> void:
	play_audio(FRUIT)

func play_impact() -> void:
	play_audio(HIT)

func play_jump() -> void:
	play_audio(JUMP)

func play_audio(audio: AudioStream) -> void:
	var audio_stream := get_free_stream()
	audio_stream.stream = audio
	audio_stream.play()

func get_free_stream() -> AudioStreamPlayer:
	for stream: AudioStreamPlayer in sfx_streams.get_children():
		if not stream.playing:
			return stream
	
	return null
