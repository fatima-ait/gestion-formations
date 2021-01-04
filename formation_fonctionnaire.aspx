<%@ Page Title="تكوينات جديدة" Language="C#" 
MasterPageFile="~/formationm.Master" AutoEventWireup="true"
    CodeBehind="formation_fonctionnaire.aspx.cs" Inherits="projet_formation.formation_fonctionnaire"
    Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="left" class="style4" dir="ltr" style="border-style: ridge; background-color: #99CCFF">
        <tr>
            <td style="width: 1261px; height: 57px; text-align: left;">
                <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" 
                    DataSourceID="EntityDataSource9" DataTextField="nom_for" 
                    DataValueField="id_formation" Height="28px" Width="185px">
                </asp:DropDownList>
                <asp:ImageButton ID="ImageButton3" runat="server" Height="29px" 
                    ImageUrl="~/IMAGE FOLDER/rechercher.jpg" Width="34px" 
                    onclick="ImageButton3_Click" />
                <asp:EntityDataSource ID="EntityDataSource9" runat="server" 
                    ConnectionString="name=FORMATIONEntities" 
                    DefaultContainerName="FORMATIONEntities" EnableFlattening="False" 
                    EntitySetName="Formation" Select="it.[id_formation], it.[nom_for]">
                </asp:EntityDataSource>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="**" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="171px" meta:resourcekey="TextBox1Resource1"
                    BorderColor="Black" placeholder="رقم التكوين"></asp:TextBox>
                &nbsp;
            </td>
            <td class="style5" style="width: 219px; height: 57px;">
                <p>
                    &nbsp; بحث في التكوينات السابقة</p>
            </td>
        </tr>
        <tr>
            <td style="width: 1261px; height: 57px; text-align: left;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="**" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="171px" meta:resourcekey="TextBox2Resource1"
                    BorderColor="Black" placeholder="رقم التكوين"></asp:TextBox>
            </td>
            <td class="style5" style="width: 219px; height: 57px;">
                <asp:Label ID="Label2" runat="server" Text="رقم التكوين" meta:resourcekey="Label2Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 1261px; height: 52px; text-align: left;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="**" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="171px" meta:resourcekey="TextBox3Resource1"
                    BorderColor="Black" placeholder="تاريخ بداية التكوين"></asp:TextBox>
            </td>
            <td class="style5" style="width: 219px; height: 52px;">
                <asp:Label ID="Label4" runat="server" Text="تاريخ بداية التكوين" meta:resourcekey="Label4Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6" style="width: 1261px; background-color: #99CCFF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="**" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox4" runat="server" Height="23px" Width="171px" meta:resourcekey="TextBox4Resource1"
                    BorderColor="Black" placeholder="تاريخ نهاية التكوين"></asp:TextBox>
            </td>
            <td class="style7" style="width: 1299px">
                <asp:Label ID="Label5" runat="server" Text="تاريخ نهاية التكوين" meta:resourcekey="Label5Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 1261px; height: 46px; text-align: left;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="**" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox5" runat="server" Height="23px" Width="171px" meta:resourcekey="TextBox5Resource1"
                    BorderColor="Black" placeholder="نوع التكوين"></asp:TextBox>
            </td>
            <td class="style5" style="width: 219px; height: 46px;">
                <asp:Label ID="Label6" runat="server" Text="نوع التكوين" meta:resourcekey="Label6Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 1261px; height: 45px; text-align: left;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="**" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox6" runat="server" Height="23px" Width="171px" meta:resourcekey="TextBox6Resource1"
                    BorderColor="Black" placeholder="رقم المحكمة"></asp:TextBox>
            </td>
            <td class="style5" style="width: 1299px; height: 45px;">
                <asp:Label ID="Label9" runat="server" Text="رقم المحكمة" meta:resourcekey="Label9Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 1261px; height: 41px; text-align: left;">
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="EntityDataSource7"
                    DataTextField="Nom" DataValueField="ID_tribunal" Height="16px" Width="172px"
                    meta:resourcekey="DropDownList5Resource1" BackColor="#9999FF" 
                    AutoPostBack="True" 
                    onselectedindexchanged="DropDownList5_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style5" style="width: 1299px; height: 41px;">
                المحكمة
            </td>
        </tr>
        <tr>
            <td style="width: 1261px; text-align: left;">
                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="EntityDataSource8"
                    DataTextField="nom" DataValueField="ID_Filere" Height="20px" Width="173px" meta:resourcekey="DropDownList6Resource1"
                    BackColor="#9999FF" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList6_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style5" style="width: 1299px">
                &nbsp; الشعبة&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style5" style="height: 242px; width: 1261px; background-image: url('etudes_de_droit1.jpg'); text-align: left;"
                bgcolor="#FFCCFF" valign="bottom">
                <asp:GridView ID="GridView1" runat="server" BackColor="White"
                    BorderColor="#3333CC" BorderStyle="Double" BorderWidth="3px" CellPadding="4"
                    DataSourceID="EntityDataSource4" AutoGenerateColumns="False" DataKeyNames="SOM"
                    Width="271px" Height="380px" GridLines="Horizontal" meta:resourcekey="GridView1Resource1"
                    Style="margin-top: 2px" AllowSorting="True" BackImageUrl="~/IMAGE FOLDER/etudes_de_droit1.jpg">
                    <Columns>
                        <asp:BoundField DataField="SOM" HeaderText="SOM" ReadOnly="True" SortExpression="SOM"
                            meta:resourcekey="BoundFieldResource1" />
                        <asp:BoundField DataField="nom_f" HeaderText="nom_f" SortExpression="nom_f" meta:resourcekey="BoundFieldResource2" />
                        <asp:BoundField DataField="prenom_f" HeaderText="prenom_f" SortExpression="prenom_f"
                            meta:resourcekey="BoundFieldResource3" />
                        <asp:BoundField DataField="adresse" HeaderText="adresse" SortExpression="adresse"
                            meta:resourcekey="BoundFieldResource4" />
                        <asp:BoundField DataField="poste" HeaderText="poste" SortExpression="poste" meta:resourcekey="BoundFieldResource5" />
                        <asp:BoundField DataField="date_embauche" HeaderText="date_embauche" SortExpression="date_embauche"
                            meta:resourcekey="BoundFieldResource6" />
                        <asp:BoundField DataField="lieu_naissance" HeaderText="lieu_naissance" SortExpression="lieu_naissance"
                            meta:resourcekey="BoundFieldResource7" />
                        <asp:BoundField DataField="date_naissance" HeaderText="date_naissance" SortExpression="date_naissance"
                            meta:resourcekey="BoundFieldResource8" />
                        <asp:BoundField DataField="ID_Filiere" HeaderText="ID_Filiere" SortExpression="ID_Filiere"
                            meta:resourcekey="BoundFieldResource9" />
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <input id="CkbHeader" type="checkbox" onclick="header_fonct_clik($(this));" clientidmode="Static"
                                    class="css3" runat="server" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <input id="CheckBox4" type="checkbox" runat="server" class="css33" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle ForeColor="#333333" BackColor="White" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    <asp:ImageButton ID="ImageButton1" runat="server" Height="33px" ImageUrl="~/IMAGE FOLDER/ajouter.jpg"
        OnClick="ImageButton1_Click" Width="34px" />
    <asp:ImageButton ID="ImageButton2" runat="server" Height="33px" 
        ImageUrl="~/IMAGE FOLDER/modifier.jpg" onclick="ImageButton2_Click" 
        Width="34px" />
    <asp:ImageButton ID="ImageButton4" runat="server" Height="33px" 
        ImageUrl="~/IMAGE FOLDER/delete.jpg" onclick="ImageButton4_Click" 
        Width="35px" />
    <br />
    <asp:EntityDataSource ID="EntityDataSource7" runat="server" ConnectionString="name=FORMATIONEntities"
        DefaultContainerName="FORMATIONEntities" EnableFlattening="False" EntitySetName="Tribunal"
        EntityTypeFilter="Tribunal" Select="it.[ID_tribunal], it.[Nom]">
    </asp:EntityDataSource>
    <asp:EntityDataSource ID="EntityDataSource8" runat="server" ConnectionString="name=FORMATIONEntities"
        DefaultContainerName="FORMATIONEntities" EnableFlattening="False" EntitySetName="Filiere"
        Select="it.[ID_Filere], it.[nom]" EntityTypeFilter="">
    </asp:EntityDataSource>
    <asp:EntityDataSource ID="EntityDataSource4" runat="server" ConnectionString="name=FORMATIONEntities"
        DefaultContainerName="FORMATIONEntities" EnableFlattening="False" EntitySetName="fonctionnaire"
        EnableDelete="True" EnableInsert="True" EnableUpdate="True">
    </asp:EntityDataSource>
    <script language="javascript" type="text/javascript">
        function header_fonct_clik(CheckBox) {
            $(".css33").each(function () {
                $(this).prop('checked',$(CheckBox).is(":checked"));
            });
        }

        function item_fonct_clik(CheckBox) {
            var gridview = document.getElementById("GridView1");
            var checked = false;
            for (var i = 1; i < gridview.rows.length; i++) {

                if (gridview.rows[i].cells[9].getElementByTagName("CheckBox3")[9].Checked = CheckBox.checked == false) {
                    checked = true;
                    break;
                }
                gridview.rows[0].cells[9].getElementByTagName("CheckBox3")[9].Checked = !checked;
            }
        }
    </script>
    <br />
    <br />
</asp:Content>
