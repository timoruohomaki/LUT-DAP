#tag Class
Protected Class ProcedureObject
	#tag Method, Flags = &h0
		Sub FromJSON(json as String)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToJSON() As String
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		description As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NCSP_Descr_FI As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NCSP_ID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		personGUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		practitionerGUID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		procEnd As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		procNotes As String
	#tag EndProperty

	#tag Property, Flags = &h0
		procStart As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		procStatus As String
	#tag EndProperty

	#tag Property, Flags = &h0
		site As Integer
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
			Name="NCSP_Descr_FI"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NCSP_ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
