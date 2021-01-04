<%@ Page  Language="C#" AutoEventWireup="true"
 CodeBehind="admin.aspx.cs" Inherits="projet_formation.admin" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>
<html>

<head runat="server">
    <title> تسجيل الدخول</title>
    <style type="text/css">
    
     Button#Button1.over
        {
            background-color: #008CBA;
            color: white;
            border: 2px solid #555555;
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
            
            }
      span#b
        {
            -webkit-transform: rotateZ(90deg); 
            transform: rotate(90deg); 
            
            
            }
        .style2
        {   -webkit-transition-duration: 0.4s;
            transition-duration: 0.4s;
            font-family: Arial;
            
        }

        .style18
        {
            width: 266px;
            height: 258px;
            border: 1px solid #ffffff;
            background-color: #000000;
        }
        

    * {margin: 0; padding: 0; box-sizing: border-box;
    }

       body {

           
            background-image:url('IMAGE%20FOLDER/img.jpg');
            background-repeat:no-repeat;
            background-padding:1000 1000 1000 1000 inherit ;
            volume:x-soft;
            
        }
       main 
       {
	        width: 500px; margin: 0 auto; padding-bottom: 10px;
	        background: white; border-radius: 3px; overflow: hidden;
        }
       h1 {
	        font-size: 24px; font-weight: normal;
	        background: hsl(120, 40%, 95%); color: hsl(120, 40%, 40%);
	        text-align: center; 
	        padding: 20px 0; margin-bottom: 40px;
        }
</style>
  
            
</head>
<body>
   <form id="form1" runat="server">
  
            <div align="center" 
                style="text-align: center; white-space: normal; line-height: normal; position: absolute; top: auto">         
         
            
            <marquee scrollamount="5" color="white" direction="up"  onmouseover="this.stop()" 
                    style="height: 27px; width: 259px"><h3 class="style2">
            تسجيل الدخول</h3></marquee>
           
            
	
     
    <table align="center" class="style18" dir="ltr" 
            
                    style="top: auto; right: auto; left: auto; text-align: center; position: absolute;">
            <tr>
                <td> 
                        
                        <asp:Label ID="Label4" runat="server" style="color: #FFFFFF" 
                            Text="اسم المستخدم" Width="118px"></asp:Label>
       
                       </td>
            </tr>
            <tr>
                <td>
        
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" placeholder="اسم مستخدم"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="اسم مستخدم غير صحيح او مستخدم"                         
                         style="font-size: small; font-family: Arial, Helvetica, sans-serif; color: #FFFFFF" 
                         ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                    <td>                   
                        <asp:Label ID="Label2" runat="server" Text="كلمة المرور" 
                        style="color: #FFFFFF"></asp:Label>
                        </td>
                        
             </tr>
            <tr>
                    <td>
       
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="24px" placeholder= "كلمة المرور" ></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                          ControlToValidate="TextBox2" ErrorMessage="كلمة المرور خاطئة"                         
                           style="font-size: small; font-family: Arial, Helvetica, sans-serif; color: #FFFFFF" 
                           ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td>
       
                       <asp:CheckBox 
                        ID="CheckBox1" runat="server" 
                        oncheckedchanged="CheckBox1_CheckedChanged" 
                        style="font-size: x-small; font-family: Arial, Helvetica, sans-serif; color: #FFFF99;" 
                        Text="البقاء قيد تسجيل الدخول" />     

                </td>
         </tr>
         <tr>
                <td>     
                       <asp:Button ID="Button1" runat="server" Height="39px" onclick="Button1_Click" 
                        style="color: #FFFFFF; background-color: #000000" Text="موافق"
                        Width="102px" />
               </td>
         </tr>
   </table>            
              
         
        </div>
      
  </form>
</body>
</html>
