unit C_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button0: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ButtonDivision: TButton;
    ButtonMultiplication: TButton;
    ButtonSubtraction: TButton;
    ButtonAddition: TButton;
    ButtonTotal: TButton;
    ButtonClearNubmer: TButton;
    ButtonClearAll: TButton;
    ButtonClearLastDigit: TButton;
    ButtonPoint: TButton;
    ButtonChangeSign: TButton;
    ButtonOpenBracket: TButton;
    ButtonCloseBracket: TButton;
    ButtonExit: TButton;
    Buttonsqr: TButton;
    ButtonSqrt: TButton;
    ButtonObr: TButton;
    BackGround: TImage;
    procedure Button0Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ButtonDivisionClick(Sender: TObject);
    procedure ButtonMultiplicationClick(Sender: TObject);
    procedure ButtonSubtractionClick(Sender: TObject);
    procedure ButtonAdditionClick(Sender: TObject);
    procedure ButtonTotalClick(Sender: TObject);
    procedure ButtonClearNubmerClick(Sender: TObject);
    procedure ButtonClearAllClick(Sender: TObject);
    procedure ButtonClearLastDigitClick(Sender: TObject);
    procedure ButtonPointClick(Sender: TObject);
    procedure ButtonChangeSignClick(Sender: TObject);
    procedure ButtonOpenBracketClick(Sender: TObject);
    procedure ButtonCloseBracketClick(Sender: TObject);
    procedure ButtonExitClick(Sender: TObject);
    //procedure ButtonsqrClick(Sender: TObject);
    //procedure ButtonSqrtClick(Sender: TObject);
    procedure ButtonObrClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form1: TForm1;



implementation
var       sum,sum1,n,n1:real;
          k,k1:real;
          operation:char='@';
          operation1:char='#';
          operationM:char='@';
          s1,s2:string;
          check:boolean=false;
          memorysum1:real;
          memoryoperation:char;
           
procedure operate;
  var code:integer;
  begin
  case operation1 of
  '(': begin
       s1:=Form1.Edit1.text;
       Form1.Edit1.clear;
       val(s1,n1,code);
       case operation of
        '@':  begin sum1:=n1; k1:=n1;  end;
        '+':  begin k1:=n1; sum1:=sum1+n1; end;
        '-':  begin k1:=0-n1; sum1:=sum1-n1; end;
        '*':  begin sum1:= sum1-k1; k1:=k1*n1; sum1:=sum1+k1; end;
        '/':  begin sum1:=sum1-k1; k1:=k1/n1; sum1:=sum1+k1; end;
        //'^':  begin sum1:=sum1-k1; k1:=k1*k1; sum1:=sum1+k1; end;
       end;
       end;

  ')': begin
       n:=sum1;
       case operationM of
        '@':  begin sum:=n; k:=n;  end;
        '+':  begin k:=n; sum:=sum+n; end;
        '-':  begin k:=0-n; sum:=sum-n; end;
        '*':  begin sum:= sum-k; k:=k*n; sum:=sum+k; end;
        '/':  begin sum:=sum-k; k:=k/n; sum:=sum+k; end;
        //'^':  begin sum:=sum-k; k:=k*k; sum:=sum+k; end;
       end;
       operation1:='#';
       end ;

  '#': begin
       s1:=Form1.Edit1.text;
       Form1.Edit1.clear;
       val(s1,n,code);
        case operation of        { выполняем операцию}
        '@':  begin sum:=n; k:=n; end;
        '+':  begin k:=n; sum:=sum+n; end;
        '-':  begin k:=0-n; sum:=sum-n; end;
        '*':  begin sum:=sum-k; k:=k*n; sum:=sum+k;  end;
        '/':  begin sum:=sum-k; k:=k/n; sum:=sum+k; end;
        //'^':  begin sum:=sum-k; k:=k*k; sum:=sum+k; end;
        //'&':  begin sum:=sum-k; k:=sqrt(k); sum:=sum+k; end;
        end;
       end;
  end;
  end;

{$R *.dfm}

procedure TForm1.ButtonPointClick(Sender: TObject);
  var point1:boolean;
      i:integer;
  begin
  point1:=false;
  for i:=1 to length(Edit1.Text) do
    if Edit1.Text[i]='.' then
      point1:=true;
  if (Edit1.text<>'') and (point1=false) then
    begin
    Edit1.text:=Edit1.text+'.';
    Edit2.text:=Edit2.text+'.';
    point1:=true;
    end;
  end;

