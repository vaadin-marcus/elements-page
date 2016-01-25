<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />
<script src="<%=request.getContextPath()%>/bower_components/webcomponentsjs/webcomponents-lite.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/elements.css" media="screen" charset="utf-8">
<link rel="import" href="<%=request.getContextPath()%>/all-the-things.html">
<style is="custom-style">
  :root {
    --default-primary-color: #00b4f0;
  }
</style>



