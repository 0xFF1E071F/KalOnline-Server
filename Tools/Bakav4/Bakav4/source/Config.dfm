object Form1: TForm1
  Left = 717
  Top = 530
  Width = 457
  Height = 381
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ValueListEditor1: TValueListEditor
    Left = 8
    Top = 8
    Width = 306
    Height = 300
    TabOrder = 0
  end
  object newplayers: TListBox
    Left = 320
    Top = 8
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 1
  end
  object awayplayer: TListBox
    Left = 320
    Top = 120
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 2
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    OnThreadStart = ServerSocket1ThreadStart
    OnClientConnect = ServerSocket1ClientConnect
    OnClientDisconnect = ServerSocket1ClientDisconnect
    OnClientError = ServerSocket1ClientError
    Left = 8
    Top = 312
  end
  object checkdata: TTimer
    Enabled = False
    Interval = 1
    OnTimer = checkdataTimer
    Left = 40
    Top = 312
  end
  object radomemytimer: TTimer
    Interval = 5000
    OnTimer = radomemytimerTimer
    Left = 72
    Top = 312
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Host = 'localhost'
    Port = 30002
    OnDisconnect = ClientSocket1Disconnect
    OnError = ClientSocket1Error
    Left = 104
    Top = 312
  end
end
