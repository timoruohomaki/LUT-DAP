#tag DesktopWindow
Begin DesktopWindow MainWin
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   768
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   ""
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "DIS Dental EHR"
   Type            =   0
   Visible         =   True
   Width           =   908
   Begin DesktopPagePanel PagePanel1
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   768
      Index           =   -2147483648
      Left            =   114
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelCount      =   7
      Panels          =   ""
      Scope           =   0
      SelectedPanelIndex=   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Value           =   1
      Visible         =   True
      Width           =   792
      Begin DesktopLabel Label1
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   134
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Patient Name:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   20
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopTextField TextField1
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
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   246
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   20
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   240
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
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   519
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Patient ID:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   20
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopTextField TextField2
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
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   631
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   True
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   20
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   160
      End
      Begin DesktopButton showPatientIDB
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Show"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   792
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   20
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
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
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   134
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Chart Notes:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   287
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
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   134
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Appointment:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   78
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopDateControl DateControl1
         AllowFocusRing  =   True
         AutoDeactivate  =   True
         Checked         =   False
         DateFormat      =   0
         Day             =   0
         DropDownIcon    =   0
         DropDownIconDM  =   0
         EmptyDates      =   False
         Enabled         =   True
         HasBorder       =   True
         Height          =   23
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Left            =   246
         LinuxDropDownMode=   True
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
         Month           =   0
         OSXDropDownMode =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   78
         Visible         =   True
         Width           =   115
         WinCustomDownMode=   False
         WinFontBold     =   False
         WinTextFont     =   "System"
         WinTextSize     =   0.0
         WinTextUnit     =   0
         Year            =   0
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
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   373
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "From:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   78
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   49
      End
      Begin DesktopTimeControl TimeControl1
         AutoDeactivate  =   True
         Enabled         =   True
         HasBorder       =   True
         Height          =   23
         Hours           =   0
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Left            =   434
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
         TabIndex        =   9
         TabPanelIndex   =   2
         TabStop         =   True
         TimeFormat      =   0
         Tooltip         =   ""
         Top             =   78
         Visible         =   True
         Width           =   100
         WinFontBold     =   False
         WinTextFont     =   "System"
         WinTextSize     =   0.0
         WinTextUnit     =   0
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
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   546
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   10
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "To:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   78
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   49
      End
      Begin DesktopTimeControl TimeControl2
         AutoDeactivate  =   True
         Enabled         =   True
         HasBorder       =   True
         Height          =   23
         Hours           =   0
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Left            =   587
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
         TabIndex        =   11
         TabPanelIndex   =   2
         TabStop         =   True
         TimeFormat      =   0
         Tooltip         =   ""
         Top             =   78
         Visible         =   True
         Width           =   100
         WinFontBold     =   False
         WinTextFont     =   "System"
         WinTextSize     =   0.0
         WinTextUnit     =   0
      End
      Begin DesktopTextArea chartNotesTA
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
         Height          =   172
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   246
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   12
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   290
         Transparent     =   False
         Underline       =   False
         UnicodeMode     =   1
         ValidationMask  =   ""
         Visible         =   True
         Width           =   609
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
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   134
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   13
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Dental Chart:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   113
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopCanvas dentalCanvas
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   1622501375
         Enabled         =   True
         Height          =   160
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Left            =   246
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   14
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   113
         Transparent     =   True
         Visible         =   True
         Width           =   545
      End
      Begin DesktopLabel Label8
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   134
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   15
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Procedures:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   474
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopListBox procedureList
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   4
         ColumnWidths    =   "15%,15%,20%,50%"
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
         Height          =   200
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         InitialValue    =   "Date	Status	Code	Description"
         Italic          =   False
         Left            =   246
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   16
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   474
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   609
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopCheckBox CheckBox1
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Show history"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   134
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   17
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   654
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   100
      End
      Begin DesktopLabel Label9
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   134
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   18
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Allergies:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   44
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopTextField TextField3
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
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   246
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   True
         Scope           =   0
         TabIndex        =   19
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   44
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   240
      End
      Begin DesktopLabel Label10
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   519
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   20
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Medical Alerts:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   44
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopTextField TextField4
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
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   631
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   True
         Scope           =   0
         TabIndex        =   21
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   44
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   240
      End
      Begin CalendarView CalendarView1
         AdaptWeeksPerMonth=   True
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Animate         =   True
         Backdrop        =   0
         Border          =   True
         ColorWeekend    =   False
         CreateWithDrag  =   False
         DayEndHour      =   18.0
         DayStartHour    =   8.0
         DisableScroll   =   False
         DisplayWeeknumber=   False
         DoubleBuffer    =   False
         DragEvents      =   False
         Enabled         =   True
         FilterEvents    =   False
         FirstDayOfWeek  =   ""
         ForceAM_PM      =   False
         Freeze          =   False
         Height          =   632
         HelpTagFormat   =   ""
         HighlightLockedEvents=   False
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Left            =   134
         LockBottom      =   True
         LockDayEventsHeight=   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         minHGap         =   0
         minHourHeight   =   0
         minVGap         =   0
         Scope           =   0
         ScrollPosition  =   0.0
         StyleType       =   0
         TabIndex        =   0
         TabPanelIndex   =   6
         TabStop         =   True
         TextFont        =   ""
         Tooltip         =   ""
         Top             =   82
         Transparent     =   True
         TransparentBackground=   False
         ViewDays        =   5
         ViewType        =   2
         Visible         =   True
         VisibleHours    =   0
         WeekHeaderTextFormat=   ""
         Width           =   752
         YearHeatMap     =   False
         YearMonthsAmount=   0
         YearMultipleEvents=   False
      End
      Begin DesktopHTMLViewer todayViewer
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   748
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Left            =   114
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Renderer        =   0
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   0
         Visible         =   True
         Width           =   792
      End
      Begin DesktopLabel Label13
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   134
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   22
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Prescriptions:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   686
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopListBox prescrLB
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   3
         ColumnWidths    =   "20%,30%,40%"
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
         Height          =   62
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         InitialValue    =   "Date	Medication	Related Procedure"
         Italic          =   False
         Left            =   246
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   23
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   684
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   609
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopListBox patientsLB
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   True
         AllowRowDragging=   False
         AllowRowReordering=   True
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
         Height          =   632
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         InitialValue    =   "First Name	Last Name	Phone"
         Italic          =   False
         Left            =   134
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   ""
         Top             =   82
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   752
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopLabel Label14
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   134
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "Search:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   50
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopLabel Label15
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   134
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   "PRACTITIONERS"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   20
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   107
      End
      Begin DesktopSearchControl practitionersSearchC
         AllowFocusRing  =   True
         AutoDeactivate  =   True
         Enabled         =   True
         HasCancelButton =   True
         HasMenu         =   False
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Left            =   253
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacBorderStyle  =   0
         PlaceHolderText =   ""
         Scope           =   0
         SendSearchStringImmediately=   False
         SendWholeSearchString=   False
         TabIndex        =   1
         TabPanelIndex   =   7
         TabStop         =   True
         Text            =   ""
         Tooltip         =   ""
         Top             =   20
         Visible         =   True
         Width           =   160
      End
      Begin DesktopListBox practitionerList
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   5
         ColumnWidths    =   "20%,20%,20%,20%,20%"
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
         Height          =   471
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         InitialValue    =   "Firstname	Lastname	Qualification	Email	Phone"
         Italic          =   False
         Left            =   134
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   7
         TabStop         =   True
         Tooltip         =   ""
         Top             =   52
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   752
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopGroupBox GroupBox1
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Information"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   197
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   134
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   7
         TabStop         =   True
         Tooltip         =   ""
         Top             =   535
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   752
         Begin DesktopImageViewer facePhotoViewer
            Active          =   False
            AllowAutoDeactivate=   True
            AllowTabStop    =   True
            Enabled         =   True
            Height          =   150
            Image           =   0
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Left            =   209
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            PanelIndex      =   0
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   7
            Tooltip         =   ""
            Top             =   562
            Transparent     =   False
            Visible         =   True
            Width           =   150
            _mIndex         =   0
            _mInitialParent =   ""
            _mName          =   ""
            _mPanelIndex    =   0
         End
         Begin DesktopLabel Label16
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
            Left            =   371
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   7
            TabStop         =   True
            Text            =   "First name:"
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   571
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin DesktopLabel Label17
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
            Left            =   371
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   7
            TabStop         =   True
            Text            =   "Last name:"
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   603
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin DesktopLabel Label18
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
            Left            =   371
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   7
            TabStop         =   True
            Text            =   "Qualifications:"
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   635
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin DesktopLabel Label19
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
            Left            =   371
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   7
            TabStop         =   True
            Text            =   "Phone:"
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   667
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
         Begin DesktopLabel Label20
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
            Left            =   371
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   7
            TabStop         =   True
            Text            =   "Email:"
            TextAlignment   =   0
            TextColor       =   &c000000
            Tooltip         =   ""
            Top             =   699
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   100
         End
      End
      Begin DesktopSearchControl patientSearchC
         AllowFocusRing  =   True
         AutoDeactivate  =   True
         Enabled         =   True
         HasCancelButton =   True
         HasMenu         =   False
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Left            =   201
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
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   ""
         Tooltip         =   ""
         Top             =   50
         Visible         =   True
         Width           =   160
      End
      Begin DesktopCheckBox showOnlyScheduled
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Show only patients with scheduled appointments"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   596
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   ""
         Top             =   50
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   310
      End
      Begin DesktopButton thisWeekB
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "This Week"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   52
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   684
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   6
         TabStop         =   True
         Tooltip         =   ""
         Top             =   20
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin DesktopButton nextWeekB
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Next Week"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   52
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   796
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   6
         TabStop         =   True
         Tooltip         =   ""
         Top             =   20
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   90
      End
      Begin DesktopButton prevWeekB
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Previous Week"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   52
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   582
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   6
         TabStop         =   True
         Tooltip         =   ""
         Top             =   20
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   90
      End
      Begin DesktopLabel Label21
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   134
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   6
         TabStop         =   True
         Text            =   "Practitioner:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   20
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   263
      End
   End
   Begin DesktopBevelButton pageSelectBB
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowTabStop    =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   1
      Caption         =   "Patients"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "Consolas"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   55
      Icon            =   0
      IconAlignment   =   0
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   2
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   122
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   110
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopBevelButton pageSelectBB
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowTabStop    =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   1
      Caption         =   "Messaging"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "Consolas"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   55
      Icon            =   0
      IconAlignment   =   0
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   3
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   178
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   110
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopBevelButton pageSelectBB
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowTabStop    =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   1
      Caption         =   "Inventory"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "Consolas"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   55
      Icon            =   0
      IconAlignment   =   0
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   4
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   234
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   110
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopBevelButton pageSelectBB
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowTabStop    =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   1
      Caption         =   "Schedule"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "Consolas"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   55
      Icon            =   0
      IconAlignment   =   0
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   5
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   290
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   110
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopBevelButton logoutBB
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowTabStop    =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   "Logout"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "Consolas"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   55
      Icon            =   0
      IconAlignment   =   0
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   713
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   110
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopBevelButton pageSelectBB
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowTabStop    =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   1
      Caption         =   "Today"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "Consolas"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   55
      Icon            =   0
      IconAlignment   =   0
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   110
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopLabel Label11
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "User:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   630
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   81
   End
   Begin DesktopLabel loggedNameLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
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
      Top             =   649
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopBevelButton pageSelectBB
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowTabStop    =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   1
      Caption         =   "Charts"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "Consolas"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   55
      Icon            =   0
      IconAlignment   =   0
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   67
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   110
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopBevelButton pageSelectBB
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowTabStop    =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   1
      Caption         =   "Team"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "Consolas"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   55
      Icon            =   0
      IconAlignment   =   0
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   6
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   346
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   110
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin mainToolbar mainToolbar1
      Enabled         =   True
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
      Visible         =   True
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
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   681
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  loginWin.show()
		  
		  
		  // CONNECT CODESERVER
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function appendProcedure(code as String, desc as String) As Boolean
		  
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub getMongoRecords()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getPatientByGUID(key as string) As PatientObject
		  // get single patient by key from MongoDB collection
		  // Mongo query parameters are set as two JSON objects: filter (e.g. search key) and options (e.g. limit and sort order)
		  
		  var muri as New MongoURIMBS(App.kMongoDbURI.Replace("{userpwd}",mongoLogin(100)))
		  
		  dbClient = New MongoClientMBS(muri)
		  
		  Try
		    
		    if dbClient <> nil then
		      
		      dbDatabase = dbClient.Database("ehr")
		      
		      if dbDatabase <> nil then
		        
		        dbCollections() = dbDatabase.CollectionNames
		        
		        dbPatientCollection = dbDatabase.Collection("patients")
		        
		        var Filter as new JSONItem
		        
		        var sortOrder as new JSONItem
		        
		        var options as new JSONItem
		        
		        options.Value("limit") = 20
		        options.Value("sort") = sortOrder
		        
		        // running the actual Mongo query
		        
		        dbPatientCursor = dbPatientCollection.Find(filter.toString, options.toString)
		        
		        patientsLB.RemoveAllRows
		        
		        if dbPatientCursor <> nil then
		          
		          var Record as string
		          
		          // browse through result set and form PatientObject
		          
		          while dbPatientCursor.NextRecord(Record)
		            
		            var patients() as Variant
		            
		            patients = ParseJSON("[" + Record + "]")
		            
		            for each d As Dictionary in patients
		              
		              var p as New PatientObject
		              
		              do
		              loop until p.fromDict(d)
		              
		              return p
		              
		            Next
		            
		          wend
		          
		        end
		        
		        dbPatientCursor = nil
		        
		      else
		        
		        MessageBox "dbDatabase is nil, shouldn't be."
		        
		      end
		      
		    end
		    
		    // error handling
		    
		  Catch err as MongoExceptionMBS
		    
		    MessageBox "Error while contacting database: " + EndOfLine + err.Message
		    
		  End Try
		  
		  
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getPatients(key as string) As boolean
		  var muri as New MongoURIMBS(App.kMongoDbURI.Replace("{userpwd}",mongoLogin(100)))
		  
		  dbClient = New MongoClientMBS(muri)
		  
		  Try
		    
		    if dbClient <> nil then
		      
		      dbDatabase = dbClient.Database("ehr")
		      
		      if dbDatabase <> nil then
		        
		        dbCollections() = dbDatabase.CollectionNames
		        
		        dbPatientCollection = dbDatabase.Collection("patients")
		        
		        var Filter as new JSONItem
		        
		        var sortOrder as new JSONItem
		        
		        var options as new JSONItem
		        
		        options.Value("limit") = 50
		        options.Value("sort") = sortOrder
		        
		        if key.length > 0 then
		          filter.Value("lastName") = key
		        end
		        
		        dbPatientCursor = dbPatientCollection.Find(filter.toString, options.toString)
		        
		        patientsLB.RemoveAllRows
		        
		        if dbPatientCursor <> nil then
		          
		          var Record as string
		          
		          while dbPatientCursor.NextRecord(Record)
		            
		            var patients() as Variant
		            
		            patients = ParseJSON("[" + Record + "]")
		            
		            var value as String
		            
		            for each d As Dictionary in patients
		              
		              patientsLB.addrow(d.Value("firstName").StringValue, d.Value("lastName").StringValue, d.Value("primaryPhone").StringValue)
		              
		              patientsLB.RowTagAt(patientsLB.LastAddedRowIndex) = d
		              
		            Next
		            
		          wend
		          
		        end
		        
		        dbPatientCursor = nil
		        
		      else
		        
		        MessageBox "dbDatabase is nil, shouldn't be."
		        
		      end
		      
		    end
		    
		  Catch err as MongoExceptionMBS
		    
		    MessageBox "Error while contacting database: " + EndOfLine + err.Message
		    
		  End Try
		  
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getPractitioners(key as string) As boolean
		  var muri as New MongoURIMBS(App.kMongoDbURI.Replace("{userpwd}",mongoLogin(100)))
		  
		  dbClient = New MongoClientMBS(muri)
		  
		  Try
		    
		    if dbClient <> nil then
		      
		      dbDatabase = dbClient.Database("ehr")
		      
		      if dbDatabase <> nil then
		        
		        dbCollections() = dbDatabase.CollectionNames
		        
		        dbPractitionerCollection = dbDatabase.Collection("practitioners")
		        
		        var Filter as new JSONItem
		        
		        var sortOrder as new JSONItem
		        
		        var options as new JSONItem
		        
		        options.Value("limit") = 50
		        options.Value("sort") = sortOrder
		        
		        if key.Length > 0 then
		          filter.Value("lastName") = key
		        end
		        
		        
		        dbPractitionerCursor = dbPractitionerCollection.Find(filter.toString, options.toString)
		        
		        practitionerList.RemoveAllRows
		        
		        if dbPractitionerCursor <> nil then
		          
		          var Record as string
		          
		          while dbPractitionerCursor.NextRecord(Record)
		            
		            var practitioners() as Variant
		            
		            practitioners = ParseJSON("[" + Record + "]")
		            
		            var value as String
		            
		            for each d As Dictionary in practitioners
		              
		              practitionerList.addrow(d.Value("firstName").StringValue, d.Value("lastName").StringValue, d.Value("workRole").StringValue, d.Value("personalEmail").StringValue, d.Value("primaryPhone").StringValue)
		              
		              if practitionerList.LastRowIndex>-1 then
		                practitionerList.RowTagAt(practitionerList.LastAddedRowIndex) = d
		              end
		              
		            Next
		            
		          wend
		          
		        end
		        
		        dbPractitionerCursor = nil
		        
		      else
		        
		        MessageBox "dbDatabase is nil, shouldn't be."
		        
		      end
		      
		    end
		    
		  Catch err as MongoExceptionMBS
		    
		    MessageBox "Error while contacting database: " + EndOfLine + err.Message
		    
		  End Try
		  
		  
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub openMongoCollection(name as string)
		  if name.len > 0 then
		    
		    dbPatientCollection = dbDatabase.Collection("patients")
		    
		    getMongoRecords()
		    
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub openMongoDB(name as string)
		  if name.Len > 0 then
		    
		    dbDatabase = dbClient.Database(name)
		    
		    if dbDatabase <> nil then
		      
		      dbCollections() = dbDatabase.CollectionNames
		      
		      openMongoCollection("patients")
		      
		    else
		      
		      MessageBox "dbDatabase is nil, shouldn't be."
		      
		    end
		    
		  else
		    
		    MessageBox "Database name missing."
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setSiteName()
		  if app.mySite <> nil then
		    
		    siteNameLabel.bold = TRUE
		    siteNameLabel.text = app.mySite.Name.Uppercase
		    
		  end
		  
		  if app.myPractitioner <> nil then
		    
		    loggedNameLabel.Text = app.myPractitioner.firstName
		    
		  end
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		dbAppointmentCollection As MongoCollectionMBS
	#tag EndProperty

	#tag Property, Flags = &h0
		dbAppointmentCursor As MongoCursorMBS
	#tag EndProperty

	#tag Property, Flags = &h0
		dbClient As MongoClientMBS
	#tag EndProperty

	#tag Property, Flags = &h0
		dbCollections() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		dbDatabase As MongoDatabaseMBS
	#tag EndProperty

	#tag Property, Flags = &h0
		dbPatientCollection As MongoCollectionMBS
	#tag EndProperty

	#tag Property, Flags = &h0
		dbPatientCursor As MongoCursorMBS
	#tag EndProperty

	#tag Property, Flags = &h0
		dbPractitionerCollection As MongoCollectionMBS
	#tag EndProperty

	#tag Property, Flags = &h0
		dbPractitionerCursor As MongoCursorMBS
	#tag EndProperty

	#tag Property, Flags = &h0
		myPatient As PatientObject
	#tag EndProperty


