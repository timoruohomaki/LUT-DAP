#tag Class
Protected Class SiteObject
	#tag Method, Flags = &h0
		Sub fromJSON(j as JSONItem)
		  
		  me.ehrHost = j.Value("dbEndpoint")
		  me.Id = j.Value("id")
		  me.StreetAddress = j.Value("StreetAddress")
		  me.Name = j.Value("siteName")
		End Sub
	#tag EndMethod


	#tag Note, Name = RapidJSON License
		Tencent is pleased to support the open source community by making RapidJSON available.
		
		Copyright (C) 2015 THL A29 Limited, a Tencent company, and Milo Yip.
		
		Licensed under the MIT License (the "License"); you may not use this file except
		in compliance with the License. You may obtain a copy of the License at
		
		http://opensource.org/licenses/MIT
		
		Unless required by applicable law or agreed to in writing, software distributed
		under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
		CONDITIONS OF ANY KIND, either express or implied. See the License for the
		specific language governing permissions and limitations under the License.
		
	#tag EndNote


	#tag Property, Flags = &h0
		ehrHost As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Id As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StreetAddress As String
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
			Name="Id"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ehrHost"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StreetAddress"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
