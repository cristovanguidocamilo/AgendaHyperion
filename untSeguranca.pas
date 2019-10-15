unit untSeguranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmSeguranca = class(TForm)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSeguranca: TfrmSeguranca;

implementation

{$R *.dfm}

uses untPrincipal;

procedure TfrmSeguranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.ZQuery2.Post;
  frmPrincipal.Timer1.Enabled := True;
end;

procedure TfrmSeguranca.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmSeguranca.FormShow(Sender: TObject);
begin
  frmPrincipal.ZQuery2.Edit;
end;

end.
