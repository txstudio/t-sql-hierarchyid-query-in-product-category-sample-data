--
--取得所有商品編號的節點與繼承關係
--
SELECT a.[No]
	,(
		SELECT b.[No]
		FROM [Product].[ProductCategories] b
		WHERE b.[Path] = a.[Path].GetAncestor(1)
	) [ParentNo]
	,a.[Name]
	,a.[IsEnabled]
	,a.[Path]
	,a.[Path].ToString() [PathStr]
	,a.[Path].GetLevel() [Level]
FROM [Product].[ProductCategories] a with (nolock)
ORDER BY a.[Path].GetLevel() ASC
	,a.[Path] ASC