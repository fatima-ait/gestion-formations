<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="projet_formation.report" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100px;
            border: 1px solid #ffffff;
            background-color: #ffffff;
        }
        .auto-style2 {
            color: #0000CC;
        }
        .auto-style3 {
            font-size: x-large;
            text-decoration: underline;
            background-color: #99CCFF;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="projet_formation.FORMATIONDataSetTableAdapters.View_1TableAdapter"></asp:ObjectDataSource>
        <div class="auto-style4">
            <span class="auto-style2"><strong><em><span class="auto-style3">حفظ البيانات </span></em></strong></span><br />
        </div>
        <table class="auto-style1" dir="ltr">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="303px" ImageUrl="~/IMAGE FOLDER/etudes_de_droit1.jpg" Width="246px" />
                </td>
                <td>
    
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="298px" style="margin-left: 0px; margin-bottom: 0px" Width="493px">
            <LocalReport ReportEmbeddedResource="projet_formation.Report1.rdlc" ReportPath="Report5.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
                </td>
            </tr>
        </table>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
