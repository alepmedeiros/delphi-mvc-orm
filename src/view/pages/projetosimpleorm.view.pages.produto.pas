unit projetosimpleorm.view.pages.produto;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TPageProduto = class(TForm)
    pnlContainer: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    Image2: TImage;
    SpeedButton2: TSpeedButton;
    Panel4: TPanel;
    Image3: TImage;
    SpeedButton3: TSpeedButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Image4: TImage;
    Shape1: TShape;
    Panel8: TPanel;
    Label13: TLabel;
    Panel24: TPanel;
    Shape7: TShape;
    edtCodigoCliente: TEdit;
    Label1: TLabel;
    Panel9: TPanel;
    Shape2: TShape;
    Edit1: TEdit;
    Label2: TLabel;
    Panel10: TPanel;
    Shape3: TShape;
    Edit2: TEdit;
    SpeedButton4: TSpeedButton;
    OD: TOpenDialog;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  PageProduto: TPageProduto;

implementation

{$R *.dfm}
{ TPageProduto }

procedure TPageProduto.SpeedButton1Click(Sender: TObject);
begin
  close;
end;


procedure TPageProduto.SpeedButton4Click(Sender: TObject);
begin
  if OD.Execute then
    Image4.Picture.LoadFromFile(OD.FileName);
end;

end.
