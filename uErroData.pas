unit uErroData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Skia, Skia.Vcl, Vcl.ExtCtrls;

type
  TfErroData = class(TForm)
    skErro: TSkAnimatedImage;
    skLoading: TSkAnimatedImage;
    SkLabel1: TSkLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fErroData: TfErroData;

implementation

{$R *.dfm}

procedure TfErroData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := False;
end;

procedure TfErroData.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TfErroData.Timer1Timer(Sender: TObject);
begin
  fErroData.Close;
end;

end.
