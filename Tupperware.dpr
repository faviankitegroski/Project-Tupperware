program Tupperware;

uses
  Vcl.Forms,
  uMenu in 'uMenu.pas' {fMenu},
  uErroData in 'uErroData.pas' {fErroData};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMenu, fMenu);
  Application.CreateForm(TfErroData, fErroData);
  Application.Run;
end.
