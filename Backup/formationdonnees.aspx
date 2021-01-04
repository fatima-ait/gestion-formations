<%@ Page Title="" Language="C#" MasterPageFile="~/formationm.Master" AutoEventWireup="true" CodeBehind="formationdonnees.aspx.cs" Inherits="projet_formation.formation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="EntityDataSource1" DataTextField="nom_for" 
        DataValueField="id_formation">
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataKeyNames="id_formation" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="id_formation" HeaderText="id_formation" 
                ReadOnly="True" SortExpression="id_formation" />
            <asp:BoundField DataField="matricule_form" HeaderText="matricule_form" 
                SortExpression="matricule_form" />
            <asp:BoundField DataField="date_debut" HeaderText="date_debut" 
                SortExpression="date_debut" />
            <asp:BoundField DataField="date_fin" HeaderText="date_fin" 
                SortExpression="date_fin" />
            <asp:BoundField DataField="nom_for" HeaderText="nom_for" 
                SortExpression="nom_for" />
            <asp:BoundField DataField="id_tribunal" HeaderText="id_tribunal" 
                SortExpression="id_tribunal" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Reporting %>" 
        DeleteCommand="DELETE FROM [Formation] WHERE [id_formation] = @id_formation" 
        InsertCommand="INSERT INTO [Formation] ([id_formation], [matricule_form], [date_debut], [date_fin], [nom_for], [id_tribunal]) VALUES (@id_formation, @matricule_form, @date_debut, @date_fin, @nom_for, @id_tribunal)" 
        SelectCommand="SELECT * FROM [Formation] WHERE ([id_formation] = @id_formation) ORDER BY [nom_for]" 
        UpdateCommand="UPDATE [Formation] SET [matricule_form] = @matricule_form, [date_debut] = @date_debut, [date_fin] = @date_fin, [nom_for] = @nom_for, [id_tribunal] = @id_tribunal WHERE [id_formation] = @id_formation">
        <DeleteParameters>
            <asp:Parameter Name="id_formation" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_formation" Type="String" />
            <asp:Parameter Name="matricule_form" Type="String" />
            <asp:Parameter DbType="Date" Name="date_debut" />
            <asp:Parameter DbType="Date" Name="date_fin" />
            <asp:Parameter Name="nom_for" Type="String" />
            <asp:Parameter Name="id_tribunal" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="id_formation" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="matricule_form" Type="String" />
            <asp:Parameter DbType="Date" Name="date_debut" />
            <asp:Parameter DbType="Date" Name="date_fin" />
            <asp:Parameter Name="nom_for" Type="String" />
            <asp:Parameter Name="id_tribunal" Type="String" />
            <asp:Parameter Name="id_formation" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=FORMATIONEntities" 
        DefaultContainerName="FORMATIONEntities" EnableFlattening="False" 
        EntitySetName="Formation" Select="it.[id_formation], it.[nom_for]">
    </asp:EntityDataSource>
</asp:Content>
