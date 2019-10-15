program AgendaHyperion;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untCadastro in 'untCadastro.pas' {frmCadastro},
  untSeguranca in 'untSeguranca.pas' {frmSeguranca},
  untDetalhes in 'untDetalhes.pas' {frmDetalhes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Hyperion - Agenda Personalizada';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
