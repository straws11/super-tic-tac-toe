object frmTicTacToe: TfrmTicTacToe
  Left = 0
  Top = 0
  Caption = 'Super Tic Tac Toe'
  ClientHeight = 591
  ClientWidth = 1038
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lblPlayerTurn: TLabel
    Left = 872
    Top = 20
    Width = 9
    Height = 64
    Font.Charset = ANSI_CHARSET
    Font.Color = clBtnFace
    Font.Height = -40
    Font.Name = 'Papyrus'
    Font.Style = []
    ParentFont = False
  end
  object lblNotice: TLabel
    Left = 800
    Top = 600
    Width = 385
    Height = 25
    Caption = 'Computer'#39's turn, press '#39'N'#39' for player turn'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object pnlControls: TPanel
    Left = 351
    Top = 154
    Width = 201
    Height = 259
    ParentBackground = False
    TabOrder = 0
    object rgpGamemode: TRadioGroup
      Left = 8
      Top = 8
      Width = 185
      Height = 105
      Caption = 'Game Type'
      Items.Strings = (
        '2 Player'
        'Player vs Computer')
      TabOrder = 0
    end
    object btnNewGame: TButton
      Left = 48
      Top = 133
      Width = 97
      Height = 31
      Caption = 'Start New Game'
      TabOrder = 1
      OnClick = btnNewGameClick
    end
    object btnCheck: TButton
      Left = 16
      Top = 201
      Width = 169
      Height = 25
      Caption = '&Next Player'
      TabOrder = 2
      OnClick = btnCheckClick
    end
  end
  object pnlGameBoard: TPanel
    Left = 763
    Top = 81
    Width = 510
    Height = 510
    Caption = 'pnlGameBoard'
    ParentBackground = False
    TabOrder = 1
    object imgBoard: TImage
      Left = 5
      Top = 5
      Width = 500
      Height = 500
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000E10000
        00E10803000000096D22480000004E504C5445FFFFFF000000848484EBEBEBCD
        CDCDBFBFBFDBDBDBE3E3E3969696292929606060D1D1D1636363B0B0B08A8A8A
        EFEFEF727272B6B6B64D4D4D797979F4F4F4D5D5D51414142222223131315959
        59034A02C6000001DE4944415478DAEDDBD94EC3301005D0495B5A1ABAB0C3FF
        7F1DFB569682A0603EC1232194F458CAE395E6D8F2F865D2446A0DBECBF7559F
        1B95CCF0B33E37DC44349B54A90D212121212121212121212121212121212121
        2121212121212121212121212121212121212121212121212121615F848BC7FA
        DCDE6B44FB529F5B3E45CC9F72C29D546C52AA9CADEB73C3F7924D9CFDEE73D9
        9DF79C307988DD5984DD5FCD38959A962E331CD40727E53ECD12F76953EEEEF2
        ED3B556B6E63FEA3977A0F090909090909090909090909090909090909090909
        090909090909090909090909090909090909090909FF56D89519E14926F5392F
        BA367116ED43C4FE6B7D6E5432CBD52825ECFFAC3E61E757B39B8AB5F711F38F
        FADCDE5DC461A2D38C57110789FB1BE95EBA5875E7DFB59C703BDE4342424242
        4242424242424242424242424242424242424242424242424242424242424242
        4242424242C2ED11FE4E411FDDD4E74E4AE6F8BA3E777C9B9F829EA662F35265
        66067E7115719AA9745D76679513F6FF6F84FE0BDB4C6A30BB8C38AFFF1B6130
        BE8F38F8A86F19CB8B88B3E754ABD9824E9313F6FFB520242424242424242424
        2424242424242424242424242424242424242424242424242424242424242424
        242424FC23E10F9EF41A622AD7B6040000000049454E44AE426082}
      Stretch = True
    end
    object img1: TImage
      Left = 10
      Top = 17
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img1DblClick
    end
    object img2: TImage
      Left = 135
      Top = 17
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img2DblClick
    end
    object img3: TImage
      Left = 262
      Top = 17
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img3DblClick
    end
    object img4: TImage
      Left = 389
      Top = 17
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img4DblClick
    end
    object img5: TImage
      Left = 10
      Top = 143
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img5DblClick
    end
    object img6: TImage
      Left = 137
      Top = 143
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img6DblClick
    end
    object img7: TImage
      Left = 262
      Top = 143
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img7DblClick
    end
    object img8: TImage
      Left = 389
      Top = 143
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img8DblClick
    end
    object img9: TImage
      Left = 10
      Top = 267
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img9DblClick
    end
    object img10: TImage
      Left = 137
      Top = 267
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img10DblClick
    end
    object img12: TImage
      Left = 389
      Top = 267
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img12DblClick
    end
    object img13: TImage
      Left = 10
      Top = 391
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img13DblClick
    end
    object img14: TImage
      Left = 135
      Top = 391
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img14DblClick
    end
    object img15: TImage
      Left = 262
      Top = 391
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img15DblClick
    end
    object img16: TImage
      Left = 389
      Top = 391
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img16DblClick
    end
    object img11: TImage
      Left = 262
      Top = 267
      Width = 105
      Height = 105
      Center = True
      OnDblClick = img11DblClick
    end
  end
  object pnlHelp: TPanel
    Left = 32
    Top = 448
    Width = 520
    Height = 215
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 2
    object redInfo: TRichEdit
      Left = 16
      Top = 24
      Width = 489
      Height = 175
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        
          'Welcome to Super Tic Tac Toe - the 4x4 version of the original g' +
          'ame'
        
          '----------------------------------------------------------------' +
          '------------------'
        'Rules and Gameplay:'
        
          'You can win by either a vertical, horizontal or diagonal line of' +
          ' 4 pieces, as usual. You can also win by '
        'forming a 2-by-2 block of your pieces.'
        
          'Select one of the two available game modes and click the '#39'Start ' +
          'New Game'#39' button to start a game.'
        
          'Use the key '#39'N'#39' on your keyboard or the button called '#39'Next Play' +
          'er'#39' to allow the next player to play.'
        
          'If you are playing against the computer, you will also need to p' +
          'ress the '#39'N'#39' key after its turn.'
        
          'You may start a new game at any time, just remember to reselect ' +
          'your chosen gamemode first.'
        
          'The computer gamemode is programmed so that it will play like a ' +
          'very attentative player MOST of '
        'the time, not always. This is intentional.'
        
          '----------------------------------------------------------------' +
          '-----------------'
        'made by Dylan Swarts')
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Zoom = 100
    end
  end
  object pnlGameName: TPanel
    Left = 32
    Top = 8
    Width = 265
    Height = 405
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -67
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    object lblGameName: TLabel
      Left = 24
      Top = 36
      Width = 198
      Height = 324
      Caption = 'SUPER   TIC     TAC    TOE'
      WordWrap = True
    end
  end
end
