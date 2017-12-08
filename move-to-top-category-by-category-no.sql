--���o���w�ӫ~���O�Ǹ����V�W���h���Y
--�i�Ω�إ��ѥ]�h (Breadcrumb) UI
--�u�B�� > �B�ʨk�� > �t����-�k�v
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

