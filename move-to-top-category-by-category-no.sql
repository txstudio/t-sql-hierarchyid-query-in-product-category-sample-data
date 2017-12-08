--取得指定商品類別序號的向上階層關係
--可用於建立麵包屑 (Breadcrumb) UI
--「運動 > 運動男裝 > 配件類-男」
DECLARE @ProductCategoryNo INT
DECLARE @Path HIERARCHYID

SET @ProductCategoryNo = 39
SET @Path = (
	SELECT a.[Path]
	FROM [Product].[ProductCategories] a with (nolock)
	WHERE a.[No] = @ProductCategoryNo
)

SELECT a.[No]
	,a.[Path]
	,a.[Path].ToString() [PathStr]
	,a.[Path].GetLevel() [Level]
	,a.[Name]
	,a.[IsEnabled]
FROM [Product].[ProductCategories] a with (nolock)
WHERE @Path.IsDescendantOf(a.[Path]) = 1

