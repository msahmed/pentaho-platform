<%@ page language="java" 
	import="java.util.ArrayList,
	java.util.Date,
	java.io.ByteArrayOutputStream,
	org.pentaho.platform.util.web.SimpleUrlFactory,
	org.pentaho.platform.web.jsp.messages.Messages,
	org.pentaho.platform.engine.core.system.PentahoSystem,
	org.pentaho.platform.uifoundation.chart.DashboardWidgetComponent,
	org.pentaho.platform.web.http.request.HttpRequestParameterProvider,
	org.pentaho.platform.web.http.session.HttpSessionParameterProvider,
	org.pentaho.platform.api.engine.IPentahoSession,
	org.pentaho.platform.web.http.WebTemplateHelper,
	org.pentaho.platform.util.VersionHelper,
	org.pentaho.platform.util.messages.LocaleHelper,
	org.pentaho.platform.engine.core.solution.SimpleParameterProvider,
	org.pentaho.platform.uifoundation.chart.ChartHelper"
	 %><%

/*
 * Copyright 2006 - 2010 Pentaho Corporation.  All rights reserved. 
 * This program is free software; you can redistribute it and/or modify it under the
 * terms of the GNU Lesser General Public License, version 2.1 as published by the Free Software
 * Foundation.
 *
 * You should have received a copy of the GNU Lesser General Public License along with this
 * program; if not, you can obtain a copy at http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html
 * or from the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU Lesser General Public License for more details.
 *
 * Created Feb 16, 2006 
 * @author James Dixon
 */

/*

This JSP page is part of the Pentaho samples that show how JSP can be 
used to present and control content that is generated by the Pentaho BI Platform.

This JSP page is the page that is used after a user clicks on a link in the embedded
report that is displayed in SampleDashboard.jsp.

The region, department, and job position title are passed in as parameters on the URL

The url is formatted in the report definition file:

~/pentaho-demo/pentaho-solutions/samples/dashboard/jsp/embedded_report.xml

The url is set in the last function that is defined in the file. 
The important line is the "pattern"

     <expression name="URLCreateExpression" class="org.jfree.report.function.TextFormatExpression">
       <properties>
         <property name="pattern">SampleDrill?region={0}&amp;position={1}&amp;department={2}</property>
         <property name="field[0]">REGION</property>
         <property name="field[1]">POSITIONTITLE</property>
         <property name="field[2]">DEPARTMENT</property>
       </properties>
     </expression>

You can change the url template to point to wherever you need it to

*/

	String region = request.getParameter("region");
	String department = request.getParameter("department");
	String position = request.getParameter("position");

%>
<html>
	<head>
		<title>Pentaho Regional Report - JSP Sample</title>
	</head>
	<body>
<h1 style="font-family:Arial">Drill Destination</h1>

<span style="font-family:Arial">
The selected region is '<%= region %>'
<p/>
The selected department is '<%= department %>'
<p/>
The selected position is '<%= position %>'
</span>

</body>
</html>