#tag EndWindowCode

#tag Events procedureList
	#tag Event
		Function ConstructContextualMenu(base As DesktopMenuItem, x As Integer, y As Integer) As Boolean
		  base.AddMenu(New MenuItem("Add Procedure"))
		  base.AddMenu(New MenuItem("Edit Procedure"))
		  base.AddMenu(New MenuItem(MenuItem.TextSeparator))
		  base.AddMenu(New MenuItem("Delete Procedure"))
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuItemSelected(selectedItem As DesktopMenuItem) As Boolean
		  if selectedItem <> Nil then 
		    
		    SELECT CASE selectedItem.Text
		      
		    CASE "Add Procedure"
		      
		      ProcedureWin.Show()
		      
		    CASE "Edit Procedure"
		      
		      
		      if procedureList.SelectedRowIndex > -1 then
		        if procedureList.RowTagAt(procedureList.SelectedRowIndex) <> nil then
		          
		          ProcedureWin.Show()
		          ProcedureWin.OpenWith(procedureList.RowTagAt(procedureList.SelectedRowIndex))
		          
		        end
		      else
		        
		        MessageBox "Select procedure from the list first."
		        
		      end
		      
		      
		    CASE "Delete Procedure"
		      
		      if procedureList.SelectedRowIndex > -1 then
		        
		        procedureList.RemoveRowAt(procedureList.SelectedRowIndex)
		        
		      else
		        
		        MessageBox "Select procedure from the list first."
		        
		      end
		      
		    END SELECT
		    
		  end
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarView1
	#tag Event
		Sub Open()
		  me.MyStyle.MFirstDayOfMonthBold = False
		  
		  me.WeekHeaderTextFormat = "" 'l d, F"
		  
		  me.FirstDayOfWeek = 1
		  
		  me.ViewType = me.TypeWeek
		  
		  me.HighlightLockedEvents = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events todayViewer
	#tag Event
		Sub Opening()
		  If Me.IsAvailable Then
		    Var agent As String
		    agent = "DIS Dental EHR HTML Viewer"
		    Me.UserAgent = agent
		  End If
		  
		  me.LoadURL("https://www.hel.fi/en/health-and-social-services")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events patientsLB
	#tag Event
		Function ConstructContextualMenu(base As DesktopMenuItem, x As Integer, y As Integer) As Boolean
		  base.AddMenu(New MenuItem("Add Appointment"))
		  base.AddMenu(New MenuItem("-"))
		  base.AddMenu(New MenuItem("Mark for Verification"))
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuItemSelected(selectedItem As DesktopMenuItem) As Boolean
		  if selectedItem <> Nil then 
		    
		    SELECT CASE selectedItem.Text
		      
		    CASE "Add Appointment"
		      
		      if me.RowTagAt(me.SelectedRowIndex) <> nil then
		        
		        if me.RowTagAt(me.SelectedRowIndex) IsA Dictionary then
		          
		          var p as PatientObject
		          
		          p = New PatientObject
		          
		          do
		          loop until p.fromDict(me.RowTagAt(me.SelectedRowIndex))
		          
		          newAppointmentWin.Show()
		          newAppointmentWin.openWith(p)
		          
		        else
		          
		          MessageBox "[DEBUG] Not dictionary"
		          
		        end
		        
		      end
		      
		      
		    CASE "Mark for Verification"
		      
		      // TODO: add attribute for masterdata team to verify information
		      
		      
		    END SELECT
		    
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Label15
	#tag Event
		Sub Opening()
		  me.Bold = TRUE
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events practitionersSearchC
	#tag Event
		Sub Search()
		  do
		    
		  loop until getPractitioners(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events patientSearchC
	#tag Event
		Sub Search()
		  do
		    
		  loop until getPatients(me.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pageSelectBB
	#tag Event
		Sub Pressed(index as Integer)
		  PagePanel1.SelectedPanelIndex = me.Index
		  
		  for i as integer = 0 to 6
		    
		    if i <> me.Index then 
		      pageSelectBB(i).Value = false 
		    end
		    
		  next
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events logoutBB
	#tag Event
		Sub Pressed()
		  Quit()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events loggedNameLabel
	#tag Event
		Sub Opening()
		  me.Bold = true
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events mainToolbar1
	#tag Event
		Sub Pressed(item As DesktopToolbarItem)
		  SELECT CASE item.Name
		    
		  CASE "newChartTI"
		    
		    AppointmentsTodayWin.Show
		    
		  CASE "newAppointmentTI"
		    
		    newAppointmentWin.Show()
		    
		  CASE "printTI"
		    
		    MessageBox "Printing..."
		    
		  CASE "logoutTI"
		    
		    Quit()
		    
		  END SELECT
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events siteNameLabel
	#tag Event
		Sub Opening()
		  
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
