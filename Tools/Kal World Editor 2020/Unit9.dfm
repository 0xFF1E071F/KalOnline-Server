object Form_BrowseModel: TForm_BrowseModel
  Left = 411
  Top = 378
  Width = 798
  Height = 591
  Caption = 'Browse Model'
  Color = clBtnFace
  DefaultMonitor = dmPrimary
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 169
    Top = 0
    Height = 424
    Beveled = True
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 552
    Width = 782
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
  end
  object Panel1: TPanel
    Left = 172
    Top = 0
    Width = 610
    Height = 424
    Align = alClient
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    DesignSize = (
      610
      424)
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 608
      Height = 392
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object GLSceneViewer1: TGLSceneViewer
        Left = 1
        Top = 1
        Width = 606
        Height = 390
        Camera = GLCamera
        FieldOfView = 151.237213134765600000
        Align = alClient
        OnMouseMove = GLSceneViewer1MouseMove
      end
    end
    object Button_Save: TButton
      Left = 527
      Top = 397
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Save Model'
      TabOrder = 1
      OnClick = Button_SaveClick
    end
    object Button_Cancel: TButton
      Left = 448
      Top = 397
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      TabOrder = 2
    end
  end
  object TreeView1: TTreeView
    Left = 0
    Top = 0
    Width = 169
    Height = 424
    Align = alLeft
    Images = ImageList1
    Indent = 19
    TabOrder = 1
    OnClick = TreeView1Click
    OnCollapsing = TreeView1Collapsing
    OnExpanding = TreeView1Expanding
  end
  object FileBox: TFileListBox
    Left = 0
    Top = 424
    Width = 782
    Height = 128
    Align = alBottom
    ItemHeight = 13
    Mask = '*.gb'
    TabOrder = 2
    OnChange = FileBoxChange
  end
  object GLScene: TGLScene
    Left = 152
    Top = 8
    object GLDummyCube: TGLDummyCube
      ShowAxes = True
      CubeSize = 1.000000000000000000
    end
    object GLFreeForm: TGLFreeForm
    end
    object GLLightSource: TGLLightSource
      Ambient.Color = {CDCCCC3ECDCCCC3ECDCCCC3E0000803F}
      ConstAttenuation = 1.000000000000000000
      Diffuse.Color = {6666263F6666263F6666263F0000803F}
      Position.Coordinates = {0000004100008040000080C00000803F}
      LightStyle = lsOmni
      Specular.Color = {9A99593F9A99593F9A99593F0000803F}
      SpotCutOff = 180.000000000000000000
      SpotDirection.Coordinates = {0000FE420000FE420000FE4200000000}
    end
    object GLCamera: TGLCamera
      DepthOfView = 100000.000000000000000000
      FocalLength = 50.000000000000000000
      TargetObject = GLDummyCube
      CameraStyle = csInfinitePerspective
      Position.Coordinates = {0000204100002041000020410000803F}
    end
  end
  object ImageList1: TImageList
    Left = 152
    Top = 40
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000000000346C8600316B8500316B
      8500316B8500316B8500316B8500316B8500316B8500316B860034718D001B38
      4700252E3400153A3D00000000000000000000000000316B8600316B8700316B
      8700316B8700316B8700316B870034718D001E3E51001F445B0023506B002347
      5F002B384000193A420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000041829F0052A5C80052A4
      C70052A4C70052A4C70052A4C70052A4C70052A4C70054A8CC004794B500143C
      4D00CA80570047584F00000000000000000000000000468EAE0053A8CC0051A4
      C70051A4C70051A4C70051A4C70056ADD1002A5D76002B759D00348DBE002A6B
      8E00DC9268003A4E4F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004687A40054A9CB0054A8
      CA0054A8CA0054A8CA0054A8CA0054A8CA0054A8CA0056ACCF004B98B8001944
      5900C88864004A6462000000000000000000000000004993B20056ACCE0054A8
      CA0054A8CA0054A8CA0054A8CA0059B1D5002D607900317BA3003A94C4002F79
      A100DA9B76003D5B630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004B8BA80057AED00057AD
      CF0057ADCF0057ADCF0057ADCF0057ADCF0057ADCF005AB1D400509DBD001E43
      5400BDC1C3004D7B81000000000000000000000000004E98B60059B1D20057AD
      CE0057ADCE0057ADCE0057ADCE005CB6DA0030657C003681A800409BCA00357D
      A200CFD9DE00426B790000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000508FAB005BB3D3005BB2
      D2005BB2D2005BB2D2005BB2D2005BB2D2005BB2D2005CB6D70055A1C0002146
      5600BEBEBE0051808500000000000000000000000000529CBA005CB6D6005BB2
      D2005BB2D2005BB2D2005BB2D20060BCDD0034697F003B87AE0045A2D1003A82
      A700D0D6D90046717D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005595AF005EB8D7005EB7
      D6005EB7D6005EB7D6005EB7D6005EB7D6005EB7D6005FBBDB005AA8C4002448
      5700C3C2C20058888B0000000000000000000000000057A2BE005FBBDA005EB7
      D6005EB7D6005EB7D6005EB7D60062C0E000376B8100438FB6004DAAD7003E88
      AA00D6DADB004D78830000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000599BB40061BEDB0061BD
      DA0061BDDA0061BDDA0061BDDA0061BDDA0061BDDA0062C1DE005EADC8002E52
      62009DA2A6004B8983000000000000000000000000005BA8C20062C1DE0061BD
      DA0061BDDA0061BDDA0061BDDA0064C3E2003B708800438AAC0053B0DC004896
      BA00B2C4CD00457F7E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005EA0B70065C4DF0065C3
      DE0065C3DE0065C3DE0065C3DE0065C3DE0065C3DE0066C6E10063B8D3005489
      9D002D5863004B8983000000000000000000000000005FADC60066C7E20065C3
      DE0065C3DE0065C3DE0065C3DE0068C9E6005298B1003C7088004B95B80057AB
      D30043829B0043829B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5BB0068C9E30068C8
      E20068C8E20068C8E20068C8E20068C8E20068C8E20068C7E20069CCE70069C7
      E20051A3A1000000000000000000000000000000000064B2CA0069CCE60068C8
      E20068C8E20068C8E20068C8E20068C9E3006CC9E300538FA6003A6579005899
      B8004F8C93000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000069AABF006BCEE8006BCD
      E7006BCDE7006BCDE7006BCDE7006BCDE7006BCDE7006BCDE7006BCDE6006BD2
      ED005DC1C5000000000000000000000000000000000069B7CF006CD1EB006BCD
      E7006BCDE7006BCDE7006BCDE7006BCDE6006BD1EA0070C6DE00447285006098
      B100518C94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006EB0C3006ED3EC006ED2
      EB006ED2EB006ED2EB006ED2EB006ED2EB006ED2EB006ED2EB006ED2EB006ED5
      EF0061C3C600000000000000000000000000000000006DBDD3006ED6EF006ED2
      EB006ED2EB006ED2EB006ED2EB006ED2EB006ED2EA0073DFF900487D90006B9F
      B800528D95000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073B5C70072D8EF0072D7
      EE0072D7EE0072D7EE0072D7EE0072D7EE0072D7EE0072D7EE0072D7EE0072DA
      F20066C9C9000000000000000000000000000000000071C2D60072DBF20072D7
      EE0072D7EE0072D7EE0072D7EE0072D7EE0072D7EE0076E0F8004C80910075A7
      BE00548E95000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000078BACB0076DEF40076DD
      F30076DDF30076DDF30076DDF30076DDF30076DDF30076DDF30076DDF30076E0
      F7006BCECE000000000000000000000000000000000076C7DB0076E1F70076DD
      F30076DDF30076DDF30076DDF30076DDF30076DDF3007AE6FD00518493007FAE
      C400568F96000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007EBFD00078E8FE0078E7
      FD0078E7FD0078E7FD0078E7FD0078E7FD0078E7FD0078E7FD0078E7FD0078EA
      FF0071D6D400000000000000000000000000000000007ACFE20077EBFF0078E7
      FD0078E7FD0078E7FD0078E7FD0078E7FD0078E7FD007BF1FF00538596008BB6
      CC00579198000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082C4D30080D4E50080D3
      E40080D3E40080D3E40080D3E40080D3E40080D3E40080D3E40080D3E40080D4
      E60078D6D3000000000000000000000000000000000081CADA007FD5E60080D3
      E40080D3E40080D3E40080D3E40080D3E40080D3E40082DAE900678E9D007AA6
      B700579196000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0080038003000000008003800300000000
      8003800300000000800380030000000080038003000000008003800300000000
      8003800300000000800380030000000080078007000000008007800700000000
      8007800700000000800780070000000080078007000000008007800700000000
      8007800700000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
