#tag DesktopWindow
Begin DesktopWindow newAppointmentWin
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
   Title           =   "New Appointment"
   Type            =   0
   Visible         =   True
   Width           =   600
   Begin DesktopRadioGroup patientTypeRG
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   45
      Horizontal      =   False
      Index           =   -2147483648
      InitialValue    =   "New Patient\r\nExisting Patient"
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      SelectedIndex   =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopGroupBox GroupBox1
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Patient Information"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   269
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   77
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   321
      Begin DesktopLabel Label1
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "First Name"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   113
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopTextField firstNameTF
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   22
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   152
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   113
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   169
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
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Last Name"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   145
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopTextField lastNameTF
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   22
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   152
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   145
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   169
      End
      Begin DesktopLabel Label3
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   40
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
         Text            =   "Phone"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   177
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopLabel Label4
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   40
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
         Text            =   "Email"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   209
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopLabel Label5
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   40
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
         Text            =   "Person ID"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   241
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopLabel Label6
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   40
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
         Text            =   "Notes"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   273
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopTextArea notesTA
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   True
         AllowStyledText =   True
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         Height          =   53
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   152
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   273
         Transparent     =   False
         Underline       =   False
         UnicodeMode     =   1
         ValidationMask  =   ""
         Visible         =   True
         Width           =   169
      End
      Begin DesktopTextField phoneTF
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   22
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   152
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   177
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   "###-########"
         Visible         =   True
         Width           =   169
      End
      Begin DesktopTextField emailTF
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   22
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   152
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   209
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   169
      End
      Begin DesktopTextField personIdTF
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         Height          =   22
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   152
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   True
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   241
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   169
      End
   End
   Begin DesktopGroupBox GroupBox2
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Appointment"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   269
      Index           =   -2147483648
      Italic          =   False
      Left            =   353
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   77
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   227
      Begin DesktopCalendarControl appointmentDateCC
         AutoDeactivate  =   True
         AutoLocalize    =   False
         BackColor       =   &cFFFFFF00
         BrowseMode      =   False
         ClickableOutOfBounds=   True
         DarkHeaderLinux =   True
         DarkHeaderWindows=   True
         DisabledSpecialDayColor=   &cC8727200
         DrawFrameDMWindows=   True
         DrawFrameLinux  =   False
         DrawFrameMac    =   True
         DrawFrameWindows=   False
         DrawOutOfBounds =   False
         Enabled         =   True
         FirstDayOfWeek  =   1
         FridayEnabled   =   True
         FridaySpecial   =   False
         Height          =   143
         HideYearArrows  =   False
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         InitMaxDay      =   0
         InitMaxMonth    =   0
         InitMaxYear     =   0
         InitMinDay      =   0
         InitMinMonth    =   0
         InitMinYear     =   0
         InitSelectedDay =   0
         InitSelectedMonth=   0
         InitSelectedYear=   0
         Left            =   373
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MarkStyle       =   0
         MondayEnabled   =   True
         MondaySpecial   =   False
         OSXDrawWeekBars =   True
         RectangularBodyLinux=   False
         RectangularBodyWindows=   False
         SaturdayEnabled =   False
         SaturdaySpecial =   False
         Scope           =   0
         SelectionColor  =   &c00000000
         SelectionDMColor=   &c00000000
         SizeMode        =   0
         SpecialDayColor =   &cFF000000
         SpecialWDayStyle=   0
         SundayEnabled   =   False
         SundaySpecial   =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         ThursdayEnabled =   True
         ThursdaySpecial =   False
         Tooltip         =   ""
         Top             =   113
         TuesdayEnabled  =   True
         TuesdaySpecial  =   False
         UseBackColor    =   False
         UseSelectionColor=   False
         UseSpecialDayColor=   False
         Visible         =   True
         WednesdayEnabled=   True
         WednesdaySpecial=   False
         Width           =   135
      End
      Begin DesktopTimeControl startTimeTC
         AutoDeactivate  =   True
         Enabled         =   True
         HasBorder       =   True
         Height          =   23
         Hours           =   8
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Left            =   373
         LinuxFontBold   =   False
         LinuxTextFont   =   "System"
         LinuxTextSize   =   0.0
         LinuxTextUnit   =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacFontBold     =   False
         MacHideBackground=   False
         MacTextFont     =   "System"
         MacTextSize     =   0.0
         Minutes         =   0
         Scope           =   0
         Seconds         =   0
         ShowSeconds     =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TimeFormat      =   1
         Tooltip         =   ""
         Top             =   268
         Visible         =   True
         Width           =   80
         WinFontBold     =   False
         WinTextFont     =   "System"
         WinTextSize     =   0.0
         WinTextUnit     =   0
      End
      Begin DesktopRadioGroup durationRG
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   68
         Horizontal      =   False
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         InitialValue    =   "30 min\r\n45 min\r\n60 min"
         Italic          =   False
         Left            =   465
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SelectedIndex   =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   268
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin DesktopButton okB
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   500
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   358
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopButton cancelB
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   408
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   358
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopSearchControl patientSearchSC
      AllowFocusRing  =   True
      AutoDeactivate  =   True
      Enabled         =   True
      HasCancelButton =   True
      HasMenu         =   False
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   152
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacBorderStyle  =   0
      PlaceHolderText =   ""
      Scope           =   0
      SendSearchStringImmediately=   False
      SendWholeSearchString=   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      Tooltip         =   ""
      Top             =   43
      Visible         =   True
      Width           =   170
   End
   Begin DesktopLabel Label7
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   365
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Site:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopLabel siteNameLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   365
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   43
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   145
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Function insertDB() As boolean
		  // get site and database connection string
		  
		  if app.mySite <> nil then
		    
		    // create JSON and insert into MongoDB
		    
		    var appointment As New JSONItem
		    
		    if thePatient <> nil then
		      
		      appointment.Value("personGUID") = thePatient.personGUID 
		      
		    end
		    
		    if app.myPractitioner <> nil then
		      
		      appointment.Value("practitionerGUID") = app.myPractitioner.personGUID
		      
		    end
		    
		    appointment.Value("appointmentNotes") = notesTA.text
		    
		    appointment.Value("site") = app.mySite.Id
		    
		    // construct date strings
		    
		    var startD as New DateTime(appointmentDateCC.SelectedDate.Year, appointmentDateCC.SelectedDate.Month, appointmentDateCC.SelectedDate.Day, startTimeTC.Hours, startTimeTC.Minutes, 0)
		    
		    var duration as New DateInterval
		    var endD as DateTime
		    
		    SELECT CASE durationRG.SelectedIndex
		      
		    CASE 0 // 30 min
		      
		      duration.Minutes = 30
		      
		      endD = startD + duration
		      
		    CASE 1 // 45 min
		      
		      duration.Minutes = 45
		      
		      endD = startD + duration
		      
		    CASE 2 // 60 min
		      
		      duration.Minutes = 60
		      
		      endD = startD + duration
		      
		    END SELECT
		    
		    appointment.Value("startTime") = startD.SQLDateTime
		    
		    appointment.Value("endtime") = endD.SQLDateTime
		    
		    // create Mongo insert
		    
		    // MessageBox GenerateJSON(appointment, TRUE)
		    
		    // defining MongoDB connection string based on the site currently logged in
		    
		    var dbURI as New MongoURIMBS(app.mySite.ehrHost)
		    
		    var dbClient as MongoClientMBS
		    var dbDatabase as MongoDatabaseMBS
		    var dbCollections() as String
		    var appointmentCollection as MongoCollectionMBS
		    
		    dbClient = New MongoClientMBS(dbURI)
		    
		    Try
		      
		      if dbClient <> nil then
		        
		        dbDatabase = dbClient.Database("ehr")
		        
		        dbCollections() = dbDatabase.CollectionNames
		        
		        appointmentCollection = dbDatabase.Collection("appointments")
		        
		        // MessageBox("Ready to insert, site=" + app.mySite.Id.ToString)
		        
		        var dbResult As String = appointmentCollection.InsertOne(appointment.toString)
		        
		        // MessageBox(dbResult)
		        
		      end
		      
		    Catch err as MongoExceptionMBS
		      
		      MessageBox(err.Message)
		      
		    End Try
		    
		  end
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub openWith(p as PatientObject)
		  if p <> nil then
		    
		    thePatient = p
		    
		    setEnabled("Existing Patient")
		    
		    patientTypeRG.SelectedIndex = 1
		    
		    firstNameTF.Text = thePatient.firstName
		    
		    lastNameTF.Text = thePatient.lastName
		    emailTF.Text = thePatient.personalEmail
		    phoneTF.Text = thePatient.primaryPhone
		    
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setEnabled(i as string)
		  
		  SELECT CASE i
		    
		  CASE "New Patient"
		    
		    firstNameTF.Enabled = True
		    lastNameTF.Enabled = True
		    emailTF.Enabled = True
		    phoneTF.Enabled = True
		    personIdTF.Enabled = True
		    
		  CASE "Existing Patient"
		    
		    firstNameTF.Enabled = False
		    lastNameTF.Enabled = False
		    emailTF.Enabled = False
		    phoneTF.Enabled = False
		    personIdTF.Enabled = False
		    
		  END SELECT
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setPatientFromDictionary(record as dictionary)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		thePatient As PatientObject
	#tag EndProperty


#tag EndWindowCode

#tag Events patientTypeRG
	#tag Event
		Sub SelectionChanged(button As DesktopRadioButton)
		  setEnabled(me.SelectedItem.Caption)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  setEnabled("New Patient")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events okB
	#tag Event
		Sub Pressed()
		  // construct JSON and insert into Mongo database of selected site
		  
		  do
		    
		  loop until insertDB
		  
		  self.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cancelB
	#tag Event
		Sub Pressed()
		  self.Close()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events siteNameLabel
	#tag Event
		Sub Opening()
		  me.Bold = TRUE
		  
		  if app.mySite <> nil then
		    
		    me.text = app.mySite.Name.Uppercase
		    
		  end
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
