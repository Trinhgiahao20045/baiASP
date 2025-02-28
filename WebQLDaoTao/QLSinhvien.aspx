<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QLSinhvien.aspx.cs" Inherits="WebQLDaoTao.QLSinhvien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
   <h2>THÔNG TIN SINH VIÊN</h2>
    <hr />
    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-md-2">Mã sinh viên</label>
            <div class="col-md-2">
                <asp:TextBox ID="txtMaSV" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2">Họ sinh viên</label>
            <div class="col-md-2">
                <asp:TextBox ID="txtHoSv" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <label class="control-label col-md-2">Tên sinh viên</label>
            <div class="col-md-2">
                <asp:TextBox ID="txtTenSV" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2">Giới tính</label>
            <div class="col-md-4">
                <asp:RadioButton ID="rdNam" runat="server" Text="Nam" CssClass="radio-inline" Checked="true"
                    GroupName="GT" />
                <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" CssClass="radio-inline" GroupName="GT" />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2">Ngày sinh</label>
            <div class="col-md-4">
                <asp:TextBox ID="txtNgaysinh" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>

            </div>
            <label class="control-label col-md-2">Nơi sinh</label>
            <div class="col-md-4">
                <asp:TextBox ID="txtNoiSinh" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2">Địa chỉ</label>
            <div class="col-md-4">
                <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2">Chọn khoa</label>
            <div class="col-md-4">
                <asp:DropDownList ID="ddlMaKhoa" runat="server" DataSourceID="odsKhoa" 
                  DataTextField="tenkh" DataValueField="makh"  CssClass="form-control"></asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2"></label>
            <div class="col-md-4">
                <asp:Button ID="btThem" runat="server" Text="Thêm Mới" CssClass="btn btn-success" OnClick="btThem_Click" />
            </div>
        </div>
    </div>
    <div>
 
    <asp:GridView ID="gvSinhVien" runat="server" CssClass="table table-bordered table-hover"
        AllowPaging="True" PageSize="5" DataKeyNames="masv" AutoGenerateColumns="False" DataSourceID="odsSinhVien">
        <Columns>
            <asp:BoundField DataField="MaSV" HeaderText="Mã SV" ReadOnly="true" />
            <asp:BoundField DataField="HoSV" HeaderText="Họ SV" SortExpression="HoSV" ControlStyle-Width="150px" />
            <asp:BoundField DataField="TenSV" HeaderText="Tên SV" ControlStyle-Width="100px" />
            <asp:CheckBoxField DataField="GioiTinh" HeaderText="Giới tính" />
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="NoiSinh" HeaderText="Nơi sinh" />
            <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" />
            <asp:BoundField DataField="MaKH" HeaderText="khoa" />
            <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" ButtonType="Button"
                EditText="Sửa" DeleteText="Xoá" UpdateText="OK" CancelText="NO" />
        </Columns>
        <HeaderStyle BackColor="#003399" ForeColor="#ffffff" />
        <PagerStyle CssClass="pagination-ys" HorizontalAlign="Center" />
    </asp:GridView>

    <asp:ObjectDataSource ID="odsSinhVien" runat="server" SelectMethod="getAll"
        TypeName="WebQLDaoTao.Models.SinhVienDAO" DataObjectTypeName="WebQLDaoTao.Models.SinhVien"
        DeleteMethod="Delete" UpdateMethod="Update"></asp:ObjectDataSource>

        <asp:ObjectDataSource ID="odsKhoa" runat="server" SelectMethod="getAll" 
            TypeName="WebQLDaoTao.Models.KhoaDAO"></asp:ObjectDataSource>
</asp:Content>
