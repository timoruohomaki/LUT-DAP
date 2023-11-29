#tag Class
Protected Class LatencyReport
	#tag Method, Flags = &h0
		Sub Constructor()
		  MinimumMs = val( "+INF" )
		  MaximumMs = val( "-INF" )
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AverageMs As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		MaximumMs As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		MinimumMs As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Samples As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TotalSecs As Double
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AverageMs"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumMs"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumMs"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Samples"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TotalSecs"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
