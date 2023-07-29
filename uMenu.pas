unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Buttons;

type
  TfMenu = class(TForm)
    Shape2: TShape;
    Shape1: TShape;
    Image1: TImage;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Shape7: TShape;
    Image7: TImage;
    Image2: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image12: TImage;
    Image13: TImage;
    Image11: TImage;
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
  private
    alteraShape: Boolean;
    procedure shape_diminuiTam(Shape : TShape);
    procedure shape_aumentaTam(Shape : TShape);
  public
    { Public declarations }
  end;

var
  fMenu: TfMenu;

implementation

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
begin
  if alteraShape then
    Exit;
    
  alteraShape := True;

  Shape.Brush.Color := $006F6F6F;
  Shape.Pen.Style   := psSolid;
  Shape.Pen.Color   := $00454545;
  Shape.Pen.Width   := 2;

  TThread.CreateAnonymousThread(
  procedure
  var
    I : Integer;
  begin
    
    TThread.Synchronize(nil,
    Procedure
    begin
      var I: Integer;
      for I := 44 to 187 do 
      begin
        Shape.Width := I;
      end;
      
      alteraShape := False;
    end);

  end).Start;

end;


procedure TfMenu.shape_diminuiTam(Shape : TShape);
begin
  if alteraShape then
    Exit;

  alteraShape := True;

  Shape.Brush.Color   := $00D9D9D9;
  Shape.Pen.Style     := psClear;

  TThread.CreateAnonymousThread(
  procedure
  var
    I : Integer;
  begin

    TThread.Synchronize(nil,
    Procedure
    begin
      var I: Integer;
      for I := 187 downto 44 do
      begin
        Shape.Width := I;
      end;
      alteraShape := False;
    end);

  end).Start;

end;


{procedure shape_diminuiTam(Shape : TShape);
var
  I, x : Integer;
begin
  x := 0;

  for I := 187 downto 44 do
  begin
    if x = 0 then
    begin
      Shape.Brush.Color   := $00D9D9D9;
      Shape.Pen.Style     := psClear;
      x := 1;

    end;

    Sleep(300);
    Shape.Width := I;
  end;
end;  }






end.
