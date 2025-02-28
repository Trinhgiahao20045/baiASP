<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QLSinhvien.aspx.cs" Inherits="WebQLDaoTao.QLSinhvien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <h2>Thiết kế giao diện và chức năng quản lý sinh viên</h2>
     <asp:GridView ID="gvSinhVien" runat="server" CssClass="table table-bordered table-hover" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="odsSinhVien">
        
        <Columns>
            <asp:BoundField DataField="MaSV" HeaderText="Mã SV" SortExpression="MaSV" />
            <asp:BoundField DataField="HoSV" HeaderText="Họ SV" SortExpression="HoSV" />
            <asp:BoundField DataField="TenSV" HeaderText="Tên SV" SortExpression="TenSV" />
            <asp:CheckBoxField DataField="GioiTinh" HeaderText="Giới tính" SortExpression="GioiTinh" />
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" SortExpression="NgaySinh" />
            <asp:BoundField DataField="NoiSinh" HeaderText="Nơi sinh" SortExpression="NoiSinh" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" SortExpression="DiaChi" />
<asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
        </Columns>
         <HeaderStyle BackColor="#003399" ForeColor="#ffffff" />
        <PagerStyle CssClass="pagination-ys" HorizontalAlign="Center" />
    </asp:GridView>
    <asp:ObjectDataSource ID="odsSinhVien" runat="server" SelectMethod="getAll" TypeName="WebQLDaoTao.Models.SinhVienDAO"></asp:ObjectDataSource>
</asp:Content>
