/// @desc Music Set
_create_stream = audio_create_stream(
	(
		ExternalResourceCheck(
			(
				(
					string_concat(
						working_directory,
						@"music\",
						(array_get(global.bgm_list, _music_flush)),
						".ogg"
					)
				)
			),
			(
				array_get(global._check_size, _music_flush)
			)
		)
	)
);
//TODO: 字面意思