program ProjetoCalculadora;

uses
  System.StartUpCopy,
  FMX.Forms,
  uCalculadora in 'uCalculadora.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