procedure TForm1.Button0Click(Sender: TObject);
  begin
  if Edit1.text='' then
    begin
    Edit1.text:=Edit1.text+'0.';
    Edit2.text:=Edit2.text+'0.';
    end
  else
    begin
    Edit1.text:=Edit1.text+'0';
    Edit2.text:=Edit2.text+'0';
    end;
  end;

procedure TForm1.Button1Click(Sender: TObject);
  begin
  Edit1.text:=Edit1.text+'1';
  Edit2.text:=Edit2.text+'1';
  end;

procedure TForm1.Button2Click(Sender: TObject);
  begin
  Edit1.text:=Edit1.text+'2';
  Edit2.text:=Edit2.text+'2';
  end;

procedure TForm1.Button3Click(Sender: TObject);
  begin
  Edit1.text:=Edit1.text+'3';
  Edit2.text:=Edit2.text+'3';
  end;

procedure TForm1.Button4Click(Sender: TObject);
  begin
  Edit1.text:=Edit1.text+'4';
  Edit2.text:=Edit2.text+'4';
  end;

procedure TForm1.Button5Click(Sender: TObject);
  begin
  Edit1.text:=Edit1.text+'5';
  Edit2.text:=Edit2.text+'5';
  end;

procedure TForm1.Button6Click(Sender: TObject);
  begin
  Edit1.text:=Edit1.text+'6';
  Edit2.text:=Edit2.text+'6';
  end;

procedure TForm1.Button7Click(Sender: TObject);
  begin
  Edit1.text:=Edit1.text+'7';
  Edit2.text:=Edit2.text+'7';
  end;

procedure TForm1.Button8Click(Sender: TObject);
  begin
  Edit1.text:=Edit1.text+'8';
  Edit2.text:=Edit2.text+'8';
  end;

procedure TForm1.Button9Click(Sender: TObject);
  begin
  Edit1.text:=Edit1.text+'9';
  Edit2.text:=Edit2.text+'9';
  end;



procedure TForm1.ButtonClearLastDigitClick(Sender: TObject);
  begin
  if Edit1.text<>'' then
    begin
    s1:=Edit1.text;
    s2:=Edit2.text;
    delete(s1,length(s1),1);
    delete(s2,length(s2),1);
    Edit1.Text:=s1;
    Edit2.Text:=s2;
    end;
  end;

procedure TForm1.ButtonChangeSignClick(Sender: TObject);
  begin
  if Edit1.text<>''  then
    begin
    s1:=Edit1.text;
    s2:=Edit2.Text;
    if s1[1]<>'-' then
      begin
      delete(s2,length(s2)-length(s1)+1,length(s1));
      s1:='-'+s1;
      s2:=s2+'('+s1+')';       
      end
    else
      begin
      delete(s2,length(s2)-length(s1)-1,length(s1)+2);
      delete(s1,1,1);
      s2:=s2+s1;
      end;
    Edit1.Text:=s1;
    Edit2.Text:=s2;
    end;
  end;

procedure TForm1.ButtonObrClick(Sender: TObject);
  var code1:integer;
      n1:real;
  begin
  if Edit1.text<>'' then
    begin
    s1:=Edit1.text;
    Edit1.clear;
    s2:=Edit2.Text;
    delete(s2,length(s2)-length(s1)+1,length(s1));
    val(s1,n1,code1);
    n1:=1/n1;
    s1:=floattostr(n1);
    s1[pos(',',s1)]:='.';
    Edit1.text:=s1;
    delete(s1,5,length(s1)-5);
    Edit2.Text:=s2+s1;
    end;
  end;

procedure TForm1.ButtonOpenBracketClick(Sender: TObject);
  begin
  if (check=false) then
    begin
    check:=true;
    Edit2.text:=Edit2.text+'(';
    operationM:=operation;
    operation:='@';
    operation1:='(';
    end
  else
    if Edit2.Text[length(Edit2.Text)]='(' then
      begin
      check:=false;
      s2:=Edit2.text;
      delete(s2,length(s2),1);
      Edit2.Text:=s2;
      operation:=operationM;
      operationM:='@';
      operation1:='#';
      end;
  end;

