<%@ Page Title="لائحة الشعب" Language="C#" MasterPageFile="~/formationm.Master" AutoEventWireup="true"
    EnableSessionState="true" CodeBehind="filiere.aspx.cs" Inherits="projet_formation.filiere" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;<br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:TextBox ID="txt333" runat="server" Text="" />
            <table dir="ltr" style="width: 500px; border: 1px solid #ffffff; background-color: #ffffff">
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="EntityDataSource1"
                            DataTextField="nom" DataValueField="ID_Filere">
                        </asp:DropDownList>
                    </td>
                    <td>
                        الشعبة
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="الشعبة"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;الشعبة
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="اسم الشعبة "></asp:TextBox>
                    </td>
                    <td>
                        اسم الشعبة &nbsp;&nbsp;
                    </td>
                    <td>
                        <%--<asp:RangeValidator ID="RangeValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="لاتقبل الاعداد والحروف" 
                            ForeColor="#FF5050"></asp:RangeValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="EntityDataSource2"
                            DataTextField="Nom" DataValueField="ID_tribunal">
                        </asp:DropDownList>
                    </td>
                    <td>
                        المحكمة
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
            <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
           <%-- <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click" />--%>
            <asp:AsyncPostBackTrigger ControlID="Button4" EventName="Click" />
             <asp:AsyncPostBackTrigger ControlID="Button5" EventName="Click" />

        </Triggers>
    </asp:UpdatePanel>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="اضافة" />
    <asp:Button ID="Button2" runat="server" Text="تحديث" OnClick="Button2_Click1" />
    <asp:Button ID="Button4" runat="server" Text="بحث" OnClick="Button4_Click" />
    &nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="حذف" />
    <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=FORMATIONEntities"
        DefaultContainerName="FORMATIONEntities" EnableFlattening="False" EntitySetName="Tribunal"
        Select="it.[ID_tribunal], it.[Nom]">
    </asp:EntityDataSource>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=FORMATIONEntities"
        DefaultContainerName="FORMATIONEntities" EnableFlattening="False" EntitySetName="Filiere"
        Select="it.[ID_Filere], it.[nom]">
    </asp:EntityDataSource>
    <h4>
        &nbsp;</h4>
    <br />
</asp:Content>
