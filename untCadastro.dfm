object frmCadastro: TfrmCadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro'
  ClientHeight = 420
  ClientWidth = 709
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 495
      Top = 8
      Width = 180
      Height = 25
      DataSource = frmPrincipal.DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object btnNovo: TBitBtn
      Left = 10
      Top = 8
      Width = 91
      Height = 25
      Caption = 'F2 - Novo'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btnNovoClick
    end
    object btnExcluir: TBitBtn
      Left = 107
      Top = 8
      Width = 91
      Height = 25
      Caption = 'F3 - Excluir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnAlterar: TBitBtn
      Left = 204
      Top = 8
      Width = 91
      Height = 25
      Caption = 'F4 - Alterar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = btnAlterarClick
    end
    object btnGravar: TBitBtn
      Left = 301
      Top = 8
      Width = 91
      Height = 25
      Caption = 'F5 - Gravar'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      TabOrder = 4
      OnClick = btnGravarClick
    end
    object btnCancelar: TBitBtn
      Left = 398
      Top = 8
      Width = 91
      Height = 25
      Caption = 'F6 - Cancelar'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      TabOrder = 5
      OnClick = btnCancelarClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 159
    Width = 693
    Height = 253
    DataSource = frmPrincipal.DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bm_ramal'
        Title.Caption = 'Ramal'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bm_nome'
        Title.Caption = 'Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 367
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bm_departamento'
        Title.Caption = 'Departamento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMaroon
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 224
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 8
    Top = 47
    Width = 693
    Height = 106
    BevelInner = bvLowered
    Enabled = False
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 13
      Width = 29
      Height = 13
      Caption = 'Ramal'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 88
      Top = 13
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 486
      Top = 13
      Width = 69
      Height = 13
      Caption = 'Departamento'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 16
      Top = 56
      Width = 33
      Height = 13
      Caption = 'Celular'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 142
      Top = 56
      Width = 51
      Height = 13
      Caption = 'Telefone 1'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 268
      Top = 56
      Width = 51
      Height = 13
      Caption = 'Telefone 2'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 394
      Top = 56
      Width = 28
      Height = 13
      Caption = 'E-mail'
      FocusControl = DBEdit7
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 29
      Width = 66
      Height = 21
      CharCase = ecUpperCase
      DataField = 'bm_ramal'
      DataSource = frmPrincipal.DataSource1
      TabOrder = 0
      OnExit = DBEdit1Exit
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 29
      Width = 392
      Height = 21
      CharCase = ecUpperCase
      DataField = 'bm_nome'
      DataSource = frmPrincipal.DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 486
      Top = 29
      Width = 202
      Height = 21
      CharCase = ecUpperCase
      DataField = 'bm_departamento'
      DataSource = frmPrincipal.DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 72
      Width = 108
      Height = 21
      CharCase = ecUpperCase
      DataField = 'bm_celular'
      DataSource = frmPrincipal.DataSource1
      MaxLength = 14
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 142
      Top = 72
      Width = 120
      Height = 21
      CharCase = ecUpperCase
      DataField = 'bm_telefone1'
      DataSource = frmPrincipal.DataSource1
      MaxLength = 13
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 268
      Top = 72
      Width = 120
      Height = 21
      CharCase = ecUpperCase
      DataField = 'bm_telefone2'
      DataSource = frmPrincipal.DataSource1
      MaxLength = 13
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 394
      Top = 72
      Width = 294
      Height = 21
      CharCase = ecLowerCase
      DataField = 'bm_email'
      DataSource = frmPrincipal.DataSource1
      TabOrder = 6
    end
  end
  object qryConsulta: TZQuery
    Connection = frmPrincipal.ZConnection1
    Params = <>
    Left = 376
    Top = 248
  end
end
