<%@ Page Title="مؤطرين في التكوين"
 Language="C#" 
 MasterPageFile="~/formationm.Master"
 AutoEventWireup="true"
    CodeBehind="formateurs.aspx.cs" Inherits="projet_formation.Formateurs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-weight: 700">
        <br />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <table dir="ltr" 
                            style="width: 486px; border: 1px solid #ffffff; background-color: #C0C0C0; height: 361px;">
                            <tr>
                                <td style="width: 163px">
                                    <asp:DropDownList ID="DropDownList3" runat="server" 
                                        DataSourceID="EntityDataSource2" DataTextField="prenom" 
                                        DataValueField="matricule_form">
                                    </asp:DropDownList>
                    
                    <br />
                                    <asp:EntityDataSource ID="EntityDataSource2" runat="server" 
                                        ConnectionString="name=FORMATIONEntities" 
                                        DefaultContainerName="FORMATIONEntities" EntitySetName="formateurs" 
                                        Select="it.[matricule_form], it.[prenom]">
                                    </asp:EntityDataSource>
                    <br />
                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="الرقم الترتيبي"></asp:TextBox>
                                </td>
                                <td style="width: 13px">
                                    &nbsp; الرقم الترتيبي<br />
                    <br />
                                    الاسم الشخصي</td>
                                <td style="width: 127px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 163px">
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="الاسم الشخصي"></asp:TextBox>
                                    ا</td>
                                <td style="width: 13px">
                                    &nbsp; الاسم العائلي</td>
                                <td style="width: 127px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 163px">
                                    <asp:TextBox ID="TextBox3" runat="server" placeholder="الاسم العائلي"></asp:TextBox>
                                </td>
                                <td style="width: 13px">
                                    &nbsp;
                                </td>
                                <td style="width: 127px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 29px; width: 163px">
                   <%-- <asp:DropDownList ID="DropDownList2" runat="server" 
                    Enabled="true"  AutoPosteBack="true"
                        DataSourceID="EntityDataSource1" DataTextField="grade"
                         DataValueField="grade">
                    </asp:DropDownList>--%>
                                    <asp:DropDownList ID="DropDownList1" runat="server" 
                                        DataSourceID="EntityDataSource1" DataTextField="grade" DataValueField="grade">
                                    </asp:DropDownList>
                    <br />
                                    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                                        ConnectionString="name=FORMATIONEntities" 
                                        DefaultContainerName="FORMATIONEntities" EntitySetName="formateurs" 
                                        Select="it.[grade]">
                                    </asp:EntityDataSource>
                                </td>
                                <td style="width: 13px; height: 29px;">
                                    &nbsp; لرتبة</td>
                                <td style="width: 127px; height: 29px;">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                    <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ajoute" EventName="Click" />
            <asp:AsyncPostBackTrigger ControlID="modifier" EventName="Click" />
            <asp:AsyncPostBackTrigger ControlID="supprimer" EventName="Click" />
            <asp:AsyncPostBackTrigger ControlID="rechercher" EventName="Click" />
             <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />

        </Triggers>
        </asp:UpdatePanel>
        <br />
      
        &nbsp;<br />

        <asp:Button ID="ajoute" runat="server" OnClick="Button1_Click" Text="اضافة" />
        <asp:Button ID="modifier" runat="server" OnClick="Button2_Click" Text="تحديث" />
        <asp:Button ID="supprimer" runat="server" OnClick="Button3_Click" Text="حذف" />
        <asp:Button ID="rechercher" runat="server" OnClick="Button4_Click" />
        <asp:Button ID="Button1" runat="server" Text="annuler" 
            onclick="Button1_Click1" />
        <br />
        
    </div>
</asp:Content>
