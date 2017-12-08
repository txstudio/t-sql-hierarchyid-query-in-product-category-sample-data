--
--���o�Ҧ��ӫ~�s�����`�I�P�~�����Y
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