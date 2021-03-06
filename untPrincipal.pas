unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, ZAbstractConnection, ZConnection, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Data.Win.ADODB, Data.DBXMSSQL, Data.FMTBcd, Data.SqlExpr, Vcl.Menus, System.UITypes,
  frxClass, frxExportPDF, frxDBSet;

Const
  InputBoxMessage = WM_USER + 200;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    btnPesquisar: TBitBtn;
    edtPesquisa: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    Segurana1: TMenuItem;
    DataSource2: TDataSource;
    Timer2: TTimer;
    BitBtn2: TBitBtn;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    BitBtn3: TBitBtn;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    ZQuery1bm_id: TIntegerField;
    ZQuery1bm_ramal: TIntegerField;
    ZQuery1bm_nome: TWideStringField;
    ZQuery1bm_departamento: TWideStringField;
    ZQuery1bm_celular: TWideStringField;
    ZQuery1bm_telefone1: TWideStringField;
    ZQuery1bm_telefone2: TWideStringField;
    ZQuery1bm_email: TWideStringField;
    ZQuery2bm_senha: TWideStringField;
    ZQuery2bm_atualiza: TWideStringField;
    ZQuery2bm_senha_seguranca: TWideStringField;
    DataSource1: TDataSource;
    ZConnection1: TZConnection;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Segurana1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure InputBoxSetPasswordChar(var Msg: TMessage); message InputBoxMessage;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untCadastro, untSeguranca, untDetalhes;

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
var
  InputString: string;
begin
  PostMessage(Handle, InputBoxMessage, 0, 0);
  InputString := InputBox('Senha', 'Digite a senha', '');
  if ZQuery2.FieldByName('bm_senha').AsString = InputString then
  begin
    Application.CreateForm(TfrmCadastro, frmCadastro);
    frmCadastro.ShowModal;
    frmCadastro.Free;
  end;
end;

procedure TfrmPrincipal.BitBtn2Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

procedure TfrmPrincipal.BitBtn3Click(Sender: TObject);
var
  InputString: string;
begin
  PostMessage(Handle, InputBoxMessage, 0, 0);
  InputString := InputBox('Senha', 'Digite a senha', '');
  if ZQuery2.FieldByName('bm_senha').AsString = InputString then
  begin
    BitBtn3.Enabled := False;
    btnPesquisar.Click;
  end;
end;

procedure TfrmPrincipal.BitBtnClick(Sender: TObject);
begin
  ZQuery1.Active := False;
  ZQuery1.SQL.Clear;
  if edtPesquisa.Text <> '' then
    ZQuery1.SQL.Add('SELECT * FROM BM_LISTA WHERE (BM_NOME LIKE ''%'+edtPesquisa.Text+'%'' OR BM_DEPARTAMENTO LIKE ''%'+edtPesquisa.Text+'%'' OR BM_RAMAL LIKE ''%'+edtPesquisa.Text+'%'') ')
  else
    ZQuery1.SQL.Add('SELECT * FROM BM_LISTA WHERE 1 = 1 ');
  if BitBtn3.Enabled = True then
    ZQuery1.SQL.Add('AND (LEN(BM_RAMAL) = 4 OR BM_RAMAL = 9) AND BM_RAMAL <> ''''');
  ZQuery1.Active := True;
end;

procedure TfrmPrincipal.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Ord('D') then
    Begin
      Application.CreateForm(TfrmDetalhes, frmDetalhes);
      frmDetalhes.ShowModal;
      frmDetalhes.Free;
    End;
end;

procedure TfrmPrincipal.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    btnPesquisar.Click;
    edtPesquisa.Clear;
    DBGrid1.SetFocus;
  end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ZConnection1.Connected := False;
  Timer1.Enabled := False;
  Timer2.Enabled := False;
  Action := caNone;
  Application.Terminate;
end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    if ActiveControl <> edtPesquisa then
      edtPesquisa.SetFocus
    else
      Application.Minimize;
  if (ssCtrl in Shift) and (Key=Ord('X')) then //Ctrl+X
    Application.Terminate;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  Try
    ZConnection1.Connected := True;
    ZQuery1.Active := True;
    ZQuery2.Active := True;
  Except
  begin
    MessageDlg('N�o foi possivel se conectar ao banco de dados!',mtError,[mbOK],0);
    Application.Terminate;
  end;
  End;
  if ZQuery2.FieldByName('bm_atualiza').AsString = 'S' then
  begin
    MessageDlg('Sistema em manuten��o! Aguarde alguns minutos para entrar!',mtError,[mbOK],0);
    Application.Terminate;
  end;
  edtPesquisa.SetFocus;
end;

procedure TfrmPrincipal.InputBoxSetPasswordChar(var Msg: TMessage);
var
  hInputForm, hEdit: HWND;
begin
  hInputForm := Screen.Forms[0].Handle;
  if (hInputForm <> 0) then
  begin
    hEdit := FindWindowEx(hInputForm, 0, 'TEdit', nil);
    SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('*'), 0);
  end;
end;

procedure TfrmPrincipal.Segurana1Click(Sender: TObject);
var
  InputString: string;
begin
  PostMessage(Handle, InputBoxMessage, 0, 0);
  InputString := InputBox('Senha', 'Digite a senha', '');
  if ZQuery2.FieldByName('bm_senha_seguranca').AsString = InputString then
  begin
    frmPrincipal.Timer1.Enabled := False;
    Application.CreateForm(TfrmSeguranca, frmSeguranca);
    frmSeguranca.ShowModal;
    frmSeguranca.Free;
  end;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[1].Text := DateToStr(Date);
  StatusBar1.Panels.Items[2].Text := TimeToStr(Time);
end;

procedure TfrmPrincipal.Timer2Timer(Sender: TObject);
begin
  Try
    ZQuery2.Active := False;
    ZQuery2.Active := True;
  if ZQuery2.FieldByName('bm_atualiza').AsString = 'S' then
    Application.Terminate;
  Except
    Application.Terminate;
  End;
end;

end.
