object Form_Main: TForm_Main
  Left = 213
  Top = 0
  Width = 1141
  Height = 783
  Caption = 'Kal Online World Editor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GLSceneViewer: TGLSceneViewer
    Left = 261
    Top = 33
    Width = 864
    Height = 692
    Camera = GLCamera
    FieldOfView = 163.554367065429700000
    Align = alClient
    OnMouseDown = GLSceneViewerMouseDown
    OnMouseMove = GLSceneViewerMouseMove
  end
  object Panel_General: TPanel
    Left = 0
    Top = 33
    Width = 261
    Height = 692
    Align = alLeft
    TabOrder = 1
    DesignSize = (
      261
      692)
    object Image_General: TImage
      Left = 1
      Top = 1
      Width = 259
      Height = 256
      Hint = 'Test'
      Align = alTop
      ParentShowHint = False
      ShowHint = True
    end
    object GroupBox_KCMSetHeight: TGroupBox
      Left = 2
      Top = 415
      Width = 257
      Height = 282
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Kal Client Map Set Height'
      TabOrder = 4
      Visible = False
      DesignSize = (
        257
        282)
      object Label_KCMSetHeight_diameter: TLabel
        Left = 8
        Top = 20
        Width = 68
        Height = 13
        Caption = 'Area diameter:'
      end
      object GroupBox_KCMSetHeight_Height: TGroupBox
        Left = 8
        Top = 72
        Width = 241
        Height = 203
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Height'
        TabOrder = 0
        object TrackBar_KCMSetHeight_Height: TTrackBar
          Left = 8
          Top = 20
          Width = 225
          Height = 45
          Max = 128
          Frequency = 2
          Position = 60
          TabOrder = 0
          OnChange = TrackBar_KCMSetHeight_HeightChange
        end
        object Edit_KCMSetHeight_Height: TEdit
          Left = 16
          Top = 100
          Width = 121
          Height = 21
          Enabled = False
          TabOrder = 1
        end
        object TrackBar_KCMSetHeight_Height2: TTrackBar
          Left = 8
          Top = 52
          Width = 225
          Height = 45
          Max = 128
          Frequency = 2
          Position = 60
          TabOrder = 2
          OnChange = TrackBar_KCMSetHeight_HeightChange
        end
      end
      object TrackBar_KCMSetHeight_Diameter: TTrackBar
        Left = 8
        Top = 36
        Width = 225
        Height = 37
        Max = 50
        Min = 2
        Position = 5
        TabOrder = 1
        OnChange = TrackBar_DiameterChange
      end
    end
    object GroupBox_KCMFlatten: TGroupBox
      Left = 2
      Top = 415
      Width = 257
      Height = 282
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Kal Client Map Flatten'
      TabOrder = 5
      Visible = False
      object Label_KCMFlatten_Diameter: TLabel
        Left = 8
        Top = 20
        Width = 68
        Height = 13
        Caption = 'Area diameter:'
      end
      object TrackBar_KCMFlatten_Diameter: TTrackBar
        Left = 8
        Top = 36
        Width = 225
        Height = 45
        Max = 50
        Min = 2
        Position = 5
        TabOrder = 0
        OnChange = TrackBar_DiameterChange
      end
    end
    object GroupBox_KCMTexturePaint: TGroupBox
      Left = 2
      Top = 415
      Width = 257
      Height = 282
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Kal Client Map Set Height'
      TabOrder = 6
      Visible = False
      object Label_KCMTexturePaint_TextureMap: TLabel
        Left = 8
        Top = 16
        Width = 224
        Height = 13
        Caption = 'Please select the Texture map you want to edit:'
      end
      object Image_KCMTextuePaint_BrushPreview: TImage
        Left = 136
        Top = 32
        Width = 100
        Height = 100
        Proportional = True
        Stretch = True
      end
      object Label_KCMTexturePaint_OuterCicle: TLabel
        Left = 8
        Top = 132
        Width = 103
        Height = 13
        Caption = '(Outer) Cicle Diameter'
      end
      object Label_KCMTexturePaint_OuterDiameter: TLabel
        Left = 8
        Top = 172
        Width = 69
        Height = 13
        Caption = 'Inner Diameter'
      end
      object Label_KCMTexturePaint_Intensity: TLabel
        Left = 8
        Top = 212
        Width = 42
        Height = 13
        Caption = 'Intensity:'
      end
      object ComboBox_TextureMap: TComboBox
        Left = 16
        Top = 32
        Width = 113
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnClick = ComboBox_TextureMapClick
      end
      object TrackBar_KCMTexturePaint_OuterDiameter: TTrackBar
        Left = 8
        Top = 144
        Width = 233
        Height = 26
        Max = 25
        Position = 25
        TabOrder = 1
        OnChange = TrackBar_KCMTexturePaint_OuterDiameterChange
      end
      object TrackBar_KCMTexturePaint_InnerDiameter: TTrackBar
        Left = 8
        Top = 184
        Width = 233
        Height = 26
        Max = 25
        TabOrder = 2
        OnChange = TrackBar_KCMTexturePaint_InnerDiameterChange
      end
      object TrackBar_KCMTexturePaint_Intensity: TTrackBar
        Left = 8
        Top = 224
        Width = 233
        Height = 33
        Max = 25
        Position = 25
        TabOrder = 3
        OnChange = TrackBar_KCMTexturePaint_IntensityChange
      end
      object RadioButton_KCMTexturPaint_Whiten: TRadioButton
        Left = 16
        Top = 56
        Width = 113
        Height = 17
        Caption = 'Paint ( Whiten )'
        Checked = True
        TabOrder = 4
        TabStop = True
      end
      object RadioButton_KCMTexturPaint_Darken: TRadioButton
        Left = 16
        Top = 74
        Width = 113
        Height = 17
        Caption = 'Disolve ( Darken )'
        TabOrder = 5
      end
    end
    object GroupBox_OPL: TGroupBox
      Left = 2
      Top = 415
      Width = 257
      Height = 282
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'OPL - General'
      TabOrder = 7
      Visible = False
      object GroupBox_OPL_Position: TGroupBox
        Left = 8
        Top = 56
        Width = 241
        Height = 113
        Caption = 'Position  (Press to minimize)'
        TabOrder = 0
        OnClick = GroupBox_OPL_PositionClick
        object Label_OPL_PosX: TLabel
          Left = 8
          Top = 42
          Width = 7
          Height = 13
          Caption = 'X'
        end
        object Label_OPL_PosY: TLabel
          Left = 8
          Top = 66
          Width = 7
          Height = 13
          Caption = 'Y'
        end
        object Label_OPL_PosZ: TLabel
          Left = 8
          Top = 90
          Width = 7
          Height = 13
          Caption = 'Z'
        end
        object CheckBox_OPL_Position_STM: TCheckBox
          Left = 8
          Top = 16
          Width = 161
          Height = 17
          Caption = 'Snap to map ( auto height )'
          TabOrder = 0
          OnClick = CheckBox_OPL_Position_STMClick
        end
        object Edit_OPL_PosX: TEdit
          Left = 24
          Top = 40
          Width = 190
          Height = 21
          TabOrder = 1
          Text = '0'
          OnChange = OPLChange
        end
        object Edit_OPL_PosY: TEdit
          Left = 24
          Top = 64
          Width = 190
          Height = 21
          TabOrder = 2
          Text = '0'
          OnChange = OPLChange
        end
        object Edit_OPL_PosZ: TEdit
          Left = 24
          Top = 88
          Width = 190
          Height = 21
          TabOrder = 3
          Text = '0'
          OnChange = OPLChange
        end
      end
      object GroupBox_OPL_Model: TGroupBox
        Left = 8
        Top = 12
        Width = 241
        Height = 45
        Caption = 'Model (Press to minimize)'
        TabOrder = 1
        OnClick = GroupBox_OPL_ModelClick
        object Edit_OPL_Model: TEdit
          Left = 8
          Top = 16
          Width = 193
          Height = 21
          TabOrder = 0
          OnChange = OPLChange
          OnKeyPress = Edit_OPL_ModelKeyPress
        end
        object Button_OPL_BrowseModel: TButton
          Left = 200
          Top = 14
          Width = 35
          Height = 25
          Caption = '...'
          TabOrder = 1
          OnClick = Button_OPL_BrowseModelClick
        end
      end
      object GroupBox_OPL_Rotation: TGroupBox
        Left = 8
        Top = 168
        Width = 241
        Height = 113
        Caption = 'Rotation (Press to minimize)'
        TabOrder = 2
        OnClick = GroupBox_OPL_RotationClick
        object Label_OPL_RotationX: TLabel
          Left = 8
          Top = 18
          Width = 7
          Height = 13
          Caption = 'X'
        end
        object Label_OPL_RotationY: TLabel
          Left = 8
          Top = 42
          Width = 7
          Height = 13
          Caption = 'Y'
        end
        object Label_OPL_RotationZ: TLabel
          Left = 8
          Top = 66
          Width = 7
          Height = 13
          Caption = 'Z'
        end
        object Label_OPL_RotationW: TLabel
          Left = 8
          Top = 90
          Width = 11
          Height = 13
          Caption = 'W'
        end
        object Edit_OPL_RotationW: TEdit
          Left = 40
          Top = 88
          Width = 174
          Height = 21
          Enabled = False
          TabOrder = 0
          Text = '0'
          OnChange = OPLChange
        end
        object RadioButton_OPLRotation_Z: TRadioButton
          Left = 24
          Top = 66
          Width = 14
          Height = 17
          Caption = 'RadioButton_OPLRotation_X'
          TabOrder = 1
          OnClick = RadioButton_OPLRotationClick
        end
        object Edit_OPL_RotationZ: TEdit
          Left = 40
          Top = 64
          Width = 174
          Height = 21
          Enabled = False
          TabOrder = 2
          Text = '0'
          OnChange = OPLChange
        end
        object RadioButton_OPLRotation_Y: TRadioButton
          Left = 24
          Top = 42
          Width = 14
          Height = 17
          Caption = 'RadioButton_OPLRotation_X'
          Checked = True
          TabOrder = 3
          TabStop = True
          OnClick = RadioButton_OPLRotationClick
        end
        object Edit_OPL_RotationY: TEdit
          Left = 40
          Top = 40
          Width = 174
          Height = 21
          TabOrder = 4
          Text = '0'
          OnChange = OPLChange
        end
        object RadioButton_OPLRotation_X: TRadioButton
          Left = 24
          Top = 16
          Width = 14
          Height = 19
          Caption = 'RadioButton_OPLRotation_X'
          TabOrder = 5
          OnClick = RadioButton_OPLRotationClick
        end
        object Edit_OPL_RotationX: TEdit
          Left = 40
          Top = 16
          Width = 174
          Height = 21
          Enabled = False
          TabOrder = 6
          Text = '0'
          OnChange = OPLChange
        end
        object CheckBox_OPLGeneral_RotateW: TCheckBox
          Left = 24
          Top = 90
          Width = 17
          Height = 17
          Caption = 'CheckBox_OPLGeneral_RotateW'
          TabOrder = 7
          OnClick = CheckBox_OPLGeneral_RotateWClick
        end
      end
      object GroupBox_OPL_Scale: TGroupBox
        Left = 8
        Top = 280
        Width = 241
        Height = 89
        Caption = 'Scale (Press to minimize)'
        TabOrder = 3
        OnClick = GroupBox_OPL_ScaleClick
        object Label_OPL_ScaleX: TLabel
          Left = 8
          Top = 18
          Width = 7
          Height = 13
          Caption = 'X'
        end
        object Label_OPL_ScaleY: TLabel
          Left = 8
          Top = 42
          Width = 7
          Height = 13
          Caption = 'Y'
        end
        object Label_OPL_ScaleZ: TLabel
          Left = 8
          Top = 66
          Width = 7
          Height = 13
          Caption = 'Z'
        end
        object Edit_OPL_ScaleX: TEdit
          Left = 24
          Top = 16
          Width = 190
          Height = 21
          TabOrder = 0
          Text = '0'
          OnChange = OPLChange
        end
        object Edit_OPL_ScaleY: TEdit
          Left = 24
          Top = 40
          Width = 190
          Height = 21
          TabOrder = 1
          Text = '0'
          OnChange = OPLChange
        end
        object Edit_OPL_ScaleZ: TEdit
          Left = 24
          Top = 64
          Width = 190
          Height = 21
          TabOrder = 2
          Text = '0'
          OnChange = OPLChange
        end
      end
      object Button_OPLGeneral_Save: TButton
        Left = 8
        Top = 376
        Width = 241
        Height = 25
        Caption = 'Save and Apply'
        TabOrder = 4
        OnClick = Button_OPLGeneral_SaveClick
      end
    end
    object GroupBox_KCMGrassPaint: TGroupBox
      Left = 2
      Top = 415
      Width = 257
      Height = 282
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'KCM - GrassPaint'
      TabOrder = 9
      Visible = False
      object Label_KCMGrassPaint_Type: TLabel
        Left = 8
        Top = 100
        Width = 123
        Height = 13
        Caption = 'Type ( from 0 to selected )'
      end
      object Label_KCMGrassPaint_Intensity: TLabel
        Left = 8
        Top = 164
        Width = 39
        Height = 13
        Caption = 'Intensity'
      end
      object Label_KCMGrassPaint_AreaDiameter: TLabel
        Left = 8
        Top = 36
        Width = 67
        Height = 13
        Caption = 'Area Diameter'
      end
      object Trackbar_KCMGrassPaint_Type: TTrackBar
        Left = 8
        Top = 116
        Width = 225
        Height = 45
        Max = 50
        Min = 2
        Position = 5
        TabOrder = 0
      end
      object Trackbar_KCMGrassPaint_Intensity: TTrackBar
        Left = 8
        Top = 180
        Width = 225
        Height = 45
        Max = 50
        Min = 2
        Position = 5
        TabOrder = 1
      end
      object TrackBar_KCMGrassPaint_Diameter: TTrackBar
        Left = 8
        Top = 52
        Width = 225
        Height = 45
        Max = 50
        Min = 2
        Position = 5
        TabOrder = 2
        OnChange = TrackBar_DiameterChange
      end
      object RadioButton_KCMGrassPaint_Spawn: TRadioButton
        Left = 8
        Top = 16
        Width = 113
        Height = 17
        Caption = 'Spawn'
        Checked = True
        TabOrder = 3
        TabStop = True
      end
      object RadioButton_KCMGrassPaint_Remove: TRadioButton
        Left = 120
        Top = 16
        Width = 113
        Height = 17
        Caption = 'Remove'
        TabOrder = 4
      end
    end
    object GroupBox_KSMHEIGHT: TGroupBox
      Left = 2
      Top = 415
      Width = 257
      Height = 282
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Kal Server Map Draw Height based '
      TabOrder = 1
      Visible = False
      DesignSize = (
        257
        282)
      object Label_IndicaterHeight: TLabel
        Left = 8
        Top = 20
        Width = 76
        Height = 13
        Caption = 'Indicater height:'
      end
      object Label_ColorDraw: TLabel
        Left = 8
        Top = 68
        Width = 66
        Height = 13
        Caption = 'Color to Paint:'
      end
      object Image_ColorDraw2: TImage
        Left = 80
        Top = 68
        Width = 17
        Height = 17
      end
      object TrackBar_IndicatorHeight: TTrackBar
        Left = 8
        Top = 36
        Width = 225
        Height = 29
        Max = 170
        Min = 40
        Frequency = 5
        Position = 60
        TabOrder = 0
        OnChange = TrackBar_IndicatorHeightChange
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 88
        Width = 241
        Height = 55
        Caption = 'General value'
        TabOrder = 1
        object RadioButton9: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Normal ( mobs )'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton10: TRadioButton
          Left = 8
          Top = 32
          Width = 113
          Height = 17
          Caption = 'Collision ( no mobs )'
          TabOrder = 1
          OnClick = RadioButtons_ValuesClick
        end
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 144
        Width = 241
        Height = 133
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Specified value'
        TabOrder = 2
        object RadioButton11: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = '( no special )'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton12: TRadioButton
          Left = 8
          Top = 32
          Width = 113
          Height = 17
          Caption = 'One way portal'
          TabOrder = 1
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton13: TRadioButton
          Left = 8
          Top = 48
          Width = 113
          Height = 17
          Caption = 'Two way portal'
          TabOrder = 2
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton14: TRadioButton
          Left = 8
          Top = 64
          Width = 113
          Height = 17
          Caption = 'Town'
          TabOrder = 3
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton15: TRadioButton
          Left = 8
          Top = 80
          Width = 113
          Height = 17
          Caption = 'PK free'
          TabOrder = 4
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton16: TRadioButton
          Left = 8
          Top = 96
          Width = 113
          Height = 17
          Caption = 'Castle'
          TabOrder = 5
          OnClick = RadioButtons_ValuesClick
        end
      end
      object KSMHEIGHT_ButtonUp: TBitBtn
        Left = 110
        Top = 64
        Width = 65
        Height = 25
        Caption = 'Up'
        TabOrder = 3
        OnClick = KSMHEIGHT_ButtonUpClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF000000
          000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF000000000000010101FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF000000000000000000FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
          0000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF19FF0F19FF0F
          19FF0F19FF0F19FF0F19FF0F19FF0F19FF0F19FF0F19FF0F19FF0F19FF0F19FF
          0F19FF0F19FF0F19FF0FFF00FFFF00FFFF00FF0000FFFF00FFFF00FFFF00FFFF
          00FF000000000000000000000000FF00FFFF00FFFF00FF0C060CFF00FFFF00FF
          FF00FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000000000000000
          00040204010101000000FF00FFFF00FFFF00FF0000FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF000000050305040204000000FF00FFFF00FFFF00FF
          FF00FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF
          FF00FF0000FFFF00FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000FF0000FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object KSMHEIGHT_ButtonDown: TBitBtn
        Left = 184
        Top = 64
        Width = 65
        Height = 25
        Caption = 'Down'
        TabOrder = 4
        OnClick = KSMHEIGHT_ButtonDownClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF000000
          000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FFFF00FFFF
          00FFFF00FFFF00FF0000FF0000FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF000000000000010101FF00FFFF00FFFF00FF0000FFFF00FF0000FFFF00
          FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF
          00FFFF00FFFF00FFFF00FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF000000000000000000FF00FFFF00FFFF00FF0000FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
          0000000000FF00FFFF00FF0000FFFF00FFFF00FFFF00FFFF00FF19FF0F19FF0F
          19FF0F19FF0F19FF0F19FF0F19FF0F19FF0F19FF0F19FF0F19FF0F19FF0F19FF
          0F19FF0F19FF0F19FF0FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF000000000000000000000000FF00FFFF00FFFF00FF0C060CFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000000000000000
          00040204010101000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF000000050305040204000000FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
    end
    object GroupBox_KCMHEIGHT: TGroupBox
      Left = 2
      Top = 415
      Width = 257
      Height = 282
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Kal Client Map Height Editor'
      TabOrder = 2
      Visible = False
      DesignSize = (
        257
        282)
      object Label_KCMHEIGHT_Diameter: TLabel
        Left = 8
        Top = 20
        Width = 68
        Height = 13
        Caption = 'Area diameter:'
      end
      object Label_KCMHEIGHT_Intensity: TLabel
        Left = 8
        Top = 84
        Width = 42
        Height = 13
        Caption = 'Intensity:'
      end
      object TrackBar_KCMHEIGHT_Diameter: TTrackBar
        Left = 8
        Top = 36
        Width = 225
        Height = 45
        Max = 50
        Min = 2
        Position = 5
        TabOrder = 0
        OnChange = TrackBar_DiameterChange
      end
      object TrackBar_KCMHEIGHT_Intensity: TTrackBar
        Left = 8
        Top = 100
        Width = 225
        Height = 45
        Max = 10000
        Min = 1000
        Frequency = 50
        Position = 1000
        TabOrder = 1
      end
      object RadioButton_KCMHEIGHT_UP: TRadioButton
        Left = 8
        Top = 229
        Width = 113
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Up'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
      object RadioButton_KCMHEIGHT_DOWN: TRadioButton
        Left = 8
        Top = 253
        Width = 113
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Down'
        TabOrder = 3
      end
    end
    object GroupBox_KSMDRAW: TGroupBox
      Left = 2
      Top = 415
      Width = 257
      Height = 282
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Kal Server Map Draw '
      TabOrder = 3
      Visible = False
      DesignSize = (
        257
        282)
      object Label_BrushSize: TLabel
        Left = 8
        Top = 20
        Width = 51
        Height = 13
        Caption = 'Brush size:'
      end
      object Label_BrushColor: TLabel
        Left = 8
        Top = 68
        Width = 56
        Height = 13
        Caption = 'Brush color:'
      end
      object Image_ColorDraw1: TImage
        Left = 80
        Top = 68
        Width = 17
        Height = 17
      end
      object TrackBar_BrushSize: TTrackBar
        Left = 8
        Top = 36
        Width = 225
        Height = 29
        Max = 50
        Min = 2
        Position = 5
        TabOrder = 0
        OnChange = TrackBar_DiameterChange
      end
      object GroupBox_KSMDraw_GeneralValues: TGroupBox
        Left = 8
        Top = 88
        Width = 241
        Height = 55
        Caption = 'General value'
        TabOrder = 1
        object RadioButton1: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Normal ( mobs )'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton2: TRadioButton
          Left = 8
          Top = 32
          Width = 113
          Height = 17
          Caption = 'Collision ( no mobs )'
          TabOrder = 1
          OnClick = RadioButtons_ValuesClick
        end
      end
      object GroupBox_KSMDraw_SpecifiedValues: TGroupBox
        Left = 8
        Top = 144
        Width = 241
        Height = 132
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Specified value'
        TabOrder = 2
        object RadioButton3: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = '( no special )'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton4: TRadioButton
          Left = 8
          Top = 32
          Width = 113
          Height = 17
          Caption = 'One way portal'
          TabOrder = 1
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton5: TRadioButton
          Left = 8
          Top = 48
          Width = 113
          Height = 17
          Caption = 'Two way portal'
          TabOrder = 2
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton6: TRadioButton
          Left = 8
          Top = 64
          Width = 113
          Height = 17
          Caption = 'Town'
          TabOrder = 3
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton7: TRadioButton
          Left = 8
          Top = 80
          Width = 113
          Height = 17
          Caption = 'PK free'
          TabOrder = 4
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton8: TRadioButton
          Left = 8
          Top = 96
          Width = 113
          Height = 17
          Caption = 'Castle'
          TabOrder = 5
          OnClick = RadioButtons_ValuesClick
        end
      end
    end
    object GroupBox_KSMOPLBased: TGroupBox
      Left = 2
      Top = 415
      Width = 257
      Height = 282
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Kal Server Map Draw '
      TabOrder = 8
      Visible = False
      DesignSize = (
        257
        282)
      object Label_KSMOpl_PaintSize: TLabel
        Left = 8
        Top = 20
        Width = 48
        Height = 13
        Caption = 'Paint size:'
      end
      object Label_KSMOpl_ColorToPaint: TLabel
        Left = 8
        Top = 68
        Width = 66
        Height = 13
        Caption = 'Color to Paint:'
      end
      object Image_KSMOpl_Color: TImage
        Left = 80
        Top = 68
        Width = 17
        Height = 17
      end
      object TrackBar_KSMOpl_PaintSize: TTrackBar
        Left = 8
        Top = 36
        Width = 225
        Height = 29
        Min = 1
        Position = 5
        TabOrder = 0
        OnChange = TrackBar_DiameterChange
      end
      object GroupBox_KSMOpl_GeneralValue: TGroupBox
        Left = 8
        Top = 88
        Width = 241
        Height = 55
        Caption = 'General value'
        TabOrder = 1
        object RadioButton_KSMOpl_Gen_Normal: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Normal ( mobs )'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton_KSMOpl_Gen_NoMob: TRadioButton
          Left = 8
          Top = 32
          Width = 113
          Height = 17
          Caption = 'Collision ( no mobs )'
          TabOrder = 1
          OnClick = RadioButtons_ValuesClick
        end
      end
      object GroupBox_KSMOpl_SpecifiedValue: TGroupBox
        Left = 8
        Top = 144
        Width = 241
        Height = 134
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Specified value'
        TabOrder = 2
        object RadioButton_KSMOpl_Spe_NoSpec: TRadioButton
          Left = 8
          Top = 16
          Width = 113
          Height = 17
          Caption = '( no special )'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton_KSMOpl_Spe_OneWayPortal: TRadioButton
          Left = 8
          Top = 32
          Width = 113
          Height = 17
          Caption = 'One way portal'
          TabOrder = 1
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton_KSMOpl_Spe_TwoWayPortal: TRadioButton
          Left = 8
          Top = 48
          Width = 113
          Height = 17
          Caption = 'Two way portal'
          TabOrder = 2
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton_KSMOpl_Spe_Town: TRadioButton
          Left = 8
          Top = 64
          Width = 113
          Height = 17
          Caption = 'Town'
          TabOrder = 3
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton_KSMOpl_Spe_PKFree: TRadioButton
          Left = 8
          Top = 80
          Width = 113
          Height = 17
          Caption = 'PK free'
          TabOrder = 4
          OnClick = RadioButtons_ValuesClick
        end
        object RadioButton_KSMOpl_Spe_Castle: TRadioButton
          Left = 8
          Top = 96
          Width = 113
          Height = 17
          Caption = 'Castle'
          TabOrder = 5
          OnClick = RadioButtons_ValuesClick
        end
      end
      object Button_KSMOpl_Paint: TButton
        Left = 168
        Top = 64
        Width = 75
        Height = 25
        Caption = 'Go!'
        TabOrder = 3
        OnClick = Button_KSMOpl_PaintClick
      end
    end
    object GroupBox_AspectToChange: TGroupBox
      Left = 2
      Top = 264
      Width = 257
      Height = 150
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Aspect selection'
      TabOrder = 0
      object Label_File: TLabel
        Left = 8
        Top = 20
        Width = 173
        Height = 13
        Caption = 'Please select file you want to modify:'
      end
      object Label_FileAspect: TLabel
        Left = 8
        Top = 84
        Width = 237
        Height = 13
        Caption = 'Select the aspect you wish to change and it'#39's tool:'
      end
      object ListBox_FileAspect: TListBox
        Left = 15
        Top = 102
        Width = 233
        Height = 43
        ItemHeight = 13
        TabOrder = 0
        OnClick = ListBox_FileAspectClick
      end
      object ListBox_File: TListBox
        Left = 16
        Top = 38
        Width = 233
        Height = 43
        ItemHeight = 13
        Items.Strings = (
          'KCM'
          'KSM'
          'OPL')
        TabOrder = 1
        OnClick = ListBox_FileClick
      end
    end
  end
  object ToolBar_3DShow: TToolBar
    Left = 0
    Top = 0
    Width = 1125
    Height = 33
    ButtonHeight = 26
    TabOrder = 2
    object CoolBar_3DShow: TCoolBar
      Left = 0
      Top = 2
      Width = 1121
      Height = 26
      Bands = <>
      EdgeInner = esNone
      EdgeOuter = esRaised
      object Panel_ToolBar: TPanel
        Left = 9
        Top = 0
        Width = 1104
        Height = 25
        Align = alClient
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
        object CheckBox_ShowWater: TCheckBox
          Left = 0
          Top = 4
          Width = 97
          Height = 17
          Caption = 'Show Water'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = CheckBox_ShowWaterClick
        end
        object CheckBox_ShowOPLNodes: TCheckBox
          Left = 88
          Top = 4
          Width = 105
          Height = 17
          Caption = 'Show OPL Nodes'
          Enabled = False
          TabOrder = 1
          OnClick = CheckBox_ShowOPLNodesClick
        end
        object CheckBox_LockBorders: TCheckBox
          Left = 720
          Top = 0
          Width = 90
          Height = 25
          Caption = 'Lock Borders'
          TabOrder = 2
        end
        object CheckBox_StickOPLtoKCM: TCheckBox
          Left = 511
          Top = 0
          Width = 200
          Height = 25
          Caption = 'Place OPL on KCM when editing KCM'
          Enabled = False
          TabOrder = 3
        end
        object CheckBox_CoordSys: TCheckBox
          Left = 808
          Top = 0
          Width = 113
          Height = 25
          Caption = 'Coordinate System'
          TabOrder = 4
          OnClick = CheckBox_CoordSysClick
        end
        object Button_LayerCenter: TButton
          Left = 920
          Top = 2
          Width = 75
          Height = 20
          Caption = 'Layer Center'
          TabOrder = 5
          OnClick = Button_LayerCenterClick
        end
        object CheckBox_ShowOPLModels: TCheckBox
          Left = 200
          Top = 4
          Width = 137
          Height = 17
          Caption = 'Show True OPL Models'
          Checked = True
          State = cbChecked
          TabOrder = 6
          OnClick = CheckBox_ShowOPLModelsClick
        end
        object CheckBox_ShowOPLTextures: TCheckBox
          Left = 344
          Top = 4
          Width = 161
          Height = 17
          Caption = 'Show OPL Textures (bugged)'
          TabOrder = 7
          OnClick = CheckBox_ShowOPLTexturesClick
        end
      end
    end
  end
  object GLScene: TGLScene
    Left = 688
    Top = 24
    object GLDummyCube: TGLDummyCube
      Position.Coordinates = {0000FE42000000000000FE420000803F}
      CubeSize = 1.000000000000000000
    end
    object GLLightSource: TGLLightSource
      Ambient.Color = {CDCCCC3ECDCCCC3ECDCCCC3E0000803F}
      ConstAttenuation = 1.000000000000000000
      Diffuse.Color = {6666263F6666263F6666263F0000803F}
      Position.Coordinates = {0000FE420000FEC20000FE420000803F}
      LightStyle = lsOmni
      Specular.Color = {9A99593F9A99593F9A99593F0000803F}
      SpotCutOff = 180.000000000000000000
      SpotDirection.Coordinates = {0000FE420000FE420000FE4200000000}
    end
    object GLFreeForm_Indicator: TGLFreeForm
    end
    object GLFreeForm_water: TGLFreeForm
      Material.Texture.Disabled = False
      Position.Coordinates = {000000007B944542000000000000803F}
    end
    object GLHeightField: TGLHeightField
      Direction.Coordinates = {254DF1A7000080BF80532D3400000000}
      PitchAngle = 180.000000000000000000
      RollAngle = 180.000000000000000000
      Up.Coordinates = {4120A3B480532D340000803F00000000}
      XSamplingScale.Max = 256.000000000000000000
      XSamplingScale.Step = 1.000000000000000000
      YSamplingScale.Max = 256.000000000000000000
      YSamplingScale.Step = 1.000000000000000000
      ColorMode = hfcmAmbientAndDiffuse
      object GLSphere1: TGLSphere
        Radius = 0.500000000000000000
      end
    end
    object GLDummyCube_OPLObjects: TGLDummyCube
      Direction.Coordinates = {000080A8E3D80BA80000803F00000000}
      Up.Coordinates = {F7FF7F280000803F421FDE2800000000}
      CubeSize = 1.000000000000000000
    end
    object GLHUDTextX: TGLHUDText
      Position.Coordinates = {000020410000A040000000000000803F}
      BitmapFont = Font
      Alignment = taLeftJustify
      Layout = tlTop
      ModulateColor.Color = {0000000000000000000000000000803F}
    end
    object GLHUDTextY: TGLHUDText
      Position.Coordinates = {000020410000A041000000000000803F}
      BitmapFont = Font
      Alignment = taLeftJustify
      Layout = tlTop
      ModulateColor.Color = {0000000000000000000000000000803F}
    end
    object GLHUDTextZ: TGLHUDText
      Position.Coordinates = {0000204100000C42000000000000803F}
      BitmapFont = Font
      Alignment = taLeftJustify
      Layout = tlTop
      ModulateColor.Color = {0000000000000000000000000000803F}
    end
    object GLLightSource1: TGLLightSource
      Ambient.Color = {0000003F0000003F0000003F0000803F}
      ConstAttenuation = 1.000000000000000000
      Diffuse.Color = {0000803E0000803E0000803E0000803F}
      Position.Coordinates = {0000FE42000070420000FE420000803F}
      LightStyle = lsOmni
      Specular.Color = {0000803E0000803E0000803E0000803F}
      SpotCutOff = 180.000000000000000000
    end
    object GLDummyCube_Center: TGLDummyCube
      CubeSize = 1.000000000000000000
    end
    object GLCamera: TGLCamera
      DepthOfView = 10000.000000000000000000
      FocalLength = 50.000000000000000000
      TargetObject = GLDummyCube
      CameraStyle = csInfinitePerspective
      Position.Coordinates = {0000004300007A43008096430000803F}
    end
  end
  object MainMenu: TMainMenu
    Left = 656
    Top = 24
    object MainMenu_File: TMenuItem
      Caption = '&File'
      OnClick = MainMenu_FileClick
      object MainMenu_KCM_NewKCMFile: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF686868
          6868686868686767676767676767676767676767676666666666666666666666
          66666666FF00FFFF00FFFF00FF767676FCFCFCF7F7F7F7F7F7F7F7F7F7F7F7F7
          F7F7F7F7F7F6F6F6F6F6F6F6F6F6FCFCFC747474FF00FFFF00FFFF00FF818181
          F7F7F7E0E0E0E1E1E1E1E1E1E1E1E1E1E1E1E0E0E0E0E0E0DEDEDEDDDDDDF6F6
          F67F7F7FFF00FFFF00FFFF00FF8B8B8BF8F8F8E3E3E3E5E5E5E5E5E5E5E5E5E5
          E5E5E3E3E3E2E2E2E1E1E1E0E0E0F7F7F78A8A8AFF00FFFF00FFFF00FF959595
          F8F8F8E7E7E7E7E7E7E9E9E9E9E9E9E7E7E7E7E7E7E6E6E6E5E5E5E3E3E3F8F8
          F8929292FF00FFFF00FFFF00FF9A9A9AFAFAFAEAEAEAEBEBEBEBEBEBEBEBEBEB
          EBEBEAEAEAEAEAEAE9E9E9E6E6E6F8F8F8999999FF00FFFF00FFFF00FFA1A1A1
          FBFBFBEDEDEDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDEDEDEBEBEBEAEAEAFAFA
          FAA0A0A0FF00FFFF00FFFF00FFA5A5A5FBFBFBEFEFEFF0F0F0F2F2F2F2F2F2F0
          F0F0F0F0F0EFEFEFEEEEEEEDEDEDFAFAFAA5A5A5FF00FFFF00FFFF00FFA9A9A9
          FBFBFBF2F2F2F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F2F2F2F0F0F0EEEEEEFBFB
          FBA7A7A7FF00FFFF00FFFF00FFABABABFCFCFCF4F4F4F6F6F6F6F6F6F6F6F6F6
          F6F6F4F4F4F3F3F3F2F2F2F0F0F0FBFBFBABABABFF00FFFF00FFFF00FFACACAC
          FCFCFCF6F6F6F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6F6F6F3F3F3F2F2F2FBFB
          FBACACACFF00FFFF00FFFF00FFADADADFCFCFCF7F7F7F8F8F8F8F8F8FAFAFAF8
          F8F8F8F8F8F7F7F7F6F6F6F3F3F3FCFCFCADADADFF00FFFF00FFFF00FFAFAFAF
          FEFEFEF8F8F8FAFAFAFAFAFAFAFAFAFAFAFAF8F8F8F7F7F7AFAFAFBCBCBCD0D0
          D0ADADADFF00FFFF00FFFF00FFAFAFAFFEFEFEFAFAFAFAFAFAFBFBFBFBFBFBFB
          FBFBFAFAFAF8F8F8BCBCBCD9D9D9AFAFAFFF00FFFF00FFFF00FFFF00FFAFAFAF
          FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF8F8F8D0D0D0AFAFAFFF00
          FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF
          AFAFAFAFAFAFAFAFAFAFAFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Caption = 'New KCM File'
        OnClick = MainMenu_KCM_NewKCMFileClick
      end
      object MainMenu_File_LoadKCMFile: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF2D6782
          2D67822D67822D67822D67822D67822D67822D6782132D3C1E48631E48631F41
          57212F381A3546FF00FFFF00FF3D7E9A51A3C651A3C651A3C651A3C651A3C651
          A3C651A3C61E4A623387B53387B52A546CE995662A4252FF00FFFF00FF41829F
          54A7CA54A7CA54A7CA54A7CA54A7CA54A7CA54A7CA527383BDBDBDBDBDBD2F63
          7EE995662E4F65FF00FFFF00FF4687A357ACCE57ACCE57ACCE57ACCE57ACCE57
          ACCE57ACCE5D7F8FDCDCDCBDBDBD387290DCDCDC34586FFF00FFFF00FF4B8BA6
          5AB1D15AB1D15AB1D15AB1D15AB1D15AB1D15AB1D1637A80E2C2A7BDBDBD3C75
          93DCDCDC385F75FF00FFFF00FF5091AA5DB6D55DB6D55DB6D55DB6D55DB6D55D
          B6D55DB6D5658695E0E0E0BDBDBD3F7997DCDCDC3E667AFF00FFFF00FF5596AF
          60BBD960BBD960BBD960BBD960BBD960BBD95DB6D5697F84E2C2A7BDBDBD427E
          9ADCDCDC446C80FF00FFFF00FF5A9CB264C1DD64C1DD64C1DD64C1DD64C1DD64
          C1DD64C1DD547B8E759FB2BDBDBD4992B54F839C4A6D7FFF00FFFF00FF5FA0B6
          67C6E167C6E167C6E167C6E167C6E167C6E167C6E16AB1CA5F899A7896A35BA3
          C5568092FF00FFFF00FFFF00FF65A5BA6ACBE56ACBE56ACBE56ACBE56ACBE56A
          CBE56ACBE56ACBE569BBD177909A64A0BB568092FF00FFFF00FFFF00FF6AABBF
          6DD0E96DD0E96DD0E96DD0E96DD0E96DD0E96DD0E96DD0E96DD0E97A919C6EA7
          C2568092FF00FFFF00FFFF00FF6EB0C270D5ED70D5ED70D5ED70D5ED70D5ED70
          D5ED70D5ED70D5ED70D5ED6E8A9678AFC7568092FF00FFFF00FFFF00FF74B5C6
          74DAF074DAF074DAF074DAF074DAF074DAF074DAF074DAF074DAF0728B9781B6
          CE568092FF00FFFF00FFFF00FF79BACB77E0F677E0F677E0F677E0F677E0F677
          E0F677E0F677E0F677E0F6758E988ABCD3568092FF00FFFF00FFFF00FF7FC0CF
          7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA6E899592C1
          D7568092FF00FFFF00FFFF00FF84C5D384C5D384C5D384C5D384C5D384C5D384
          C5D384C5D384C5D384C5D36E89956CA1B2568092FF00FFFF00FF}
        Caption = 'Load KCM File'
        OnClick = MainMenu_File_LoadKCMFileClick
      end
      object MainMenu_File_SaveKCMFile: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF823909
          8239098239096046296C6C6C6D6D6D6666667B7B7B6D6D6D6464645353536046
          297E2801652803652803FF00FF843A09B6510DB7510E6046296969697E28017E
          2801A4A4A4AAAAAA9090906D6D6D6046297E28017D2F03782C04FF00FF90410A
          BB560FBC560F6046296464647E28017E2801B6B6B6C1C1C1A1A1A17979796046
          297E28017D3004782C04FF00FF93440CC05B11C15C116046295E5E5E7E28017E
          2801C6C6C6DADADAB8B8B88686866046297E28017F3204792D04FF00FF97480D
          C56215C66416604629595959595959595959C9C9C9F3F3F3D0D0D09696966046
          297E28018033047B2E05FF00FF9A5016CA6E23CB702692561F60462960462960
          46296046296046296046296046296A3711772E03893A077D2F05FF00FF9E5920
          BB6A2CC4956FC1926DBF8F6ABC8C67BA8862B6835CB5815AB48059B27F59B17E
          58B07D58A3460F7E3005FF00FFA1632DC48653EBEBEBE7E7E7E2E2E2DDDDDDD9
          D9D9D4D4D4D0D0D0CBCBCBCACACACACACACACACAA95D2B7F3205FF00FFA56B38
          C2885ADCDCDCD8D8D8D4D4D4D1D1D1CECECECACACAC7C7C7C4C4C4C0C0C0BDBD
          BDBBBBBBA65B287F3306FF00FFA97343CC966AFEFEFEFBFBFBF7F7F7F2F2F2EE
          EEEEE9E9E9E5E5E5E0E0E0DADADAD7D7D7D1D1D1AB5F2D803306FF00FFAA784C
          C7936BE1E1E1E1E1E1E1E1E1E0E0E0DDDDDDD9D9D9D7D7D7D3D3D3CFCFCFCCCC
          CCC9C9C9AA5E2B803306FF00FFAB7A50CF9D75FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFCFCFCF8F8F8F4F4F4EFEFEFEBEBEBE6E6E6B16530813406FF00FFAB794D
          C7956CE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1DEDEDEDCDC
          DCD8D8D8AD622D803406FF00FFAB794DBB835AFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAFAFAAA6030762D04FF00FFAB794D
          BB835A2A16792A16792A16792A16792A16792A16792A16792A16792A16792A16
          792A1679AA6030762D04FF00FF9D66427F412D340D59340D59340D59340D5934
          0D59340D59340D59340D59340D59340D59340D596B26146D2903}
        Caption = 'Save KCM File'
        OnClick = MainMenu_File_SaveKCMFileClick
      end
      object MainMenu_File_SaveKCMFileAs: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF823909
          8239098239096046296C6C6C6D6D6D6666667B7B7B6D6D6D6464645353536046
          297E2801652803652803FF00FF843A09B6510DB7510E6046296969697E28017E
          2801A4A4A4AAAAAA9090906D6D6D6046297E28017D2F03782C04FF00FF90410A
          BB560FBC560F6046296464647E28017E2801B6B6B6C1C1C1A1A1A17979796046
          297E28017D3004782C04FF00FF93440CC05B11C15C116046295E5E5E7E28017E
          2801C6C6C6DADADAB8B8B88686866046297E28017F3204792D04FF00FF97480D
          C56215C66416604629595959595959595959C9C9C9F3F3F3D0D0D09696966046
          297E28018033047B2E05FF00FF9A5016CA6E23CB702692561F60462960462960
          46296046296046296046296046296A3711772E03893A077D2F05FF00FF9E5920
          BB6A2CC4956FC1926DBF8F6ABC8C67BA8862B6835CB5815AB48059B27F59B17E
          58B07D58A3460F7E3005FF00FFA1632DC48653EBEBEBE7E7E7E2E2E2DDDDDDD9
          D9D9D4D4D4D0D0D0CBCBCBCACACACACACACACACAA95D2B7F3205FF00FFA56B38
          C2885ADCDCDCD8D8D8D4D4D4D1D1D1CECECECACACAC7C7C7C4C4C4C0C0C0BDBD
          BDBBBBBBA65B287F3306FF00FFA97343CC966AFEFEFEFBFBFBF7F7F7F2F2F2EE
          EEEEE9E9E9E5E5E5E0E0E0DADADAD7D7D7D1D1D1AB5F2D803306FF00FFAA784C
          C7936BE1E1E1E1E1E1E1E1E1E0E0E0DDDDDDD9D9D9D7D7D7D3D3D3CFCFCFCCCC
          CCC9C9C9AA5E2B803306FF00FFAB7A50CF9D75FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFCFCFCF8F8F8F4F4F4EFEFEFEBEBEBE6E6E6B16530813406FF00FFAB794D
          C7956CE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1DEDEDEDCDC
          DCD8D8D8AD622D803406FF00FFAB794DBB835AFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAFAFAAA6030762D04FF00FFAB794D
          BB835A2A16792A16792A16792A16792A16792A16792A16792A16792A16792A16
          792A1679AA6030762D04FF00FF9D66427F412D340D59340D59340D59340D5934
          0D59340D59340D59340D59340D59340D59340D596B26146D2903}
        Caption = 'Save KCM File As...'
        OnClick = MainMenu_File_SaveKCMFileAsClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object MainMenu_File_NewKSMFile: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF686868
          6868686868686767676767676767676767676767676666666666666666666666
          66666666FF00FFFF00FFFF00FF767676FCFCFCF7F7F7F7F7F7F7F7F7F7F7F7F7
          F7F7F7F7F7F6F6F6F6F6F6F6F6F6FCFCFC747474FF00FFFF00FFFF00FF818181
          F7F7F7E0E0E0E1E1E1E1E1E1E1E1E1E1E1E1E0E0E0E0E0E0DEDEDEDDDDDDF6F6
          F67F7F7FFF00FFFF00FFFF00FF8B8B8BF8F8F8E3E3E3E5E5E5E5E5E5E5E5E5E5
          E5E5E3E3E3E2E2E2E1E1E1E0E0E0F7F7F78A8A8AFF00FFFF00FFFF00FF959595
          F8F8F8E7E7E7E7E7E7E9E9E9E9E9E9E7E7E7E7E7E7E6E6E6E5E5E5E3E3E3F8F8
          F8929292FF00FFFF00FFFF00FF9A9A9AFAFAFAEAEAEAEBEBEBEBEBEBEBEBEBEB
          EBEBEAEAEAEAEAEAE9E9E9E6E6E6F8F8F8999999FF00FFFF00FFFF00FFA1A1A1
          FBFBFBEDEDEDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDEDEDEBEBEBEAEAEAFAFA
          FAA0A0A0FF00FFFF00FFFF00FFA5A5A5FBFBFBEFEFEFF0F0F0F2F2F2F2F2F2F0
          F0F0F0F0F0EFEFEFEEEEEEEDEDEDFAFAFAA5A5A5FF00FFFF00FFFF00FFA9A9A9
          FBFBFBF2F2F2F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F2F2F2F0F0F0EEEEEEFBFB
          FBA7A7A7FF00FFFF00FFFF00FFABABABFCFCFCF4F4F4F6F6F6F6F6F6F6F6F6F6
          F6F6F4F4F4F3F3F3F2F2F2F0F0F0FBFBFBABABABFF00FFFF00FFFF00FFACACAC
          FCFCFCF6F6F6F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6F6F6F3F3F3F2F2F2FBFB
          FBACACACFF00FFFF00FFFF00FFADADADFCFCFCF7F7F7F8F8F8F8F8F8FAFAFAF8
          F8F8F8F8F8F7F7F7F6F6F6F3F3F3FCFCFCADADADFF00FFFF00FFFF00FFAFAFAF
          FEFEFEF8F8F8FAFAFAFAFAFAFAFAFAFAFAFAF8F8F8F7F7F7AFAFAFBCBCBCD0D0
          D0ADADADFF00FFFF00FFFF00FFAFAFAFFEFEFEFAFAFAFAFAFAFBFBFBFBFBFBFB
          FBFBFAFAFAF8F8F8BCBCBCD9D9D9AFAFAFFF00FFFF00FFFF00FFFF00FFAFAFAF
          FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF8F8F8D0D0D0AFAFAFFF00
          FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF
          AFAFAFAFAFAFAFAFAFAFAFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Caption = 'New KSM File'
        OnClick = MainMenu_File_NewKSMFileClick
      end
      object MainMenu_File_LoadKSMFile: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF2D6782
          2D67822D67822D67822D67822D67822D67822D6782132D3C1E48631E48631F41
          57212F381A3546FF00FFFF00FF3D7E9A51A3C651A3C651A3C651A3C651A3C651
          A3C651A3C61E4A623387B53387B52A546CE995662A4252FF00FFFF00FF41829F
          54A7CA54A7CA54A7CA54A7CA54A7CA54A7CA54A7CA527383BDBDBDBDBDBD2F63
          7EE995662E4F65FF00FFFF00FF4687A357ACCE57ACCE57ACCE57ACCE57ACCE57
          ACCE57ACCE5D7F8FDCDCDCBDBDBD387290DCDCDC34586FFF00FFFF00FF4B8BA6
          5AB1D15AB1D15AB1D15AB1D15AB1D15AB1D15AB1D1637A80E2C2A7BDBDBD3C75
          93DCDCDC385F75FF00FFFF00FF5091AA5DB6D55DB6D55DB6D55DB6D55DB6D55D
          B6D55DB6D5658695E0E0E0BDBDBD3F7997DCDCDC3E667AFF00FFFF00FF5596AF
          60BBD960BBD960BBD960BBD960BBD960BBD95DB6D5697F84E2C2A7BDBDBD427E
          9ADCDCDC446C80FF00FFFF00FF5A9CB264C1DD64C1DD64C1DD64C1DD64C1DD64
          C1DD64C1DD547B8E759FB2BDBDBD4992B54F839C4A6D7FFF00FFFF00FF5FA0B6
          67C6E167C6E167C6E167C6E167C6E167C6E167C6E16AB1CA5F899A7896A35BA3
          C5568092FF00FFFF00FFFF00FF65A5BA6ACBE56ACBE56ACBE56ACBE56ACBE56A
          CBE56ACBE56ACBE569BBD177909A64A0BB568092FF00FFFF00FFFF00FF6AABBF
          6DD0E96DD0E96DD0E96DD0E96DD0E96DD0E96DD0E96DD0E96DD0E97A919C6EA7
          C2568092FF00FFFF00FFFF00FF6EB0C270D5ED70D5ED70D5ED70D5ED70D5ED70
          D5ED70D5ED70D5ED70D5ED6E8A9678AFC7568092FF00FFFF00FFFF00FF74B5C6
          74DAF074DAF074DAF074DAF074DAF074DAF074DAF074DAF074DAF0728B9781B6
          CE568092FF00FFFF00FFFF00FF79BACB77E0F677E0F677E0F677E0F677E0F677
          E0F677E0F677E0F677E0F6758E988ABCD3568092FF00FFFF00FFFF00FF7FC0CF
          7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA6E899592C1
          D7568092FF00FFFF00FFFF00FF84C5D384C5D384C5D384C5D384C5D384C5D384
          C5D384C5D384C5D384C5D36E89956CA1B2568092FF00FFFF00FF}
        Caption = 'Load KSM File'
        OnClick = MainMenu_File_LoadKSMFileClick
      end
      object MainMenu_File_SaveKSMFile: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF823909
          8239098239096046296C6C6C6D6D6D6666667B7B7B6D6D6D6464645353536046
          297E2801652803652803FF00FF843A09B6510DB7510E6046296969697E28017E
          2801A4A4A4AAAAAA9090906D6D6D6046297E28017D2F03782C04FF00FF90410A
          BB560FBC560F6046296464647E28017E2801B6B6B6C1C1C1A1A1A17979796046
          297E28017D3004782C04FF00FF93440CC05B11C15C116046295E5E5E7E28017E
          2801C6C6C6DADADAB8B8B88686866046297E28017F3204792D04FF00FF97480D
          C56215C66416604629595959595959595959C9C9C9F3F3F3D0D0D09696966046
          297E28018033047B2E05FF00FF9A5016CA6E23CB702692561F60462960462960
          46296046296046296046296046296A3711772E03893A077D2F05FF00FF9E5920
          BB6A2CC4956FC1926DBF8F6ABC8C67BA8862B6835CB5815AB48059B27F59B17E
          58B07D58A3460F7E3005FF00FFA1632DC48653EBEBEBE7E7E7E2E2E2DDDDDDD9
          D9D9D4D4D4D0D0D0CBCBCBCACACACACACACACACAA95D2B7F3205FF00FFA56B38
          C2885ADCDCDCD8D8D8D4D4D4D1D1D1CECECECACACAC7C7C7C4C4C4C0C0C0BDBD
          BDBBBBBBA65B287F3306FF00FFA97343CC966AFEFEFEFBFBFBF7F7F7F2F2F2EE
          EEEEE9E9E9E5E5E5E0E0E0DADADAD7D7D7D1D1D1AB5F2D803306FF00FFAA784C
          C7936BE1E1E1E1E1E1E1E1E1E0E0E0DDDDDDD9D9D9D7D7D7D3D3D3CFCFCFCCCC
          CCC9C9C9AA5E2B803306FF00FFAB7A50CF9D75FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFCFCFCF8F8F8F4F4F4EFEFEFEBEBEBE6E6E6B16530813406FF00FFAB794D
          C7956CE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1DEDEDEDCDC
          DCD8D8D8AD622D803406FF00FFAB794DBB835AFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAFAFAAA6030762D04FF00FFAB794D
          BB835A2A16792A16792A16792A16792A16792A16792A16792A16792A16792A16
          792A1679AA6030762D04FF00FF9D66427F412D340D59340D59340D59340D5934
          0D59340D59340D59340D59340D59340D59340D596B26146D2903}
        Caption = 'Save KSM File'
        OnClick = MainMenu_File_SaveKSMFileClick
      end
      object MainMenu_File_SaveKSMFileAs: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF823909
          8239098239096046296C6C6C6D6D6D6666667B7B7B6D6D6D6464645353536046
          297E2801652803652803FF00FF843A09B6510DB7510E6046296969697E28017E
          2801A4A4A4AAAAAA9090906D6D6D6046297E28017D2F03782C04FF00FF90410A
          BB560FBC560F6046296464647E28017E2801B6B6B6C1C1C1A1A1A17979796046
          297E28017D3004782C04FF00FF93440CC05B11C15C116046295E5E5E7E28017E
          2801C6C6C6DADADAB8B8B88686866046297E28017F3204792D04FF00FF97480D
          C56215C66416604629595959595959595959C9C9C9F3F3F3D0D0D09696966046
          297E28018033047B2E05FF00FF9A5016CA6E23CB702692561F60462960462960
          46296046296046296046296046296A3711772E03893A077D2F05FF00FF9E5920
          BB6A2CC4956FC1926DBF8F6ABC8C67BA8862B6835CB5815AB48059B27F59B17E
          58B07D58A3460F7E3005FF00FFA1632DC48653EBEBEBE7E7E7E2E2E2DDDDDDD9
          D9D9D4D4D4D0D0D0CBCBCBCACACACACACACACACAA95D2B7F3205FF00FFA56B38
          C2885ADCDCDCD8D8D8D4D4D4D1D1D1CECECECACACAC7C7C7C4C4C4C0C0C0BDBD
          BDBBBBBBA65B287F3306FF00FFA97343CC966AFEFEFEFBFBFBF7F7F7F2F2F2EE
          EEEEE9E9E9E5E5E5E0E0E0DADADAD7D7D7D1D1D1AB5F2D803306FF00FFAA784C
          C7936BE1E1E1E1E1E1E1E1E1E0E0E0DDDDDDD9D9D9D7D7D7D3D3D3CFCFCFCCCC
          CCC9C9C9AA5E2B803306FF00FFAB7A50CF9D75FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFCFCFCF8F8F8F4F4F4EFEFEFEBEBEBE6E6E6B16530813406FF00FFAB794D
          C7956CE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1DEDEDEDCDC
          DCD8D8D8AD622D803406FF00FFAB794DBB835AFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAFAFAAA6030762D04FF00FFAB794D
          BB835A2A16792A16792A16792A16792A16792A16792A16792A16792A16792A16
          792A1679AA6030762D04FF00FF9D66427F412D340D59340D59340D59340D5934
          0D59340D59340D59340D59340D59340D59340D596B26146D2903}
        Caption = 'Save KSM File As...'
        OnClick = MainMenu_File_SaveKSMFileasClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object MainMenu_File_NewOPLFile: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF686868
          6868686868686767676767676767676767676767676666666666666666666666
          66666666FF00FFFF00FFFF00FF767676FCFCFCF7F7F7F7F7F7F7F7F7F7F7F7F7
          F7F7F7F7F7F6F6F6F6F6F6F6F6F6FCFCFC747474FF00FFFF00FFFF00FF818181
          F7F7F7E0E0E0E1E1E1E1E1E1E1E1E1E1E1E1E0E0E0E0E0E0DEDEDEDDDDDDF6F6
          F67F7F7FFF00FFFF00FFFF00FF8B8B8BF8F8F8E3E3E3E5E5E5E5E5E5E5E5E5E5
          E5E5E3E3E3E2E2E2E1E1E1E0E0E0F7F7F78A8A8AFF00FFFF00FFFF00FF959595
          F8F8F8E7E7E7E7E7E7E9E9E9E9E9E9E7E7E7E7E7E7E6E6E6E5E5E5E3E3E3F8F8
          F8929292FF00FFFF00FFFF00FF9A9A9AFAFAFAEAEAEAEBEBEBEBEBEBEBEBEBEB
          EBEBEAEAEAEAEAEAE9E9E9E6E6E6F8F8F8999999FF00FFFF00FFFF00FFA1A1A1
          FBFBFBEDEDEDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDEDEDEBEBEBEAEAEAFAFA
          FAA0A0A0FF00FFFF00FFFF00FFA5A5A5FBFBFBEFEFEFF0F0F0F2F2F2F2F2F2F0
          F0F0F0F0F0EFEFEFEEEEEEEDEDEDFAFAFAA5A5A5FF00FFFF00FFFF00FFA9A9A9
          FBFBFBF2F2F2F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F2F2F2F0F0F0EEEEEEFBFB
          FBA7A7A7FF00FFFF00FFFF00FFABABABFCFCFCF4F4F4F6F6F6F6F6F6F6F6F6F6
          F6F6F4F4F4F3F3F3F2F2F2F0F0F0FBFBFBABABABFF00FFFF00FFFF00FFACACAC
          FCFCFCF6F6F6F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6F6F6F3F3F3F2F2F2FBFB
          FBACACACFF00FFFF00FFFF00FFADADADFCFCFCF7F7F7F8F8F8F8F8F8FAFAFAF8
          F8F8F8F8F8F7F7F7F6F6F6F3F3F3FCFCFCADADADFF00FFFF00FFFF00FFAFAFAF
          FEFEFEF8F8F8FAFAFAFAFAFAFAFAFAFAFAFAF8F8F8F7F7F7AFAFAFBCBCBCD0D0
          D0ADADADFF00FFFF00FFFF00FFAFAFAFFEFEFEFAFAFAFAFAFAFBFBFBFBFBFBFB
          FBFBFAFAFAF8F8F8BCBCBCD9D9D9AFAFAFFF00FFFF00FFFF00FFFF00FFAFAFAF
          FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF8F8F8D0D0D0AFAFAFFF00
          FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF
          AFAFAFAFAFAFAFAFAFAFAFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Caption = 'New OPL File'
        OnClick = MainMenu_File_NewOPLFileClick
      end
      object MainMenu_File_LoadOPLFile: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF2D6782
          2D67822D67822D67822D67822D67822D67822D6782132D3C1E48631E48631F41
          57212F381A3546FF00FFFF00FF3D7E9A51A3C651A3C651A3C651A3C651A3C651
          A3C651A3C61E4A623387B53387B52A546CE995662A4252FF00FFFF00FF41829F
          54A7CA54A7CA54A7CA54A7CA54A7CA54A7CA54A7CA527383BDBDBDBDBDBD2F63
          7EE995662E4F65FF00FFFF00FF4687A357ACCE57ACCE57ACCE57ACCE57ACCE57
          ACCE57ACCE5D7F8FDCDCDCBDBDBD387290DCDCDC34586FFF00FFFF00FF4B8BA6
          5AB1D15AB1D15AB1D15AB1D15AB1D15AB1D15AB1D1637A80E2C2A7BDBDBD3C75
          93DCDCDC385F75FF00FFFF00FF5091AA5DB6D55DB6D55DB6D55DB6D55DB6D55D
          B6D55DB6D5658695E0E0E0BDBDBD3F7997DCDCDC3E667AFF00FFFF00FF5596AF
          60BBD960BBD960BBD960BBD960BBD960BBD95DB6D5697F84E2C2A7BDBDBD427E
          9ADCDCDC446C80FF00FFFF00FF5A9CB264C1DD64C1DD64C1DD64C1DD64C1DD64
          C1DD64C1DD547B8E759FB2BDBDBD4992B54F839C4A6D7FFF00FFFF00FF5FA0B6
          67C6E167C6E167C6E167C6E167C6E167C6E167C6E16AB1CA5F899A7896A35BA3
          C5568092FF00FFFF00FFFF00FF65A5BA6ACBE56ACBE56ACBE56ACBE56ACBE56A
          CBE56ACBE56ACBE569BBD177909A64A0BB568092FF00FFFF00FFFF00FF6AABBF
          6DD0E96DD0E96DD0E96DD0E96DD0E96DD0E96DD0E96DD0E96DD0E97A919C6EA7
          C2568092FF00FFFF00FFFF00FF6EB0C270D5ED70D5ED70D5ED70D5ED70D5ED70
          D5ED70D5ED70D5ED70D5ED6E8A9678AFC7568092FF00FFFF00FFFF00FF74B5C6
          74DAF074DAF074DAF074DAF074DAF074DAF074DAF074DAF074DAF0728B9781B6
          CE568092FF00FFFF00FFFF00FF79BACB77E0F677E0F677E0F677E0F677E0F677
          E0F677E0F677E0F677E0F6758E988ABCD3568092FF00FFFF00FFFF00FF7FC0CF
          7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA6E899592C1
          D7568092FF00FFFF00FFFF00FF84C5D384C5D384C5D384C5D384C5D384C5D384
          C5D384C5D384C5D384C5D36E89956CA1B2568092FF00FFFF00FF}
        Caption = 'Load OPL File'
        OnClick = MainMenu_File_LoadOPLFileClick
      end
      object MainMenu_File_SaveOPLFile: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF823909
          8239098239096046296C6C6C6D6D6D6666667B7B7B6D6D6D6464645353536046
          297E2801652803652803FF00FF843A09B6510DB7510E6046296969697E28017E
          2801A4A4A4AAAAAA9090906D6D6D6046297E28017D2F03782C04FF00FF90410A
          BB560FBC560F6046296464647E28017E2801B6B6B6C1C1C1A1A1A17979796046
          297E28017D3004782C04FF00FF93440CC05B11C15C116046295E5E5E7E28017E
          2801C6C6C6DADADAB8B8B88686866046297E28017F3204792D04FF00FF97480D
          C56215C66416604629595959595959595959C9C9C9F3F3F3D0D0D09696966046
          297E28018033047B2E05FF00FF9A5016CA6E23CB702692561F60462960462960
          46296046296046296046296046296A3711772E03893A077D2F05FF00FF9E5920
          BB6A2CC4956FC1926DBF8F6ABC8C67BA8862B6835CB5815AB48059B27F59B17E
          58B07D58A3460F7E3005FF00FFA1632DC48653EBEBEBE7E7E7E2E2E2DDDDDDD9
          D9D9D4D4D4D0D0D0CBCBCBCACACACACACACACACAA95D2B7F3205FF00FFA56B38
          C2885ADCDCDCD8D8D8D4D4D4D1D1D1CECECECACACAC7C7C7C4C4C4C0C0C0BDBD
          BDBBBBBBA65B287F3306FF00FFA97343CC966AFEFEFEFBFBFBF7F7F7F2F2F2EE
          EEEEE9E9E9E5E5E5E0E0E0DADADAD7D7D7D1D1D1AB5F2D803306FF00FFAA784C
          C7936BE1E1E1E1E1E1E1E1E1E0E0E0DDDDDDD9D9D9D7D7D7D3D3D3CFCFCFCCCC
          CCC9C9C9AA5E2B803306FF00FFAB7A50CF9D75FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFCFCFCF8F8F8F4F4F4EFEFEFEBEBEBE6E6E6B16530813406FF00FFAB794D
          C7956CE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1DEDEDEDCDC
          DCD8D8D8AD622D803406FF00FFAB794DBB835AFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAFAFAAA6030762D04FF00FFAB794D
          BB835A2A16792A16792A16792A16792A16792A16792A16792A16792A16792A16
          792A1679AA6030762D04FF00FF9D66427F412D340D59340D59340D59340D5934
          0D59340D59340D59340D59340D59340D59340D596B26146D2903}
        Caption = 'Save OPL File'
        OnClick = MainMenu_File_SaveOPLFileClick
      end
      object MainMenu_File_SaveOPLFileAs: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF823909
          8239098239096046296C6C6C6D6D6D6666667B7B7B6D6D6D6464645353536046
          297E2801652803652803FF00FF843A09B6510DB7510E6046296969697E28017E
          2801A4A4A4AAAAAA9090906D6D6D6046297E28017D2F03782C04FF00FF90410A
          BB560FBC560F6046296464647E28017E2801B6B6B6C1C1C1A1A1A17979796046
          297E28017D3004782C04FF00FF93440CC05B11C15C116046295E5E5E7E28017E
          2801C6C6C6DADADAB8B8B88686866046297E28017F3204792D04FF00FF97480D
          C56215C66416604629595959595959595959C9C9C9F3F3F3D0D0D09696966046
          297E28018033047B2E05FF00FF9A5016CA6E23CB702692561F60462960462960
          46296046296046296046296046296A3711772E03893A077D2F05FF00FF9E5920
          BB6A2CC4956FC1926DBF8F6ABC8C67BA8862B6835CB5815AB48059B27F59B17E
          58B07D58A3460F7E3005FF00FFA1632DC48653EBEBEBE7E7E7E2E2E2DDDDDDD9
          D9D9D4D4D4D0D0D0CBCBCBCACACACACACACACACAA95D2B7F3205FF00FFA56B38
          C2885ADCDCDCD8D8D8D4D4D4D1D1D1CECECECACACAC7C7C7C4C4C4C0C0C0BDBD
          BDBBBBBBA65B287F3306FF00FFA97343CC966AFEFEFEFBFBFBF7F7F7F2F2F2EE
          EEEEE9E9E9E5E5E5E0E0E0DADADAD7D7D7D1D1D1AB5F2D803306FF00FFAA784C
          C7936BE1E1E1E1E1E1E1E1E1E0E0E0DDDDDDD9D9D9D7D7D7D3D3D3CFCFCFCCCC
          CCC9C9C9AA5E2B803306FF00FFAB7A50CF9D75FEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFCFCFCF8F8F8F4F4F4EFEFEFEBEBEBE6E6E6B16530813406FF00FFAB794D
          C7956CE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1DEDEDEDCDC
          DCD8D8D8AD622D803406FF00FFAB794DBB835AFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAFAFAAA6030762D04FF00FFAB794D
          BB835A2A16792A16792A16792A16792A16792A16792A16792A16792A16792A16
          792A1679AA6030762D04FF00FF9D66427F412D340D59340D59340D59340D5934
          0D59340D59340D59340D59340D59340D59340D596B26146D2903}
        Caption = 'Save OPL File As...'
        OnClick = MainMenu_File_SaveOPLFileAsClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object MainMenu_File_Exit: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF2D6782
          2D67822D67822D67822D67822D67822D67822D6782132D3C1E48631E48631F41
          57212F381A3546FF00FFFF00FF3D7E9A51A3C651A3C651A3C651A3C651A3C651
          A3C651A3C61E4A6251A3C651A3C62A546CE995662A4252FF00FFFF00FF41829F
          54A7CA54A7CA54A7CA54A7CA54A7CA54A7CA54A7CA2F637E54A7CA54A7CA2F63
          7EE995662E4F65FF00FFFF00FF4687A357ACCE57ACCE57ACCE57ACCE57ACCE57
          ACCE57ACCE2F637E57ACCE57ACCE2F637EE3E3E334586FFF00FFFF00FF4B8BA6
          5AB1D15AB1D15AB1D15AB1D15AB1D15AB1D15AB1D12F637E8F664D452D202F63
          7EE3E3E3385F75FF00FFFF00FF5091AA5DB6D55DB6D55DB6D55DB6D55DB6D55D
          B6D55DB6D5AA8952E17F2A5929142F637EDBD9D72F637EFF00FFFF00FF5596AF
          60BBD960BBD960BBD960BBD960BBD960BBD99F7B2EEFAD13EB9C19D78A30A343
          06621A012F637EFF00FFFF00FF5A9CB264C1DD64C1DD64C1DD64C1DD64C1DD64
          735ED9AF19F3C218EFB013EB981FDB6810C53D087B1502FF00FFFF00FF5FA0B6
          67C6E167C6E167C6E167C6E167C6E18CD4E85E7870CFAE20F0B714AD7D3E9C52
          1DBC3706A920068E3625FF00FF65A5BA6ACBE56ACBE56ACBE56ACBE56ACBE56A
          CBE56ACBE55A888FB2872D7A5C3D6ACBE55680927C1304730E02FF00FF6AABBF
          6DD0E96DD0E96DD0E96DD0E96DD0E96DD0E96DD0E98BDAEE60635F5155526DD0
          E9568092FF00FF4D0D00FF00FF6EB0C270D5ED70D5ED70D5ED70D5ED70D5ED70
          D5ED70D5ED70D5ED7AD8EE758E9870D5ED568092FF00FFFF12FFFF00FF74B5C6
          74DAF074DAF074DAF074DAF074DAF074DAF074DAF074DAF074DAF0728B9774DA
          F0568092FF00FFFF00FFFF00FF79BACB77E0F677E0F677E0F677E0F677E0F677
          E0F677E0F677E0F677E0F6758E9877E0F6568092FF00FFFF00FFFF00FF7FC0CF
          7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA7AE5FA758E987AE5
          FA568092FF00FFFF00FFFF00FF84C5D384C5D384C5D384C5D384C5D384C5D384
          C5D384C5D384C5D384C5D36E8995699DAD568092FF00FFFF00FF}
        Caption = 'Exit'
        OnClick = MainMenu_File_ExitClick
      end
    end
    object MainMenu_KCMFile: TMenuItem
      Caption = '&KCM File'
      OnClick = MainMenu_KCMFileClick
      object MainMenu_KCMFile_TextureCenter: TMenuItem
        Caption = 'Texture Center'
        OnClick = MainMenu_KCMFile_TextureCenterClick
      end
      object MainMenu_KCMFile_BorderCenter: TMenuItem
        Caption = 'Border Center'
        OnClick = MainMenu_KCMFile_BorderCenterClick
      end
      object MainMenu_KCMFile_HeaderInfo: TMenuItem
        Caption = 'Header Info'
        OnClick = MainMenu_KCMFile_HeaderInfoClick
      end
      object MainMenu_KCMFile_RenderColorMap: TMenuItem
        Caption = 'Render ColorMap'
        OnClick = MainMenu_KCMFile_RenderColorMapClick
      end
    end
    object MainMenu_OPLFile: TMenuItem
      Caption = '&OPL File'
      OnClick = MainMenu_OPLFileClick
      object MainMenu_OPLFile_HeaderInfo: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Caption = 'Header Info'
        OnClick = MainMenu_OPLFile_HeaderInfoClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object MainMenu_OPLFile_AddNode: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF686868
          6868686868686767676767676767676767676767674F785311A91E11A91E3E85
          44666666FF00FFFF00FFFF00FF767676FCFCFCF7F7F7F7F7F7F7F7F7F7F7F7F7
          F7F7F7F7F7B9E1BC11A91E11A91E8ED594747474FF00FFFF00FFFF00FF818181
          F7F7F7E0E0E0E1E1E1E1E1E1E1E1E1E1E1E1E0E0E0A9D1AC11A91E11A91E8BD2
          917F7F7FFF00FFFF00FFFF00FF8B8B8BF8F8F8E3E3E3E5E5E5E5E5E5E5E5E5E5
          E5E5E3E3E3AAD3AE11A91E11A91E8CD3928A8A8AFF00FFFF00FFFF00FF959595
          F8F8F8E7E7E7E7E7E7CCE0CE11A91E11A91E11A91E11A91E11A91E11A91E11A9
          1E11A91E11A91E11A91EFF00FF9A9A9AFAFAFAEAEAEAEBEBEBCEE2D011A91E11
          A91E11A91E11A91E11A91E11A91E11A91E11A91E11A91E11A91EFF00FFA1A1A1
          FBFBFBEDEDEDEEEEEED1E5D211A91E11A91E11A91E11A91E11A91E11A91E11A9
          1E11A91E11A91E11A91EFF00FFA5A5A5FBFBFBEFEFEFF0F0F0F2F2F2F2F2F2F0
          F0F0F0F0F0B4DCB711A91E11A91E8DD493A5A5A5FF00FFFF00FFFF00FFA9A9A9
          FBFBFBF2F2F2F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3B6DFB911A91E11A91E8ED5
          94A7A7A7FF00FFFF00FFFF00FFABABABFCFCFCF4F4F4F6F6F6F6F6F6F6F6F6F6
          F6F6F4F4F4B7DFBA11A91E11A91E8ED594ABABABFF00FFFF00FFFF00FFACACAC
          FCFCFCF6F6F6F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7B9E1BC11A91E11A91E8ED5
          94ACACACFF00FFFF00FFFF00FFADADADFCFCFCF7F7F7F8F8F8F8F8F8FAFAFAF8
          F8F8F8F8F8F7F7F7F6F6F6F3F3F3FCFCFCADADADFF00FFFF00FFFF00FFAFAFAF
          FEFEFEF8F8F8FAFAFAFAFAFAFAFAFAFAFAFAF8F8F8F7F7F7AFAFAFBCBCBCD0D0
          D0ADADADFF00FFFF00FFFF00FFAFAFAFFEFEFEFAFAFAFAFAFAFBFBFBFBFBFBFB
          FBFBFAFAFAF8F8F8BCBCBCD9D9D9AFAFAFFF00FFFF00FFFF00FFFF00FFAFAFAF
          FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF8F8F8D0D0D0AFAFAFFF00
          FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF
          AFAFAFAFAFAFAFAFAFAFAFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Caption = 'Add Node'
        OnClick = MainMenu_OPLFile_AddNodeClick
      end
      object MainMenu_OPLFile_DeleteNode: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF686868
          686868686868615B7D3F2DA13E2E985D5878676767666666666666666666504A
          6723126D231175B206CAFF00FF767676FCFCFCF7F7F74937AF110DBD1712BC4C
          3CA8C1BBDAF6F6F6F6F6F6B6B0CC2F1E7D0D088D100492261177FF00FF818181
          F7F7F7E0E0E05241B21E19CF0406D21C17C65140AFB8B3CDB2ACC636258C110C
          960909920E058F26116DFF00FF8B8B8BF8F8F8E3E3E3B4AFCF5D4CC02420D906
          08DA221CCC4539B63B30A9150FAB0F0FA6100D9126126FB506C7FF00FF959595
          F8F8F8E7E7E7E7E7E7C0BBD96655C82E28DF090BDD1214D50F11C90204B61C17
          A82B1A7CBC06CDFF00FFFF00FF9A9A9AFAFAFAEAEAEAEBEBEBEBEBEBC8C3DD60
          54CE2021E80B0BDA0A0ACC0C0DC02B20937A748BFF00FFFF00FFFF00FFA1A1A1
          FBFBFBEDEDEDEEEEEEEEEEEECFCADD776DCD4849ED1B1BE40C0CD5090BC7281E
          947F7991FF00FFFF00FFFF00FFA5A5A5FBFBFBEFEFEFF0F0F0D2CDDE8E7EC36D
          68E66667F25A5BEC3738E11B1CD11E18B62F1E81BC0ACFFF00FFFF00FFA9A9A9
          FBFBFBF2F2F2D1CBDC9A8AC18983EA6D70F8706BE56E63C06257B8524CD23234
          D1312CB53C2B81B90ECBFF00FFABABABFCFCFCF4F4F4A292BE9F9AEC8C8FFD8B
          85E88575B8CBC5DBC7C1D76555A64F4AC7373AC63C2FB1412D81FF00FFACACAC
          FCFCFCF6F6F6AA99BCA7A3F1A09BEB9584BACDC8DCF6F6F6F3F3F3BFBAD16151
          9E4641BC3A35B14A368EFF00FFADADADFCFCFCF7F7F7D9D3DAAC9BB99D8CB9CF
          CADCF8F8F8F7F7F7F6F6F6F3F3F3C1BBD3564596524295BF14D4FF00FFAFAFAF
          FEFEFEF8F8F8FAFAFAFAFAFAFAFAFAFAFAFAF8F8F8F7F7F7AFAFAFBCBCBCD0D0
          D0ADADADFF00FFFF00FFFF00FFAFAFAFFEFEFEFAFAFAFAFAFAFBFBFBFBFBFBFB
          FBFBFAFAFAF8F8F8BCBCBCD9D9D9AFAFAFFF00FFFF00FFFF00FFFF00FFAFAFAF
          FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF8F8F8D0D0D0AFAFAFFF00
          FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF
          AFAFAFAFAFAFAFAFAFAFAFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Caption = 'Delete Node'
        OnClick = MainMenu_OPLFile_DeleteNodeClick
      end
      object MainMenu_OPLFile_DeleteAll: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFCF13E6502AA66F27ACF603FAFF00FFFF00FFF502
          F8580F8C310F7BC105D5FF00FFFF00FFFF00FFFF00FF6C6C6C7979794D3EAA14
          0FBF211AB66156937978797978794C41781109870C068E33107EFF00FFFF00FF
          FF00FFFF00FF7D7D7DF4F4F47A6DBB2D26CC0406D82B22C1897EBF7D73B31B11
          9806069B110884590D89FF00FFFF00FFFF00FFFF00FF8B8B8BEBEBEBD9D8DF95
          8ACA3931D90C0CDD211FCC1B19BC0505B01A12934A4073EE01F2FF00FF6C6C6C
          797979797979969696EDEDEDE9E9E9E5E5E79C91D02F2CE00A0CDD0708CB1311
          B170649E979799FF00FFFF00FF7D7D7DF4F4F4F1F1F19E9E9EF0F0F0EEEEEEEA
          E9EBACA1CD5A57E62A2BE90F10D71411B87066A0A0A0A2FF00FFFF00FF8B8B8B
          EBEBEBE4E4E4A5A5A5F1F1F1EAE8ECB6ABCD8178DF6766F3605FE14240D42726
          D02820A65E5386EF03F3FF00FF969696EDEDEDE9E9E9AAAAAAF2F2F2B0A4C49C
          95E18789FE8178DA9F94C4978CBD564EC13638CE362EA36A2096FF00FF9E9E9E
          F0F0F0EEEEEEACACACF3F3F3AE9EBDA7A2ED9A93DFAFA5C9F3F3F4F2F2F3958A
          B74D45B43B36B3553193FF00FFA5A5A5F1F1F1F1F1F1ADADADF3F3F3E1DCE1B0
          A0BBAB9EC1F2F1F4F8F8F8F8F8F8F0EFF27A6DA55A4A96CB11DCFF00FFAAAAAA
          F2F2F2F4F4F4AFAFAFF5F5F5FAFAFAFAFAFAFAFAFAFAFAFAFDFDFDD9D9D9C0C0
          C0AFAFAFB3A9B3FF00FFFF00FFACACACF3F3F3F7F7F7AFAFAFFCFCFCFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFDEDCDEAFAFAFC689C6F60EF6FF00FFFF00FFADADAD
          F3F3F3F9F9F9AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFC683
          C6FC02FCFF00FFFF00FFFF00FFAFAFAFF5F5F5FAFAFAFAFAFAFAFAFAFAFAFAFD
          FDFDD9D9D9C0C0C0AFAFAFB3AEB3FF00FFFF00FFFF00FFFF00FFFF00FFAFAFAF
          FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDCDEAFAFAFC689C6F625F6FF00
          FFFF00FFFF00FFFF00FFFF00FFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF
          AFAFAFAFAFC683C6FC02FCFF06FFFF00FFFF00FFFF00FFFF00FF}
        Caption = 'Delete All Nodes'
        OnClick = MainMenu_OPLFile_DeleteAllClick
      end
    end
    object MainMenu_Options: TMenuItem
      Caption = '&Options'
      OnClick = MainMenu_OptionsClick
    end
  end
  object Font: TGLWindowsBitmapFont
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Left = 720
    Top = 24
  end
  object XPManifest1: TXPManifest
    Left = 752
    Top = 24
  end
  object PopupMenu_CoordinateSys: TPopupMenu
    Left = 624
    Top = 24
    object PopUp_CoordSys_CopyXY: TMenuItem
      Caption = 'Copy X,Y Coordinates to clipboard'
      OnClick = PopUp_CoordSys_CopyXYClick
    end
    object PopupMenu_CoordSys_CopyXYZ: TMenuItem
      Caption = 'Copy X,Y,Z Coordinates to clipboard'
      OnClick = PopupMenu_CoordSys_CopyXYZClick
    end
    object PopUp_CoordSys_CopyXYSpawn: TMenuItem
      Caption = 'Copy X,Y Coordinates to clipboard divided by 32 ( spawn syntax )'
      OnClick = PopUp_CoordSys_CopyXYSpawnClick
    end
    object PopUp_CoordSys_CopyXYZ: TMenuItem
      Caption = 'Copy X,Y,Z Coordinates to clipboard ( NPC Syntax )'
      OnClick = PopUp_CoordSys_CopyXYZClick
    end
    object PopUp_CoordSys_CopyX: TMenuItem
      Caption = 'Copy X Coordinate to clipboard'
      OnClick = PopUp_CoordSys_CopyXClick
    end
    object PopUp_CoordSys_CopyY: TMenuItem
      Caption = 'Copy Y Coordinate to clipboard'
      OnClick = PopUp_CoordSys_CopyYClick
    end
    object PopUp_CoordSys_CopyZ: TMenuItem
      Caption = 'Copy Z Coordinate to clipboard'
      OnClick = PopUp_CoordSys_CopyZClick
    end
  end
  object GLMaterialLibrary: TGLMaterialLibrary
    Left = 600
    Top = 24
  end
  object Timer_AutoSave: TTimer
    Enabled = False
    OnTimer = Timer_AutoSaveTimer
    Left = 784
    Top = 24
  end
end
