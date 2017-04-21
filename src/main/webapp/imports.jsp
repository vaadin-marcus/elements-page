<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />
<script src="<%=request.getContextPath()%>/script/webcomponents-lite.min.js" async></script>
<%-- <script src="<%=request.getContextPath()%>/script/hydrolysis.js" async></script> --%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/elements.css?17" media="screen" charset="utf-8" async>
<link rel="import" href="<%=request.getContextPath()%>/all-the-things_html.html?17" async>
<link rel="import" href="<%=request.getContextPath()%>/bower_components/hydrolysis/hydrolysis-analyzer.html?17" async>
<%-- <script src="<%=request.getContextPath()%>/all-the-things.min.js?2" async></script> --%>
<style is="custom-style">
  :root {
    --primary-color: #00b4f0;
  }
</style>
