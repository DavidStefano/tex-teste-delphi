program projectTransporte;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form2},
  uTransporte in 'uTransporte.pas',
  uCarro in 'uCarro.pas',
  uAviao in 'uAviao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
