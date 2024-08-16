///@desc		    获取外部资源检测大小
///@arg    {String} _file
///@arg	   {Real}   _file_byte_target
///@return {String}
function ExternalResourceCheck(_file, _file_byte_target){
	if (!file_exists(_file)){
		show_error($"File not exists: path:{_file}", false);
	}else{
		var _save_buffer = buffer_load(_file);
		var _read_byte = (buffer_get_size(_save_buffer));
		show_debug_message(
			(
				string_concat(
					"Target byte: ",
					_file_byte_target,
					" Read byte: ",
					_read_byte,
					" Status: ",
					(
						((_read_byte == _file_byte_target) ? true : false)
					)
				)
			)
		);//TODO: debugger
		if (_read_byte != _file_byte_target){
			show_message($"-Fatal Error-\n\npath: {_file} \nsize: {_read_byte}\n\nCannot read asset.");
			buffer_delete(_save_buffer);//TODO: 啊？？？不如Throw和exception_unhandled_handler
			game_end();
		}
		buffer_delete(_save_buffer);
		return (_file);//TODO: 返回路径以供创建
		/*var _bin = file_bin_open(_file, 0);
		show_debug_message(_file);
		//var _read_byte = (file_bin_read_byte(_bin));
		var _read_byte = (string((file_bin_read_byte(_bin))));
		show_debug_message(
			(
				string_concat(
					"Target byte: ",
					_file_byte_target,
					" Read byte: ",
					_read_byte,
					" Status: ",
					(
						((_read_byte == _file_byte_target) ? true : false)
					)
				)
			)
		);//debugger
		file_bin_close(_bin);
		if (_read_byte != _file_byte_target){
			show_error($"Fatal Error:\nFile size: Event Path: {_file}", false);
			return false;
		}
		return (_bin);
		*/
	}
}