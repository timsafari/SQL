			= RIGHT("0000"+CStr(Fields!JobDuration_seconds.Value\3600),2) + ":"
			+ RIGHT("0000"+CStr(Fields!JobDuration_seconds.ValueFields!Level.Value\3600 mod 60),2) + ":"
			+ RIGHT("0000"+CStr(Fields!JobDuration_seconds.ValueFields!Level.Value mod 3600 mod 60),2)