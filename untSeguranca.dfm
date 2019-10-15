object frmSeguranca: TfrmSeguranca
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Seguran'#231'a'
  ClientHeight = 90
  ClientWidth = 483
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
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 81
    Height = 13
    Caption = 'Senha Cadastro:'
  end
  object Label2: TLabel
    Left = 248
    Top = 32
    Width = 88
    Height = 13
    Caption = 'Senha Seguran'#231'a:'
  end
  object DBEdit1: TDBEdit
    Left = 119
    Top = 29
    Width = 114
    Height = 21
    DataField = 'bm_senha'
    DataSource = frmPrincipal.DataSource2
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 342
    Top = 29
    Width = 121
    Height = 21
    DataField = 'bm_senha_seguranca'
    DataSource = frmPrincipal.DataSource2
    TabOrder = 1
  end
end
