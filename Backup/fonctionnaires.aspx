<%@ Page Title="الموظفون المستفيدون" Language="C#" MasterPageFile="~/formationm.Master" 
AutoEventWireup="true" CodeBehind="fonctionnaires.aspx.cs" Inherits="projet_formation.fonctionnaires" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        
        <br />

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table dir="ltr" 
            
            style="background-position: center; padding: inherit; margin: auto; width: 580px; border: thick outset #ffffff; background-color: #99CCFF; background-image: none; background-attachment: scroll; font-size: small; line-height: normal; vertical-align: bottom; text-indent: inherit; white-space: pre;" 
            bgcolor="#6699FF" rules="cols" width="300">
                    <tr>
                        <td style="width: 77px">
                        </td>
                        <td style="width: 284px; background-color: #FFFFFF;">
                        <asp:EntityDataSource ID="EntityDataSource2" runat="server" 
                        ConnectionString="name=FORMATIONEntities" 
                        DefaultContainerName="FORMATIONEntities" 
                        EntitySetName="fonctionnaire" Select="it.[SOM], it.[prenom_f]">
                            </asp:EntityDataSource>
                        <asp:DropDownList ID="DropDownList2" runat="server"  
                        DataSourceID="EntityDataSource2" DataTextField="prenom_f" 
                        DataValueField="SOM">
                            </asp:DropDownList>
                            <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black"></asp:TextBox>
                        </td>
                        <td style="width: 213px; background-color: #CCFFFF;">
                            رقم التعيين</td>
                    </tr>
                    <tr>
                        <td style="width: 77px">
                            <%--<asp:RangeValidator ID="RangeValidator5" runat="server" 
                                ControlToValidate="TextBox2" 
                                ErrorMessage="الاسم مكون من اربع الى عشر احرف على الاكثر" ForeColor="Red"></asp:--%><%--RangeValidator>--%>
                        </td>
                        <td style="width: 284px; background-color: #FFFFFF;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="**" ForeColor="#FF5050"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black"></asp:TextBox>
                        </td>
                        <td style="width: 213px; background-color: #CCFFFF;">
                            &nbsp; الاسم الشخصي</td>
                    </tr>
                    <tr>
                        <td style="width: 77px; ">
                            <%--<asp:RangeValidator ID="RangeValidator6" runat="server" 
                                ControlToValidate="TextBox3" 
                                ErrorMessage="الاسم مكون من اربع الى عشر احرف على الاكثر" ForeColor="Red"></asp:RangeValidator>--%>
                        </td>
                        <td style="width: 284px; background-color: #FFFFFF;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black"></asp:TextBox>
                        </td>
                        <td style="width: 213px; background-color: #CCFFFF;">
                            الاسم العائلي</td>
                    </tr>
                    <tr>
                        <td style="width: 77px">
                        </td>
                        <td style="width: 284px; background-color: #FFFFFF;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox4_TextChanged" 
                        BorderColor="Black"></asp:TextBox>
                        </td>
                        <td style="width: 213px; background-color: #CCFFFF;">
                            العنوان</td>
                    </tr>
                    <tr>
                        <td style="width: 77px">
                          <%--  <asp:RangeValidator ID="RangeValidator7" runat="server" 
                                ControlToValidate="TextBox5" 
                                ErrorMessage="لاتقبل الاعداد و الرموز في هذا الاطار" ForeColor="Red"></asp:RangeValidator>--%>
                        </td>
                        <td style="width: 284px; background-color: #FFFFFF;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox5" runat="server"  BorderColor="Black"></asp:TextBox>
                        </td>
                        <td style="width: 213px; background-color: #CCFFFF;">
                            الوظيفة</td>
                    </tr>
                    <tr>
                        <td style="width: 77px">
                        </td>
                        <td style="width: 284px; background-color: #FFFFFF;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="TextBox6" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox6" runat="server" BorderColor="Black"></asp:TextBox>
                        </td>
                        <td style="width: 213px; background-color: #CCFFFF;">
                            تاريخ التعيين</td>
                    </tr>
                    <tr>
                        <td style="width: 77px"></td>
                          <%--  <asp:RangeValidator ID="RangeValidator8" runat="server" 
                                ControlToValidate="TextBox7" 
                                ErrorMessage="لاتقبل الاعداد و الرموز في هذا الاطار" ForeColor="Red"></asp:RangeValidator>
                        </td>--%>
                        <td style="width: 284px; background-color: #FFFFFF;">
                            &nbsp;<asp:TextBox ID="TextBox7" runat="server" BorderColor="Black"></asp:TextBox>
                        </td>
                        <td style="width: 213px; background-color: #CCFFFF;">
                            مكان الازدياد
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 77px">
                        </td>
                        <td style="width: 284px; background-color: #FFFFFF;">
                            <asp:TextBox ID="TextBox8" runat="server" BorderColor="Black"></asp:TextBox>
                        </td>
                        <td style="width: 213px; background-color: #CCFFFF;">
                            تاريخ الازدياد</td>
                    </tr>
                    <tr>
                        <td style="width: 77px">
                        </td>
                        <td style="width: 284px; background-color: #FFFFFF; height: 27px;">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="EntityDataSource1" DataTextField="nom" 
                        DataValueField="ID_Filere">
                            </asp:DropDownList>
                            <br />
                        </td>
                        <td style="width: 213px; height: 27px; background-color: #CCFFFF;">
                            الشعبة</td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="اضافة" 
                    Width="57px" />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="تحديث" 
                    Width="57px" />
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="حذف" 
                    Width="57px" />
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="بحث" 
                    Width="57px" />
                    
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
            ConnectionString="name=FORMATIONEntities" 
            DefaultContainerName="FORMATIONEntities" EnableFlattening="False" 
            EntitySetName="Filiere" Select="it.[ID_Filere], it.[nom]">
        </asp:EntityDataSource>
                <script type="text/javascript">

   

    </script>
            </ContentTemplate>
        </asp:UpdatePanel>
       
       
    
    
    
        </asp:Content>
