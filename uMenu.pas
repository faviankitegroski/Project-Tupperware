unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Buttons, Skia, Skia.Vcl;

type
  TfMenu = class(TForm)
    Shape2: TShape;
    Shape1: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    animEnviar: TSkAnimatedImage;
    animCaminhao: TSkAnimatedImage;
    animCasa: TSkAnimatedImage;
    animCaixas: TSkAnimatedImage;
    procedure Shape2MouseLeave(Sender: TObject);
    procedure Shape2MouseEnter(Sender: TObject);
    procedure Shape3MouseEnter(Sender: TObject);
    procedure Shape4MouseEnter(Sender: TObject);
    procedure Shape5MouseEnter(Sender: TObject);
    procedure Shape6MouseEnter(Sender: TObject);
    procedure Shape3MouseLeave(Sender: TObject);
    procedure Shape4MouseLeave(Sender: TObject);
    procedure Shape5MouseLeave(Sender: TObject);
    procedure Shape6MouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure animEnviarMouseEnter(Sender: TObject);
    procedure animCaminhaoMouseEnter(Sender: TObject);
    procedure animCasaMouseEnter(Sender: TObject);
    procedure animCaixasMouseEnter(Sender: TObject);
    procedure animCasaMouseLeave(Sender: TObject);
    procedure animCaixasMouseLeave(Sender: TObject);
    procedure animCaminhaoMouseLeave(Sender: TObject);
    procedure animEnviarMouseLeave(Sender: TObject);
    procedure animEnviarClick(Sender: TObject);
  private
    alteraShape: Boolean;
    procedure shape_diminuiTam(Shape : TShape);
    procedure shape_aumentaTam(Shape : TShape);
    procedure habilitaAnim(TSkAni : TSkCustomAnimatedControl);
  public
    { Public declarations }
  end;

var
  fMenu: TfMenu;

implementation

uses uErroData;

{$R *.dfm}


//---------------------- Aumenta tamanho dos shapes  -------------------------//
procedure TfMenu.FormCreate(Sender: TObject);
begin
  alteraShape := False;
end;

procedure TfMenu.Shape2MouseEnter(Sender: TObject);
begin
  shape_aumentaTam(Shape2);
end;

procedure TfMenu.Shape3MouseEnter(Sender: TObject);
begin
  shape_aumentaTam(Shape3);
end;

procedure TfMenu.Shape4MouseEnter(Sender: TObject);
begin
  shape_aumentaTam(Shape4);
end;

procedure TfMenu.Shape5MouseEnter(Sender: TObject);
begin
  shape_aumentaTam(Shape5);
end;

procedure TfMenu.Shape6MouseEnter(Sender: TObject);
begin
  shape_aumentaTam(Shape6);
end;
//----------------------------------------------------------------------------//


//---------------------- Diminui tamanho dos shapes  ------------------------//
procedure TfMenu.Shape2MouseLeave(Sender: TObject);
begin
  shape_diminuiTam(Shape2);
end;

procedure TfMenu.Shape3MouseLeave(Sender: TObject);
begin
  shape_diminuiTam(Shape3);
end;

procedure TfMenu.Shape4MouseLeave(Sender: TObject);
begin
  shape_diminuiTam(Shape4);
end;

procedure TfMenu.Shape5MouseLeave(Sender: TObject);
begin
  shape_diminuiTam(Shape5);
end;

procedure TfMenu.Shape6MouseLeave(Sender: TObject);
begin
  shape_diminuiTam(Shape6);
end;
//----------------------------------------------------------------------------//




procedure TfMenu.shape_aumentaTam(Shape : TShape);
var
  I : Integer;
begin
  Shape.Brush.Color   := $006F6F6F;
  Shape.Pen.Style     := psSolid;
  Shape.Pen.Width	    := 2;
  
  for I := 44 to 187 do
  begin
    Shape.Width := I;
  end;
end;  


procedure TfMenu.shape_diminuiTam(Shape : TShape);
var
  I : Integer;
begin
  Shape.Brush.Color   := $00D9D9D9;
  Shape.Pen.Style     := psClear;

  for I := 187 downto 44 do
  begin
    Shape.Width := I;
  end;
end;  




procedure TfMenu.animCasaMouseEnter(Sender: TObject);
begin
  habilitaAnim(animCasa);
end;

procedure TfMenu.animCaixasMouseEnter(Sender: TObject);
begin
  habilitaAnim(animCaixas);
end;

procedure TfMenu.animCaminhaoMouseEnter(Sender: TObject);
begin
  habilitaAnim(animCaminhao);
end;

procedure TfMenu.animEnviarMouseEnter(Sender: TObject);
begin
  habilitaAnim(animEnviar);
end;


procedure TfMenu.animCasaMouseLeave(Sender: TObject);
begin
  habilitaAnim(animCasa);
end;

procedure TfMenu.animCaixasMouseLeave(Sender: TObject);
begin
  habilitaAnim(animCaixas);
end;

procedure TfMenu.animCaminhaoMouseLeave(Sender: TObject);
begin
  habilitaAnim(animCaminhao);
end;

procedure TfMenu.animEnviarMouseLeave(Sender: TObject);
begin
  habilitaAnim(animEnviar);
end;




procedure TfMenu.habilitaAnim(TSkAni : TSkCustomAnimatedControl);
begin
  if not TSkAnimatedImage(TSkAni).Animation.Enabled = true then
    TSkAnimatedImage(TSkAni).Animation.Enabled := True
  else
    TSkAnimatedImage(TSkAni).Animation.Enabled := False;
end;







procedure TfMenu.animEnviarClick(Sender: TObject);
begin
  Application.CreateForm(TfErroData, fErroData);
  fErroData.ShowModal;
end;



end.
