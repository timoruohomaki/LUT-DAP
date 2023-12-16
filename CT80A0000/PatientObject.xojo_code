#tag Class
Protected Class PatientObject
	#tag Method, Flags = &h0
		Function asJSON() As string
		  var j as JSONItem
		  
		  j.Value("allergies") = allergies
		  j.Value("firstName") = firstName
		  j.Value("lastName") = lastName
		  j.Value("medical") = medical
		  j.Value("personGUID") = personGUID
		  j.Value("postalCode") = postalCode
		  j.Value("postalName") = postalName
		  j.Value("primaryPhone") = primaryPhone
		  j.Value("primarySite") = primarySite
		  j.Value("streetAddress") = streetAddress
		  
		  
		  return j.ToString
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function dbInsert(site as Integer) As boolean
		  var mongoURI as String
		  
		  mongoURI = ""
		  
		  
		  SELECT CASE site
		    
		  CASE 100
		    
		    mongoURI = ""
		    
		  CASE 101
		    
		  CASE 102
		    
		  END SELECT
		  
		  
		  return true
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		allergies As String
	#tag EndProperty

	#tag Property, Flags = &h0
		firstName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		lastName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		medical As String
	#tag EndProperty

	#tag Property, Flags = &h0
		personGUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		postalCode As String
	#tag EndProperty

	#tag Property, Flags = &h0
		postalName As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		primaryPhone As String
	#tag EndProperty

	#tag Property, Flags = &h0
		primarySite As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		streetAddress As String
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
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
