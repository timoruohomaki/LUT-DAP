#tag Class
Protected Class App
Inherits DesktopApplication
	#tag Event
		Sub Opening()
		  Using EinhugurJSONIII
		  
		  do
		  loop until RegisterPlugins
		  
		  smartCardContext = New SmartCardContextMBS
		  
		  var groups() as string = smartCardContext.ReaderGroups
		  
		  var devices() as string = smartCardContext.Readers
		  
		  if devices.Count > 0 then
		    smartCardDeviceName = devices(0)
		  end
		  
		  // get site configs from REDIS
		  
		  Try
		    
		    redis = new Redis_MTC(getRedisPwd("config"),kRedisConfigEndpoint,kRedisConfigPort)
		    
		    if redis <> nil then
		      
		      var v as variant
		      
		      v = redis.Execute("JSON.GET sites")
		      
		      // parse JSON result
		      
		      Try
		        
		        var jConfig as New JSONItem
		        var jSite as New JSONItem
		        var s As New SiteObject
		        var c as Integer
		        
		        jConfig.Load(v) 
		        
		        c = jConfig.Child("sites").Child("site").Count
		        
		        if jConfig.Child("sites").Child("site").IsArray then
		          
		          for i as integer = 0 to ( c - 1)
		            
		            jSite = jConfig.Child("sites").Child("site").ChildAt(i)
		            
		            s = New SiteObject
		            
		            s.fromJSON(jSite)
		            
		            siteList.Append(s)
		            
		          next
		          
		        end
		        
		      Catch e as JSONException
		        
		        MessageBox "JSON Parsing error: " + EndOfLine + e.Message
		        
		      end Try
		      
		    end
		    
		  Catch e as M_Redis.RedisException
		    
		    MessageBox e.Message
		    
		  End Try
		  
		  // redis-14823.c327.europe-west1-2.gce.redns.redis-cloud.com:14823
		  
		End Sub
	#tag EndEvent


	#tag Note, Name = References
		
		CalendarView:
		https://www.jeremieleroy.com/wiki/index.php?title=CalendarView 
	#tag EndNote


	#tag Property, Flags = &h0
		myPatient As PatientObject
	#tag EndProperty

	#tag Property, Flags = &h0
		myPractitioner As PractitionerObject
	#tag EndProperty

	#tag Property, Flags = &h0
		mySite As SiteObject
	#tag EndProperty

	#tag Property, Flags = &h0
		redis As Redis_MTC
	#tag EndProperty

	#tag Property, Flags = &h0
		siteList(-1) As SiteObject
	#tag EndProperty

	#tag Property, Flags = &h0
		smartCard As SmartCardMBS
	#tag EndProperty

	#tag Property, Flags = &h0
		smartCardContext As SmartCardContextMBS
	#tag EndProperty

	#tag Property, Flags = &h0
		SmartCardCurrentID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		smartCardDeviceName As String
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant

	#tag Constant, Name = kMongoDbName, Type = String, Dynamic = False, Default = \"ehr01", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kMongoDbURI, Type = String, Dynamic = False, Default = \"mongodb+srv://{userpwd}@ehr01.l64rcpf.mongodb.net/\?retryWrites\x3Dtrue&w\x3Dmajority", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRedisCodeserverPort, Type = Double, Dynamic = False, Default = \"12727", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRedisConfigEndpoint, Type = String, Dynamic = False, Default = \"redis-14823.c327.europe-west1-2.gce.redns.redis-cloud.com", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRedisConfigPort, Type = Double, Dynamic = False, Default = \"14823", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRedisVaultPort, Type = Double, Dynamic = False, Default = \"11284", Scope = Public
	#tag EndConstant

	#tag Constant, Name = UseGDIPlus, Type = Boolean, Dynamic = False, Default = \"TRUE", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoQuit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowHiDPI"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BugVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Copyright"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastWindowIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MajorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NonReleaseVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RegionCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Version"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_CurrentEventTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="smartCardDeviceName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SmartCardCurrentID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
