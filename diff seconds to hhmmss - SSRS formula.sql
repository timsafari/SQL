=IIF(
		Fields!JobDuration_seconds.Value - Lookup(CStr(Fields!Level.Value) +"_" + CStr(Fields!Day_Order.Value-1),CStr(Fields!Level.Value)+"_"+CStr(Fields!Day_Order.Value),Fields!JobDuration_seconds.Value,"DS_Details") < 0
	    ,  "-" 
			+ RIGHT("0000"+CStr(ABS(Fields!JobDuration_seconds.Value - Lookup(CStr(Fields!Level.Value) + "_" + CStr(Fields!Day_Order.Value-1),CStr(Fields!Level.Value) + "_" + CStr(Fields!Day_Order.Value),Fields!JobDuration_seconds.Value,"DS_Details"))\3600),2) + ":"
			+ RIGHT("0000"+CStr(ABS(Fields!JobDuration_seconds.Value - Lookup(CStr(Fields!Level.Value) + "_" + CStr(Fields!Day_Order.Value-1),CStr(Fields!Level.Value) + "_" + CStr(Fields!Day_Order.Value),Fields!JobDuration_seconds.Value,"DS_Details"))\3600 mod 60),2) + ":"
			+ RIGHT("0000"+CStr(ABS(Fields!JobDuration_seconds.Value - Lookup(CStr(Fields!Level.Value) + "_" + CStr(Fields!Day_Order.Value-1),CStr(Fields!Level.Value) + "_" + CStr(Fields!Day_Order.Value),Fields!JobDuration_seconds.Value,"DS_Details")) mod 3600 mod 60),2)
			, RIGHT("0000"+CStr(ABS(Fields!JobDuration_seconds.Value - Lookup(CStr(Fields!Level.Value) + "_" + CStr(Fields!Day_Order.Value-1),CStr(Fields!Level.Value) + "_" + CStr(Fields!Day_Order.Value),Fields!JobDuration_seconds.Value,"DS_Details"))\3600),2) + ":"
			+ RIGHT("0000"+CStr(ABS(Fields!JobDuration_seconds.Value - Lookup(CStr(Fields!Level.Value) + "_" + CStr(Fields!Day_Order.Value-1),CStr(Fields!Level.Value) + "_" + CStr(Fields!Day_Order.Value),Fields!JobDuration_seconds.Value,"DS_Details"))\3600 mod 60),2) + ":"
			+ RIGHT("0000"+CStr(ABS(Fields!JobDuration_seconds.Value - Lookup(CStr(Fields!Level.Value) + "_" + CStr(Fields!Day_Order.Value-1),CStr(Fields!Level.Value) + "_" + CStr(Fields!Day_Order.Value),Fields!JobDuration_seconds.Value,"DS_Details")) mod 3600 mod 60),2)
	)