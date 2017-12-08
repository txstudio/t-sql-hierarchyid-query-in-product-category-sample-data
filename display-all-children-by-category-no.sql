--
--取得指定商品類別序號下的所有類別清單
--	包含上層序號繼承關係結構
--
DECLARE @CategoryNo INT

SET @CategoryNo = 17

;WITH ProductCategory AS
(
	SELECT a.[No]
		,a.[Path]
		,a.[Path].GetAncestor(1) [ParentPath]
		,a.[Name]
		,a.[Path].ToString() [PathStr]
		,a.[Path].GetLevel() [Level]
	FROM [Product].[ProductCategories] a with (nolock)
	WHERE a.[No] = @CategoryNo
	UNION ALL
	SELECT b.[No]
		,b.[Path]
		,b.[Path].GetAncestor(1) [ParentPath]
		,b.[Name]
		,b.[Path].ToString() [PathStr]
		,b.[Path].GetLevel() [Level]
	FROM ProductCategory a
		INNER JOIN [Product].[ProductCategories] b with (nolock)
			ON b.[Path].GetAncestor(1) = a.[Path]
)
SELECT a.[No]
	,b.[No] [ParentNo]
	,a.[Name] 
	,a.[PathStr]
FROM ProductCategory a
	LEFT JOIN [Product].[ProductCategories] b 
		ON a.[ParentPath] = b.[Path]
ORDER BY a.[Path] ASC