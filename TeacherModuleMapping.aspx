<%@ Page Title="Teacher Module Mapping" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeacherModuleMapping.aspx.cs" Inherits="Courseowork.TeacherModuleMapping" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="student" style="background-color:#f4f6fe">
    <p style="font-size:25px; color:seagreen;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    <p style="font-size:25px; color:seagreen;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Teacher Module Details</p>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label2" runat="server" Text="Teacher Name" ForeColor="#008040"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" ForeColor="#008040" Height="30px" Width="195px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="TEACHERNAME" DataValueField="TEACHERID">
        </asp:DropDownList>
    </p>
        <p>
            &nbsp;</p>
        &nbsp;<asp:DataGrid ID="feeDataGrid" runat="server" DataSourceID="SqlDataSource3" Width="1157px" OnSelectedIndexChanged="feeDataGrid_SelectedIndexChanged">
            <HeaderStyle BackColor="#008040" Font-Bold="True" />
        </asp:DataGrid>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString16 %>" ProviderName="<%$ ConnectionStrings:ConnectionString16.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEACHERMODULE&quot; WHERE (&quot;TEACHERID&quot; = :TEACHERID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="TEACHERID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
    </asp:SqlDataSource>
        <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" ProviderName="<%$ ConnectionStrings:ConnectionString11.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEACHER&quot;"></asp:SqlDataSource>
        &nbsp; 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" ProviderName="<%$ ConnectionStrings:ConnectionString10.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEACHERMODULE&quot; WHERE (&quot;TEACHERID&quot; = :TEACHERID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="TEACHERID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>&nbsp;</p>
    <p></p>
        </div>

</asp:Content>
