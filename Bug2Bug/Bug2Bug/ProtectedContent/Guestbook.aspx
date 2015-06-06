<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Guestbook.aspx.cs" Inherits="Bug2Bug.ProtectedContent.guestbook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <div>
          <h3>Please leave a message in our guestbook:</h3>
          <table class="auto-style1">
<tr>
                <td>Name:</td>
                <td>
                    <asp:TextBox ID="nameTextBox" runat="server" CssClass="textBoxWidth" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="nameRequiredFieldValidator" runat="server" ControlToValidate="nameTextBox" ErrorMessage="Name cannot be left empty!" ForeColor="#FF0066" Display="Dynamic"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender ID="nameRequiredFieldValidator_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="nameRequiredFieldValidator">
                    </ajaxToolkit:ValidatorCalloutExtender>
                </td>
             </tr>
             <tr>
                <td class="auto-style1">E-mail:</td>
                <td class="auto-style1">
                   <asp:TextBox ID="emailTextBox" runat="server" CssClass="textBoxWidth"  TextMode="Email"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="emailRegularExpressionValidator" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Enter a valid email address." ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                    <ajaxToolkit:ValidatorCalloutExtender ID="emailRegularExpressionValidator_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="emailRegularExpressionValidator">
                    </ajaxToolkit:ValidatorCalloutExtender>
                    <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" runat="server" ControlToValidate="emailTextBox" ErrorMessage="Email field cannot be left empty. " ForeColor="#FF0066" Display="Dynamic"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender ID="emailRequiredFieldValidator_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="emailRequiredFieldValidator">
                    </ajaxToolkit:ValidatorCalloutExtender>
                </td>
             </tr>
             <tr>
                <td>Message:</td>
                <td>
                   <asp:TextBox ID="messageTextBox" runat="server" CssClass="textBoxWidth textBoxHeight" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="msgRequiredFieldValidator" runat="server" ControlToValidate="messageTextBox" ErrorMessage="Message field cannot be left empty/" ForeColor="#FF0066" Display="Dynamic"></asp:RequiredFieldValidator>
                    <ajaxToolkit:ValidatorCalloutExtender ID="msgRequiredFieldValidator_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="msgRequiredFieldValidator">
                    </ajaxToolkit:ValidatorCalloutExtender>
                </td>
             </tr>
             <tr>
                <td>&nbsp;</td>
                <td>
                   <asp:Button ID="submitButton" runat="server" OnClick="submitButton_Click" Text="Submit" BackColor="Silver" ForeColor="Black" />
                   &nbsp;<asp:Button ID="clearButton" runat="server"  OnClick="clearButton_Click" Text="Clear" BackColor="Silver" ForeColor="Black" />
                </td>
             </tr>
              <tr>
                <td colspan="2">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="submitButton" EventName="Click" />
                    </Triggers>
                    <ContentTemplate>
                        <asp:GridView ID="messagesGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="gridViewWidth" DataKeyNames="MessageID" DataSourceID="messagesEntityDataSource" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Message1" HeaderText="Message" SortExpression="Message1" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
    <asp:EntityDataSource ID="messagesEntityDataSource" runat="server" ConnectionString="name=GuestbookEntities" DefaultContainerName="GuestbookEntities" EnableFlattening="False" EnableInsert="True" EntitySetName="Messages"></asp:EntityDataSource>
    <br />
    </div>
</asp:Content>
