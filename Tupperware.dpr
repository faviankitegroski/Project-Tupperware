program Tupperware;

uses
  Vcl.Forms,
  uMenu in 'uMenu.pas' {fMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMenu, fMenu);
  Application.Run;
end.
