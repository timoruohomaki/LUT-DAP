#tag Class
Protected Class PatientObject
	#tag Method, Flags = &h0
		Function asJSON() As string
		  // return a valid JSON object with the properties of the PatientObject
		  
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

	#tag Method, Flags = &h0
		Function fromDict(d as Dictionary) As boolean
		  // populate properties from passed dictionary with key-value pairs of the JSON
		  
		  if d <> nil then
		    
		    firstName = d.Value("firstName")
		    lastName = d.Value("lastName")
		    personalEmail = d.Value("personalEmail")
		    personGUID = d.Value("personGUID")
		    primaryPhone = d.Value("primaryPhone")
		    primarySite = d.Value("primarySite").IntegerValue
		    medical = d.Value("medical")
		    allergies = d.Value("allergies")
		    streetAddress = d.Value("streetAddress")
		    postalCode = d.Value("postalCode")
		    postalName = d.Value("postalName")
		    
		  end
		  
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
		personalEmail As String
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
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="allergies"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="firstName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="medical"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="postalCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="postalName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="primaryPhone"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="primarySite"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="streetAddress"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
