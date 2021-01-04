<%@ Page Title="تكوينات"
 Language="C#" MasterPageFile="~/formationm.Master" AutoEventWireup="true"
    CodeBehind="formations.aspx.cs" Inherits="projet_formation.formations" %>
    

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <p>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                &nbsp;</p>
            <table align="center" class="style4" dir="ltr" 
                style="color: #333399; text-decoration: underline;">
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True"
            DataSourceID="EntityDataSource3" DataTextField="id_formation" 
                    DataValueField="id_formation" Height="29px" Width="176px" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        <p>
                            &nbsp; بحث في التكوينات السابقة</p>
                    </td>
                    <td>
                        <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=FORMATIONEntities"
            DefaultContainerName="FORMATIONEntities" EnableFlattening="False" EntitySetName="Formation"
            Select="it.[id_formation]">
                        </asp:EntityDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="رقم التكوين"></asp:TextBox>
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label2" runat="server" Text="رقم التكوين"></asp:Label>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                    DataSourceID="EntityDataSource6" DataTextField="prenom" 
                    DataValueField="matricule_form" Height="20px" Width="179px" 
                    onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label3" runat="server" Text="رقم المؤطر"></asp:Label>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="تاريخ بداية التكوين"></asp:TextBox>
                    </td>
                    <td class="style7">
                        <asp:Label ID="Label4" runat="server" Text="تاريخ بداية التكوين"></asp:Label>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="تاريخ نهاية التكوين"></asp:TextBox>
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label5" runat="server" Text="تاريخ نهاية التكوين"></asp:Label>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="نوع التكوين"></asp:TextBox>
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label6" runat="server" Text="نوع التكوين"></asp:Label>
                    </td>
                    <td>
                        <%--<asp:RangeValidator ID="RangeValidator2" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="لاتقبل الاعداد والرموز" 
                            ForeColor="Red"></asp:RangeValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="EntityDataSource5" DataTextField="ID_tribunal" 
                    DataValueField="ID_tribunal" Height="25px" Width="174px" 
                    >
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        <asp:Label ID="Label9" runat="server" Text="رقم المحكمة"></asp:Label>
                    </td>
                    <td>
                        &nbsp;
                        <asp:EntityDataSource ID="EntityDataSource5" runat="server" 
                    ConnectionString="name=FORMATIONEntities" 
                    DefaultContainerName="FORMATIONEntities" EnableFlattening="False" 
                    EntitySetName="Tribunal" Select="it.[ID_tribunal]">
                        </asp:EntityDataSource>
                    </td>
                </tr>
            </table>
            <br />
            <span class="style3">
            <br />
            </span>
            <asp:EntityDataSource ID="EntityDataSource6" runat="server" 
    ConnectionString="name=FORMATIONEntities" 
    DefaultContainerName="FORMATIONEntities" EnableFlattening="False" 
    EntitySetName="formateurs" Select="it.[matricule_form], it.[prenom]">
            </asp:EntityDataSource>
            <p>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="38px" ImageUrl="~/IMAGE FOLDER/delete.jpg"
        OnClick="ImageButton2_Click" Width="46px" />
                <asp:ImageButton ID="ImageButton3" runat="server" Height="37px" ImageUrl="~/IMAGE FOLDER/ajouter.jpg"
        OnClick="ImageButton3_Click" Width="36px" />
                <asp:ImageButton ID="ImageButton4" runat="server" Height="38px" ImageUrl="~/IMAGE FOLDER/rechercher.jpg"
        OnClick="ImageButton4_Click" Width="36px" />
                <asp:ImageButton ID="ImageButton5" runat="server" Height="39px" ImageUrl="~/IMAGE FOLDER/modifier.jpg"
        OnClick="ImageButton5_Click" Width="45px" />
            </p>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdateProgress ID="update" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
    <img src="IMAGE FOLDER/loading.jpg" style="height: 82px; width: 90px" /></ProgressTemplate></asp:UpdateProgress>
    <p>
        <br />
        <span class="style3">
        <br /> </span>
    </p>
  
</asp:Content>
