unit projetosimpleorm.view.pages.configuracoes;

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
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TPageConfiguracoes = class(TForm)
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
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel9: TPanel;
    Shape2: TShape;
    edtTipo: TEdit;
    Panel7: TPanel;
    Shape1: TShape;
    edtPath: TEdit;
    Panel11: TPanel;
    Shape4: TShape;
    edtUserName: TEdit;
    Panel14: TPanel;
    Shape6: TShape;
    edtPassword: TEdit;
    Panel15: TPanel;
    Shape7: TShape;
    edtPorta: TEdit;
    Panel17: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Panel18: TPanel;
    Shape9: TShape;
    edtSchema: TEdit;
    Panel19: TPanel;
    Shape10: TShape;
    edtLocking: TEdit;
    Panel21: TPanel;
    Shape12: TShape;
    edtServidor: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  PageConfiguracoes: TPageConfiguracoes;

implementation

{$R *.dfm}


procedure TPageConfiguracoes.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
