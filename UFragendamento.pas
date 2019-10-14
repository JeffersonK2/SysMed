unit UFragendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinsDefaultPainters,
  dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPC, Vcl.WinXCalendars, Vcl.Grids,
  Vcl.Samples.Calendar, Vcl.ComCtrls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompGrids, IWCompCalendar, cxContainer,
  cxEdit, Data.DB, Vcl.DBGrids, cxTextEdit, cxLabel, cxMaskEdit, cxButtonEdit,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxDropDownEdit, Vcl.Mask;

type
  TFrmagendamento = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    cod_produto: TcxButtonEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    desc_produto: TcxTextEdit;
    GridItens: TDBGrid;
    MonthCalendar1: TMonthCalendar;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxLabel9: TcxLabel;
    cxLabel8: TcxLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    cxComboBox1: TcxComboBox;
    cxLabel12: TcxLabel;
    Remarcar: TcxButton;
    MaskEdit4: TMaskEdit;
    cxLabel13: TcxLabel;
    Retorno: TcxButton;
    Memo1: TMemo;
    cxLabel14: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmagendamento: TFrmagendamento;

implementation

{$R *.dfm}

end.
