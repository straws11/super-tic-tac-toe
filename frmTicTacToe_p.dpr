program frmTicTacToe_p;

uses
  Vcl.Forms,
  frmTicTacToe_u in 'frmTicTacToe_u.pas' {frmTicTacToe};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTicTacToe, frmTicTacToe);
  Application.Run;
end.
