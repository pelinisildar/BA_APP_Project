using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace BA_App.Data.Migrations
{
    public partial class secondadded1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<DateTime>(
                name: "OrderDate",
                table: "Customers",
                nullable: false,
                oldClrType: typeof(string),
                oldNullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "OrderDate",
                table: "Customers",
                nullable: true,
                oldClrType: typeof(DateTime));
        }
    }
}
