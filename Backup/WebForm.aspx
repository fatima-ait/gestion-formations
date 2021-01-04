<%@ Page Title="بيان شامل" Language="C#" MasterPageFile="~/formationm.Master" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="projet_formation.WebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
     <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <table dir="ltr" 
                style="width: 294px; height: 89px; border: 1px solid #C0C0C0; background-color: #ffffff">
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                            DataSourceID="EntityDataSource1" DataTextField="Nom" 
                            DataValueField="ID_tribunal">
                        </asp:DropDownList>
                    </td>
                    <td style="width: 13px">
                        اسم المحكمة
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="nom" DataValueField="ID_Filere">
                        </asp:DropDownList>
                    </td>
                    <td style="width: 13px">
                        اسم الشعبة</td>
                </tr>
            </table>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                ConnectionString="name=FORMATIONEntities" 
                DefaultContainerName="FORMATIONEntities" EnableFlattening="False" 
                EntitySetName="Tribunal" Select="it.[ID_tribunal], it.[Nom]">
            </asp:EntityDataSource>
            <asp:Button ID="Button1" runat="server" Text="Button" />
    <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:FORMATIONConnectionString %>" 
                
                SelectCommand="SELECT [ID_Filere], [nom] FROM [Filiere] WHERE ([ID_tribunal] = @ID_tribunal)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList3" Name="ID_tribunal" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="nom_for" HeaderText="nom_for" 
                        SortExpression="nom_for" />
                    <asp:BoundField DataField="date_debut" HeaderText="date_debut" 
                        SortExpression="date_debut" />
                    <asp:BoundField DataField="date_fin" HeaderText="date_fin" 
                        SortExpression="date_fin" />
                    <asp:BoundField DataField="NomFormateur" HeaderText="NomFormateur" 
                        SortExpression="NomFormateur" />
                    <asp:BoundField DataField="PrenomFormateur" HeaderText="PrenomFormateur" 
                        SortExpression="PrenomFormateur" />
                    <asp:BoundField DataField="Juridiction" HeaderText="Juridiction" 
                        SortExpression="Juridiction" />
                    <asp:BoundField DataField="Entite" HeaderText="Entite" 
                        SortExpression="Entite" />
                    <asp:BoundField DataField="NomFonc" HeaderText="NomFonc" 
                        SortExpression="NomFonc" />
                    <asp:BoundField DataField="PrenomFonc" HeaderText="PrenomFonc" 
                        SortExpression="PrenomFonc" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
    <br />
    
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FORMATIONConnectionString %>" 
        SelectCommand="SELECT * FROM [View_1] WHERE ([Entite] = @Entite)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList4" Name="Entite" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

   
</div>
</asp:Content>
