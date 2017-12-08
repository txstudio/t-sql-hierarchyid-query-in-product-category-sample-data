# 使用 Hierarchyid 資料型態設計商品類別資料表

此範例模擬商品類別資料表設計，並使用 Hierarchyid 資料型態儲存商品類別的階層關係。

## 檔案與資料夾說明

本次範例中包含下列資訊

- create-hierarchyid-sample-database.sql
- display-all-category-parent-relationship.sql
- display-all-children-by-category-no.sql
- move-to-top-category-by-category-no.sql

### create-hierarchyid-sample-database.sql

此指令碼會建立包含階層關係欄位的商品類別資料表

|物件名稱|備註|
|--|--|
|Product.ProductCategories|商品類別資料表|

### display-all-category-parent-relationship.sql

此指令碼會所有商品類別資料轉換成類別序號與父系類別序號結構

### display-all-children-by-category-no.sql

此指令碼會將顯示指定「商品類別序號」子節點的所有商品類別

### move-to-top-category-by-category-no.sql

此指令碼會取得指定「商品類別序號」階層到最上層類別

## 使用方式

執行 create-hierarchyid-sample-database.sql 建立測試環境使用的資料表物件

再依照需求執行對應的查詢指令，並修改符合各自的使用情境

## 參考資料
[階層式資料 (SQL Server) | Microsoft Docs](https://docs.microsoft.com/zh-tw/sql/relational-databases/hierarchical-data-sql-server)
