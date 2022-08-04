unit uCalculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit;

type
  TForm1 = class(TForm)
    btnPonto: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn0: TButton;
    btnSubtrair: TButton;
    btnSomar: TButton;
    btnMult: TButton;
    btnIgual: TButton;
    btnDividir: TButton;
    caixaBotoes: TLayout;
    caixaTopo: TLayout;
    lbOperador: TLabel;
    lbNum1: TLabel;
    lbNum2: TLabel;
    btnApagar: TButton;
    btnCE: TButton;
    btnC: TButton;
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure btnMultClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btnPontoClick(Sender: TObject);
    procedure btnCEClick(Sender: TObject);
    procedure btnCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

procedure TForm1.btn0Click(Sender: TObject);
begin
  if (lbOperador.Text = '.') then
  begin
    lbNum1.Text := lbNum1.Text + '0';
  end
    else
  begin
    lbNum2.Text := lbNum2.Text + '0';
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if (lbOperador.Text = '.') then
  begin
    lbNum1.Text := lbNum1.Text + '1';
  end
    else
  begin
    lbNum2.Text := lbNum2.Text + '1';
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
begin
  if (lbOperador.Text = '.') then
  begin
    lbNum1.Text := lbNum1.Text + '2';
  end
    else
  begin
    lbNum2.Text := lbNum2.Text + '2';
  end;
end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if (lbOperador.Text = '.') then
  begin
    lbNum1.Text := lbNum1.Text + '3';
  end
    else
  begin
    lbNum2.Text := lbNum2.Text + '3';
  end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if (lbOperador.Text = '.') then
  begin
    lbNum1.Text := lbNum1.Text + '4';
  end
    else
  begin
    lbNum2.Text := lbNum2.Text + '4';
  end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  if (lbOperador.Text = '.') then
  begin
    lbNum1.Text := lbNum1.Text + '5';
  end
    else
  begin
    lbNum2.Text := lbNum2.Text + '5';
  end;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  if (lbOperador.Text = '.') then
  begin
    lbNum1.Text := lbNum1.Text + '6';
  end
    else
  begin
    lbNum2.Text := lbNum2.Text + '6';
  end;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  if (lbOperador.Text = '.') then
  begin
    lbNum1.Text := lbNum1.Text + '7';
  end
    else
  begin
    lbNum2.Text := lbNum2.Text + '7';
  end;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  if (lbOperador.Text = '.') then
  begin
    lbNum1.Text := lbNum1.Text + '8';
  end
    else
  begin
    lbNum2.Text := lbNum2.Text + '8';
  end;
end;

procedure TForm1.btnApagarClick(Sender: TObject);
begin
  if (lbOperador.Text = '.') then
  begin
    lbNum1.Text := copy(lbNum1.Text, 0, length(lbNum1.Text )-1);
  end
    else
  begin
    lbNum2.Text := copy(lbNum2.Text, 0, length(lbNum2.Text )-1);
  end;
end;

procedure TForm1.btnCClick(Sender: TObject);
begin
  if lbOperador.Text = '.' then
  begin
    lbNum1.Text := '';
  end
    else
  begin
    lbNum2.Text := '';
  end;
end;

procedure TForm1.btnCEClick(Sender: TObject);
begin
  lbOperador.Text := '.';
  lbNum1.Text := '';
  lbNum2.Text := '';

  btnSubtrair.Enabled := true;
  btnSomar.Enabled := true;
  btnMult.Enabled := true;
  btnDividir.Enabled := true;
end;

procedure TForm1.btnDividirClick(Sender: TObject);
begin
  lbOperador.Text := '/';
  btnSubtrair.Enabled := true;
  btnSomar.Enabled := true;
  btnMult.Enabled := true;
  btnDividir.Enabled := false;
end;

procedure TForm1.btnIgualClick(Sender: TObject);
  var n1, n2: double;
  var x: char;
begin
  n1 := StrToFloat(lbNum1.Text);
  n2 := StrToFloat(lbNum2.Text);

//  if(lbOperador.Text = '-') then
//  begin
//    ShowMessage (FloatToStr(n1 - n2));
//  end;
//
//  if(lbOperador.Text = '+') then
//  begin
//    ShowMessage (FloatToStr(n1 + n1));
//  end;
//
//  if(lbOperador.Text = 'x') then
//  begin
//    ShowMessage (FloatToStr(n1 * n2));
//  end;
//
//  if(lbOperador.Text = '/') then
//  begin
//    ShowMessage (FloatToStr(n1 / n2));
//  end;
 x := lbOperador.Text[1];
  case x of
      '-':
      begin
        ShowMessage(FloatToStr(n1 - n2));
      end;
      '+':
      begin
        ShowMessage(FloatToStr(n1 + n2));
      end;
      'x':
      begin
        ShowMessage(FloatToStr(n1 * n2));
      end;
      '/':
      begin
        ShowMessage(FloatToStr(n1 / n2));
      end;
  end;

  lbOperador.Text := '.';
  lbNum1.Text := '';
  lbNum2.Text := '';

  btnSubtrair.Enabled := true;
  btnSomar.Enabled := true;
  btnMult.Enabled := true;
  btnDividir.Enabled := true;
end;

procedure TForm1.btnMultClick(Sender: TObject);
begin
  lbOperador.Text := 'x';
  btnSubtrair.Enabled := true;
  btnSomar.Enabled := true;
  btnMult.Enabled := false;
  btnDividir.Enabled := true;
end;

procedure TForm1.btnPontoClick(Sender: TObject);
begin
  if (lbOperador.Text = '.') then
  begin
    lbNum1.Text := lbNum1.Text + ',';
  end
    else
  begin
    lbNum2.Text := lbNum2.Text + ',';
  end;
end;

procedure TForm1.btnSomarClick(Sender: TObject);
begin
  lbOperador.Text := '+';
  btnSubtrair.Enabled := true;
  btnSomar.Enabled := false;
  btnMult.Enabled := true;
  btnDividir.Enabled := true;
end;

procedure TForm1.btnSubtrairClick(Sender: TObject);
begin
  lbOperador.Text := '-';
  btnSubtrair.Enabled := false;
  btnSomar.Enabled := true;
  btnMult.Enabled := true;
  btnDividir.Enabled := true;
end;

end.
