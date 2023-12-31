object Form1: TForm1
  Left = 498
  Top = 188
  ClientHeight = 640
  ClientWidth = 975
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 622
    Width = 975
    Height = 18
    Align = alBottom
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 621
    ExplicitWidth = 971
    object ProgressBar: TProgressBar
      Left = 825
      Top = 1
      Width = 149
      Height = 16
      Align = alRight
      TabOrder = 0
      Visible = False
      ExplicitLeft = 821
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 975
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 971
    DesignSize = (
      975
      33)
    object Edit1: TEdit
      Left = 246
      Top = 4
      Width = 728
      Height = 21
      TabStop = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      ReadOnly = True
      TabOrder = 3
    end
    object ReloadButton: TButton
      Left = 66
      Top = 4
      Width = 59
      Height = 24
      Caption = '&Reload'
      Enabled = False
      TabOrder = 0
      OnClick = ReloadButtonClick
    end
    object BackButton: TButton
      Left = 125
      Top = 4
      Width = 59
      Height = 24
      Caption = '&Back'
      Enabled = False
      TabOrder = 1
      OnClick = FwdBackClick
    end
    object FwdButton: TButton
      Left = 184
      Top = 4
      Width = 59
      Height = 24
      Caption = '&Forward'
      Enabled = False
      TabOrder = 2
      OnClick = FwdBackClick
    end
    object RepaintButton: TButton
      Left = 7
      Top = 4
      Width = 59
      Height = 24
      Caption = 'Re&paint'
      Enabled = False
      TabOrder = 4
      OnClick = RepaintButtonClick
    end
  end
  object Viewer: THtmlViewer
    Left = 0
    Top = 33
    Width = 975
    Height = 589
    BorderStyle = htSingle
    DefBackground = clWindow
    DefFontColor = clWindowText
    DefOverLinkColor = clFuchsia
    HistoryMaxCount = 6
    ImageCacheCount = 6
    NoSelect = False
    PrintMarginBottom = 2.000000000000000000
    PrintMarginLeft = 2.000000000000000000
    PrintMarginRight = 2.000000000000000000
    PrintMarginTop = 2.000000000000000000
    PrintScale = 1.000000000000000000
    QuirksMode = qmDetect
    Text = 'Hello Serif<pre>Hello Monospace</pre>'
    OnFormSubmit = SubmitEvent
    OnHistoryChange = HistoryChange
    OnHotSpotClick = HotSpotClick
    OnHotSpotCovered = HotSpotChange
    OnInclude = ViewerInclude
    OnMetaRefresh = MetaRefreshEvent
    OnObjectClick = ObjectClick
    OnPrintHTMLFooter = ViewerPrintHTMLFooter
    OnPrintHTMLHeader = ViewerPrintHTMLHeader
    OnProcessing = ProcessingHandler
    OnProgress = ViewerProgress
    OnRightClick = RightClick
    OnScript = ViewerScript
    OnSoundRequest = SoundRequest
    Align = alClient
    TabOrder = 2
    TabStop = True
    OnMouseMove = ViewerMouseMove
    ExplicitWidth = 971
    ExplicitHeight = 588
    object MediaPlayer: TMediaPlayer
      Left = 336
      Top = 40
      Width = 253
      Height = 30
      DoubleBuffered = True
      Visible = False
      ParentDoubleBuffered = False
      TabOrder = 1
      OnNotify = MediaPlayerNotify
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'htm'
    Filter = 'html files|*.htm;*.html|all files|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 321
    Top = 2
  end
  object MainMenu: TMainMenu
    Left = 171
    Top = 60
    object File1: TMenuItem
      Caption = '&File'
      object Open: TMenuItem
        Caption = '&Open'
        ShortCut = 114
        OnClick = OpenFileClick
      end
      object OpenTextFile: TMenuItem
        Caption = 'Open &Text File'
        OnClick = OpenTextFileClick
      end
      object OpenImageFile: TMenuItem
        Caption = 'Open &Image File'
        OnClick = OpenImageFileClick
      end
      object PrinterSetup: TMenuItem
        Caption = 'Printer Setup...'
        OnClick = PrinterSetupClick
      end
      object Printpreview: TMenuItem
        Caption = 'Print Pre&view...'
        Enabled = False
        OnClick = PrintpreviewClick
      end
      object Print1: TMenuItem
        Caption = '&Print...'
        Enabled = False
        OnClick = Print1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
        OnClick = Exit1Click
      end
    end
    object Edit2: TMenuItem
      Caption = '&Edit'
      OnClick = Edit2Click
      object Find1: TMenuItem
        Caption = '&Find'
        Enabled = False
        OnClick = Find1Click
      end
      object CopyItem: TMenuItem
        Caption = '&Copy'
        ShortCut = 16451
        OnClick = CopyItemClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object SelectAllItem: TMenuItem
        Caption = 'Select &All'
        Enabled = False
        OnClick = SelectAllItemClick
      end
    end
    object options1: TMenuItem
      Caption = '&Options'
      object ShowImages: TMenuItem
        Caption = '&Show images'
        OnClick = ShowImagesClick
      end
      object Fonts: TMenuItem
        Caption = 'Default &Font/Colors...'
        OnClick = FontsClick
      end
    end
    object HistoryMenuItem: TMenuItem
      Caption = '&History'
      Visible = False
    end
    object About1: TMenuItem
      Caption = '&About'
      OnClick = About1Click
    end
  end
  object PrintDialog: TPrintDialog
    FromPage = 1
    MinPage = 1
    MaxPage = 9999
    Options = [poPageNums]
    ToPage = 1
    Left = 378
    Top = 1
  end
  object FindDialog: TFindDialog
    Options = [frDown, frHideWholeWord, frDisableWholeWord]
    OnFind = FindDialogFind
    Left = 265
    Top = 65535
  end
  object PopupMenu: TPopupMenu
    Left = 432
    Top = 1
    object Viewimage: TMenuItem
      Caption = '&View image'
      OnClick = ViewimageClick
    end
    object CopyImageToClipboard: TMenuItem
      Caption = '&Copy image to clipboard'
      OnClick = CopyImageToClipboardClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object OpenInNewWindow: TMenuItem
      Caption = '&Open in new window'
      OnClick = OpenInNewWindowClick
    end
  end
  object MetaTimer: TTimer
    Enabled = False
    OnTimer = MetaTimerTimer
    Left = 242
    Top = 75
  end
  object Timer1: TTimer
    Interval = 200
    OnTimer = Timer1Timer
    Left = 291
    Top = 71
  end
  object PrinterSetupDialog: TPrinterSetupDialog
    Left = 512
  end
end
