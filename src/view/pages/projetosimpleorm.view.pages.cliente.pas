unit projetosimpleorm.view.pages.cliente;

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
  Vcl.StdCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids;

type
  TPageCliente = class(TForm)
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
    Panel12: TPanel;
    Panel13: TPanel;
    Shape8: TShape;
    Image4: TImage;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Panel8: TPanel;
    Shape5: TShape;
    Edit5: TEdit;
    Panel9: TPanel;
    Shape2: TShape;
    Edit1: TEdit;
    Label2: TLabel;
    Panel7: TPanel;
    Shape1: TShape;
    Edit2: TEdit;
    Label3: TLabel;
    Panel10: TPanel;
    Shape3: TShape;
    Edit3: TEdit;
    Label4: TLabel;
    Panel11: TPanel;
    Shape4: TShape;
    Edit4: TEdit;
    Label6: TLabel;
    Panel14: TPanel;
    Shape6: TShape;
    Edit6: TEdit;
    Label7: TLabel;
    Panel15: TPanel;
    Shape7: TShape;
    Edit7: TEdit;
    Panel16: TPanel;
    DBGrid1: TDBGrid;
    Panel17: TPanel;
    Label8: TLabel;
    Panel18: TPanel;
    Shape9: TShape;
    Edit8: TEdit;
    Label9: TLabel;
    Panel19: TPanel;
    Shape10: TShape;
    Edit9: TEdit;
    Label10: TLabel;
    Panel20: TPanel;
    Shape11: TShape;
    Edit10: TEdit;
    Label11: TLabel;
    Panel21: TPanel;
    Shape12: TShape;
    Edit11: TEdit;
    Label12: TLabel;
    Panel22: TPanel;
    Shape13: TShape;
    Edit12: TEdit;
    Label13: TLabel;
    Panel23: TPanel;
    Shape14: TShape;
    Edit13: TEdit;
    Label14: TLabel;
    Panel24: TPanel;
    Shape15: TShape;
    Edit14: TEdit;
    Panel25: TPanel;
    Shape16: TShape;
    btnFinalizarPedido: TSpeedButton;
    SpeedButton4: TSpeedButton;
    OD: TOpenDialog;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  PageCliente: TPageCliente;

implementation

{$R *.dfm}

procedure TPageCliente.SpeedButton1Click(Sender: TObject);
begin
close;
end;

procedure TPageCliente.SpeedButton4Click(Sender: TObject);
begin
  if OD.Execute then
    Image4.Picture.LoadFromFile(Od.FileName);
end;

end.
