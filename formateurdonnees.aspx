<%@ Page Title="" Language="C#" MasterPageFile="~/formationm.Master" AutoEventWireup="true" CodeBehind="formateurdonnees.aspx.cs" Inherits="projet_formation.formateurdonnees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <p>
        &nbsp;</p>
<p>
        sélectionner un tribunale :
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="EntityDataSource1" DataTextField="Nom" 
            DataValueField="ID_tribunal">
        </asp:DropDownList>
    </p>
    <p>
        les formations&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource3" DataTextField="nom_for" 
            DataValueField="id_formation">
        </asp:DropDownList>
        <br />
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Button" Width="80px" />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Reporting %>" 
            SelectCommand="SELECT [id_formation], [nom_for] FROM [Formation] WHERE ([id_tribunal] = @id_tribunal)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="id_tribunal" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        les formateurs<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Reporting %>" 
            DeleteCommand="DELETE FROM [Formation] WHERE [id_formation] = @id_formation" 
            InsertCommand="INSERT INTO [Formation] ([id_formation], [matricule_form], [date_debut], [date_fin], [nom_for], [id_tribunal]) VALUES (@id_formation, @matricule_form, @date_debut, @date_fin, @nom_for, @id_tribunal)" 
            SelectCommand="SELECT * FROM [Formation] WHERE ([id_tribunal] = @id_tribunal) ORDER BY [nom_for]" 
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
                <asp:ControlParameter ControlID="DropDownList1" Name="id_tribunal" 
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
    </p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black" 
            Height="168px" Width="504px">
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Reporting %>" 
            SelectCommand="SELECT * FROM [View_1] WHERE ([nom_for] = @nom_for)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="nom_for" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
            ConnectionString="name=FORMATIONEntities" 
            DefaultContainerName="FORMATIONEntities" EnableFlattening="False" 
            EntitySetName="Tribunal" Select="it.[ID_tribunal], it.[Nom]">
        </asp:EntityDataSource>
    </p>



</asp:Content>