procedure TForm1.ButtonCloseBracketClick(Sender: TObject);
  begin
  if (check=true) and (Edit2.Text[length(Edit2.Text)]<>'(') then
    begin
    memorysum1:=sum1;
    memoryoperation:=operation;
    check:=false;    
    operate;
    memoryoperation:=operation;
    Edit2.text:=Edit2.text+')';
    operation1:=')';
    end
  else
    if Edit2.Text[length(Edit2.Text)]=')' then
    begin
    check:=true;
    s2:=Edit2.text;
    delete(s2,length(s2),1);
    Edit2.Text:=s2;
    Edit1.Text:=s1;
    operation1:='(';
    sum1:=memorysum1;
    operation:=memoryoperation
    end;
  
  end;

procedure TForm1.ButtonClearAllClick(Sender: TObject);
  begin
  Edit1.Clear;
  Edit2.Clear;
  operation:='@';
  operation1:='#';
  operationM:='@';
  check:=false;
  end;

procedure TForm1.ButtonClearNubmerClick(Sender: TObject);
  begin
    if Edit1.text<>'' then
    begin
    s1:=Edit1.Text;
    s2:=Edit2.Text;
    if s1[1]<>'-' then
      begin
      delete(s2,length(s2)-length(s1)+1,length(s1));
      Edit2.Text:=s2;
      end
    else
      begin
      delete(s2,length(s2)-length(s1)-1,length(s1)+2);
      Edit2.Text:=s2;
      end;
    Edit1.Clear;
    end;
  end;

procedure TForm1.ButtonTotalClick(Sender: TObject);
  begin
  if Edit2.text<>'' then
    if not (Edit2.text[length(Edit2.text)] in ['+','*','-','/','.']) and (check=false) then
      begin
      operate;
      s1:=floattostr(sum);
      s1[pos(',',s1)]:='.';
      Edit1.text:=s1;
      operation:='@';
      end;
  end;

{procedure TForm1.ButtonsqrClick(Sender: TObject);
  begin
  operate;
  operation:='^';
  end;}

procedure TForm1.ButtonAdditionClick(Sender: TObject);
  begin
  if Edit2.text<>'' then
    if (Edit1.text<>'') or (Edit2.Text[length(Edit2.Text)]=')') then
      begin
      Edit2.text:=Edit2.text+'+';
      operate;
      operation:='+';
      end
    else
      begin
      operation:='+';
      s1:=Edit2.Text;
      delete(s1,length(s1),1);
      Edit2.text:=s1+'+';
      end;
  end;
  
{procedure TForm1.ButtonSqrtClick(Sender: TObject);
  begin
  operate;
  operation:='&';
  end;}

procedure TForm1.ButtonSubtractionClick(Sender: TObject);
  begin
  if Edit2.text<>'' then
    if (Edit1.text<>'') or (Edit2.Text[length(Edit2.Text)]=')') then
      begin
      Edit2.text:=Edit2.text+'-';
      operate;
      operation:='-';
      end
    else
      begin
      operation:='-';
      s1:=Edit2.Text;
      delete(s1,length(s1),1);
      Edit2.text:=s1+'-';
      end;
  end;

procedure TForm1.ButtonMultiplicationClick(Sender: TObject);
  begin
  if Edit2.text<>'' then
    if (Edit1.text<>'') or (Edit2.Text[length(Edit2.Text)]=')') then
      begin
      Edit2.text:=Edit2.text+'*';
      operate;
      operation:='*';
      end
    else
      begin
      operation:='*';
      s1:=Edit2.Text;
      delete(s1,length(s1),1);
      Edit2.text:=s1+'*';
      end;
  end;

procedure TForm1.ButtonDivisionClick(Sender: TObject);
  begin
  if Edit2.text<>'' then
    if (Edit1.text<>'') or (Edit2.Text[length(Edit2.Text)]=')') then
      begin
      Edit2.text:=Edit2.text+'/';
      operate;
      operation:='/';
      end
    else
      begin
      operation:='/';
      s1:=Edit2.Text;
      delete(s1,length(s1),1);
      Edit2.text:=s1+'/';
      end;
  end;


procedure TForm1.ButtonExitClick(Sender: TObject);
  begin
  Close;
  end;

end.



