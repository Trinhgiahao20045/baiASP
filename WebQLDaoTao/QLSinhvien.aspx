<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QLSinhvien.aspx.cs" Inherits="WebQLDaoTao.QLSinhvien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <h2>Thiết kế giao diện và chức năng quản lý sinh viên</h2>
 
        <asp:GridView ID="gvSinhVien" runat="server" CssClass="table table-bordered table-hover" 
            AllowPaging="True" PageSize="5" DataKeyNames="masv" AutoGenerateColumns="False" DataSourceID="odsSinhVien">
            <Columns>
                <asp:BoundField DataField="MaSV" HeaderText="Mã SV" ReadOnly="true"/>
                <asp:BoundField DataField="HoSV" HeaderText="Họ SV" SortExpression="HoSV" ControlStyle-Width="150px" />
                <asp:BoundField DataField="TenSV" HeaderText="Tên SV"  ControlStyle-Width="100px"  />
                <asp:CheckBoxField DataField="GioiTinh" HeaderText="Giới tính"  />
                <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" DataFormatString="{0:dd/MM/yyyy}"  />
                <asp:BoundField DataField="NoiSinh" HeaderText="Nơi sinh" />
                <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ"  />
                <asp:BoundField DataField="MaKH" HeaderText="khoa"/>
                <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" ButtonType="Button"
                    EditText="Sửa" DeleteText="Xoá" UpdateText="OK" CancelText="NO"/>
            </Columns>
            <HeaderStyle BackColor="#003399" ForeColor="#ffffff" />
            <PagerStyle CssClass="pagination-ys" HorizontalAlign="Center" />
        </asp:GridView>

    <asp:ObjectDataSource ID="odsSinhVien" runat="server" SelectMethod="getAll" 
        TypeName="WebQLDaoTao.Models.SinhVienDAO" DataObjectTypeName="WebQLDaoTao.Models.SinhVien" DeleteMethod="Delete" UpdateMethod="Update"></asp:ObjectDataSource>
</asp:Content>
