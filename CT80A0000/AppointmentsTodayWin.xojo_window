#tag DesktopWindow
Begin DesktopWindow AppointmentsTodayWin
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   False
   Height          =   400
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   ""
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   "Appointments Today"
   Type            =   0
   Visible         =   True
   Width           =   600
   Begin DesktopListBox appLB
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   3
      ColumnWidths    =   ""
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   255
      Index           =   -2147483648
      InitialValue    =   "Appointment Time	Last name	First Name"
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   92
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   560
      _ScrollWidth    =   -1
   End
   Begin DesktopButton closeB
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Close"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   500
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   359
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopLabel Label1
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Practitioner:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopLabel Label2
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Site:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopLabel pracLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   142
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   190
   End
   Begin DesktopLabel siteLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   142
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   190
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  do
		  loop until getAppointments
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function getAppointments() As boolean
		  // select appointments of this site and practitioner and join with patient info
		  
		  var cPractitioner as String = app.myPractitioner.personGUID
		  
		  var cSite as Integer = app.mySite.Id
		  
		  var cToday as DateTime = DateTime.Now()
		  
		  var cTodayStart as DateTime = New DateTime(cToday.Year, cToday.Month, cToday.Day, 0, 0, 0)
		  
		  var cTodayEnd as DateTime = New DateTime(cToday.Year, cToday.Month, cToday.Day, 23, 59, 59)
		  
		  // 2023-12-17 10:00:00
		  
		  // Construct Mongo query
		  
		  var dbURI as New MongoURIMBS(app.mySite.ehrHost)
		  var dbClient as MongoClientMBS
		  dbClient = New MongoClientMBS(dbURI)
		  
		  
		  var dbDatabase as MongoDatabaseMBS
		  var dbCollections() as String
		  var appointmentCollection as MongoCollectionMBS
		  var appointmentCursor as MongoCursorMBS
		  
		  var filter as new JSONItem
		  filter.Value("site") = cSite
		  filter.Value("practitionerGUID") = cPractitioner
		  
		  var mDateRange As new JSONItem
		  mDateRange.Value("$gte") = cTodayStart.SQLDateTime
		  mDateRange.Value("$lt") = cTodayEnd.SQLDateTime
		  
		  // MongoDB example:
		  // {"startTime": {"$gte": new Date("2023-12-17T00:00:00Z"), "$lt": new Date("2023-12-18T00:00:00Z")}}
		  
		  filter.Value("startTime") = mDateRange
		  
		  var sortOrder as new JSONItem
		  sortOrder.Value("startTime") = 1
		  
		  var options as new JSONItem
		  options.Value("limit") = 50
		  options.Value("sort") = sortOrder
		  
		  // connect database and do query fr appointments
		  
		  Try
		    
		    if dbClient <> nil then
		      
		      dbDatabase = dbClient.Database("ehr")
		      
		      if dbDatabase <> nil then
		        
		        dbCollections() = dbDatabase.CollectionNames
		        
		        appointmentCollection = dbDatabase.Collection("appointments")
		        
		        appointmentCursor = appointmentCollection.Find(filter.toString, options.toString)
		        
		        if appointmentCursor <> nil then
		          
		          var Record as string
		          
		          patientList = New Dictionary
		          
		          while appointmentCursor.NextRecord(Record)
		            
		            var appointments() as Variant
		            
		            appointments = ParseJSON("[" + Record + "]")
		            
		            for each d As Dictionary in appointments
		              
		              var startAt as DateTime = DateTime.FromString(d.Value("startTime").StringValue)
		              
		              appLB.addrow(format(startAt.Hour,"00")+":"+format(startAt.Minute,"00"))
		              appLB.RowTagAt(appLB.LastAddedRowIndex) = d
		              
		              var p as New PatientObject
		              
		              p = MainWin.getPatientByGUID(d.Value("personGUID"))
		              
		              if p<> nil then
		                
		                appLb.CellTextAt(appLB.LastAddedRowIndex,1) = p.lastName
		                appLb.CellTextAt(appLB.LastAddedRowIndex,2) = p.firstName
		                
		                patientList.Value(d.Value("personGUID")) = p
		                
		              end
		              
		            Next
		            
		          wend
		          
		        end
		        
		        
		        
		      end
		      
		    end
		    
		  Catch err as MongoExceptionMBS
		    
		    MessageBox "Error while contacting database: " + EndOfLine + err.Message
		    
		  End Try
		  
		  
		  return true
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		patientLIst As Dictionary
	#tag EndProperty


#tag EndWindowCode

#tag Events appLB
	#tag Event
		Function ConstructContextualMenu(base As DesktopMenuItem, x As Integer, y As Integer) As Boolean
		  base.AddMenu(New MenuItem("New Chart"))
		  base.AddMenu(New MenuItem("-"))
		  base.AddMenu(New MenuItem("Reschedule"))
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuItemSelected(selectedItem As DesktopMenuItem) As Boolean
		  SELECT CASE selectedItem.Text
		    
		  CASE "New Chart"
		    
		    var d as New Dictionary
		    
		    d = appLb.RowTagAt(appLB.SelectedRowIndex)
		    
		    if d<>nil then
		      
		      var p as New PatientObject
		      
		      p = patientList.Value(d.Value("personGUID"))
		      
		      MainWin.setNewChart(d,p) 
		      
		      self.Close
		      
		    else
		      
		      MessageBox("Failed to get dictionary -object")
		      
		    end
		    
		    
		  CASE "Reschedule"
		    
		  END SELECT
		  
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events closeB
	#tag Event
		Sub Pressed()
		  Self.close()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pracLabel
	#tag Event
		Sub Opening()
		  me.Bold = True
		  
		  me.text = app.myPractitioner.firstName + " " + app.myPractitioner.lastName
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events siteLabel
	#tag Event
		Sub Opening()
		  me.bold = TRUE
		  
		  me.text = app.mySite.Name + " (" + str(app.mySite.Id) + ")"
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Window Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
