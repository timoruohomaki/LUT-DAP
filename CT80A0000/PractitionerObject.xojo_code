#tag Class
Protected Class PractitionerObject
	#tag Method, Flags = &h0
		Function fromDict(d as Dictionary) As boolean
		  if d <> nil then
		    
		    firstName = d.Value("firstName")
		    lastName = d.Value("lastName")
		    personalEmail = d.Value("personalEmail")
		    personGUID = d.Value("personGUID")
		    primaryPhone = d.Value("primaryPhone")
		    workRole = d.Value("workRole")
		    smartCardID = d.Value("smartCardID")
		    primarySite = d.Value("primarySite").IntegerValue
		    
		  end
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FromJSON()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub getImage()
		  // get from media collection of primary site
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		firstName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		imgBase64 As string
	#tag EndProperty

	#tag Property, Flags = &h0
		lastName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		personalEmail As String
	#tag EndProperty

	#tag Property, Flags = &h0
		personGUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		primaryPhone As String
	#tag EndProperty

	#tag Property, Flags = &h0
		primarySite As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		smartCardID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		workRole As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="personGUID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
