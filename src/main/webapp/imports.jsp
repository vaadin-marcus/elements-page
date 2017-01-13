<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />
<script src="<%=request.getContextPath()%>/script/webcomponents-lite.min.js" async></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/elements.css?32" media="screen" charset="utf-8" async>
<link rel="import" href="<%=request.getContextPath()%>/all-the-things.html?32" async>
<style is="custom-style">
  :root {
    --primary-color: #00b4f0;
  }
</style>
