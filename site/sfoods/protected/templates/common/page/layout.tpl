<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>{%block name="title"%}南方味道{%/block%}</title>
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/index.css" />
</head>
<body>
    {%include 'common/page/header.tpl'%}
    {%block name="content"%}{%/block%}
    {%include 'common/tpl/food-item.tpl'%}
    {%include 'common/page/footer.tpl'%}
</body>
</html>