<?xml version="1.0" encoding="iso-8859-1"?>



<xsl:stylesheet version="1.0"

  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"

  xmlns:dt="urn:schemas-microsoft-com:datatypes">

	<xsl:template match="/">

		<html>

			<head>

				<title>Experiment Advisor Report</title>



				<style type="text/css">

          body { font-family:Segoe UI; }

          th { background-color:#1E1D72; color:white; }

          td { border-style:solid; border-width:1pt; border-color:#1E1D72; }

          table { width:60%;  border-color:#1E1D72; border-style:solid; border-width:1pt; border-collapse:collapse; }

          .trOdd { background-color:#F0F8FF; }

          .trEven { background-color:#F5F5F5; }



				</style>

			</head>

			<body>



				<h1>Experiment Advisor Report</h1>



				<img src = "data:image/png;base64,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" />



				<!-- ExperimentInfo -->

				<h2>Experiment Info</h2>



				<table>



					<xsl:for-each select="Report/ExperimentInfo">



						<tr>



							<td>ExperimentName:</td>



							<td>



								<xsl:value-of select="ExperimentName"/>



							</td>



						</tr>







						<tr>



							<td>Session Date/Time:</td>



							<td>



								<xsl:value-of select="SessionDate"/>

                <xsl:text disable-output-escaping="yes">&amp;</xsl:text>nbsp;

                <xsl:value-of select="SessionTime"/>



							</td>



						</tr>







						<tr>



							<td>Subject</td>



							<td>



								<xsl:value-of select="Subject"/>



							</td>



						</tr>







						<tr>



							<td>Session</td>



							<td>



								<xsl:value-of select="Session"/>



							</td>



						</tr>







						<tr>



							<td>Group</td>



							<td>



								<xsl:value-of select="Group"/>



							</td>



						</tr>



						<tr>



							<td>Elapsed Time</td>



							<td>



								<xsl:value-of select="ElapsedTime"/>



							</td>



						</tr>          







					</xsl:for-each>



				</table>







				<!-- TimeAuditInfo -->







				<h2>Onset To Onset Stats</h2>

				<xsl:variable name="resultCount" select="count(Report/TimeAuditInfo/TimeAuditObjects/TimeAuditObject/OnsetToOnsetStats/OnsetToOnsetStat)" />



				<xsl:choose>



					<xsl:when test="$resultCount = 0">

						<blockquote>(none)</blockquote>

					</xsl:when>



					<xsl:otherwise>



						<table>







							<tr>



								<th>Object</th>



								<th>Expected</th>



								<th>N</th>



								<th>Mean</th>



								<th>StdDev</th>



								<th>Min</th>



								<th>Max</th>             



							</tr>







							<xsl:for-each select="Report/TimeAuditInfo/TimeAuditObjects/TimeAuditObject/OnsetToOnsetStats/OnsetToOnsetStat">





								<xsl:variable name="css-class">

									<xsl:choose>

										<xsl:when test="position() mod 2 = 0">trEven</xsl:when>

										<xsl:otherwise>trOdd</xsl:otherwise>

									</xsl:choose>

								</xsl:variable>





								<tr class="{$css-class}">



									<td>





										<xsl:value-of select="Name"/>



									</td>



									<td>



										<xsl:value-of select="Expected"/>



									</td>



									<td>



										<xsl:value-of select="N"/>



									</td>



									<td>



										<xsl:choose>

											<xsl:when test="Mean/@dt:dt = 'r8'">

												<xsl:value-of select='format-number(Mean, "0")'/>

											</xsl:when>

											<xsl:when test="Mean/@dt:dt = 'boolean'">

												<xsl:choose>

													<xsl:when test="Mean = 1">Yes</xsl:when>

													<xsl:otherwise>No</xsl:otherwise>

												</xsl:choose>

											</xsl:when>

											<xsl:otherwise>

												<xsl:value-of select="Mean"/>

											</xsl:otherwise>

										</xsl:choose>





									</td>



									<td>



										<xsl:choose>

											<xsl:when test="StdDevP/@dt:dt = 'r8'">

												<xsl:value-of select='format-number(StdDevP, "0")'/>

											</xsl:when>

											<xsl:when test="StdDevP/@dt:dt = 'boolean'">

												<xsl:choose>

													<xsl:when test="StdDevP = 1">Yes</xsl:when>

													<xsl:otherwise>No</xsl:otherwise>

												</xsl:choose>

											</xsl:when>

											<xsl:otherwise>

												<xsl:value-of select="StdDevP"/>

											</xsl:otherwise>

										</xsl:choose>



									</td>



									<td>



										<xsl:choose>

											<xsl:when test="Min/@dt:dt = 'r8'">

												<xsl:value-of select='format-number(Min, "0")'/>

											</xsl:when>

											<xsl:when test="Min/@dt:dt = 'boolean'">

												<xsl:choose>

													<xsl:when test="Min = 1">Yes</xsl:when>

													<xsl:otherwise>No</xsl:otherwise>

												</xsl:choose>

											</xsl:when>

											<xsl:otherwise>

												<xsl:value-of select="Min"/>

											</xsl:otherwise>

										</xsl:choose>



									</td>



									<td>



										<xsl:choose>

											<xsl:when test="Max/@dt:dt = 'r8'">

												<xsl:value-of select='format-number(Max, "0")'/>

											</xsl:when>

											<xsl:when test="Max/@dt:dt = 'boolean'">

												<xsl:choose>

													<xsl:when test="Max = 1">Yes</xsl:when>

													<xsl:otherwise>No</xsl:otherwise>

												</xsl:choose>

											</xsl:when>

											<xsl:otherwise>

												<xsl:value-of select="Max"/>

											</xsl:otherwise>

										</xsl:choose>





									</td>                  



								</tr>











							</xsl:for-each>



						</table>



					</xsl:otherwise>



				</xsl:choose>



				<h2>Onset Delay Stats</h2>



				<xsl:variable name="OnsetDelayCount" select="count(Report/TimeAuditInfo/TimeAuditObjects/TimeAuditObject/OnsetDelayStats)" />



				<xsl:choose>



					<xsl:when test="$OnsetDelayCount = 0">

						<blockquote>(none)</blockquote>

					</xsl:when>



					<xsl:otherwise>





						<table>



							<tr>



								<th>Object</th>



								<th>N</th>



								<th>Mean</th>



								<th>StdDev</th>



								<th>Min</th>



								<th>Max</th>



							</tr>







							<xsl:for-each select="Report/TimeAuditInfo/TimeAuditObjects/TimeAuditObject/OnsetDelayStats">







								<xsl:variable name="css-class">

									<xsl:choose>

										<xsl:when test="position() mod 2 = 0">trEven</xsl:when>

										<xsl:otherwise>trOdd</xsl:otherwise>

									</xsl:choose>

								</xsl:variable>





								<tr class="{$css-class}">



									<td>



										<xsl:value-of select="Name"/>



									</td>



									<td>



										<xsl:value-of select="N"/>



									</td>



									<td>



										<xsl:choose>

											<xsl:when test="Mean/@dt:dt = 'r8'">

												<xsl:value-of select='format-number(Mean, "0")'/>

											</xsl:when>

											<xsl:when test="Mean/@dt:dt = 'boolean'">

												<xsl:choose>

													<xsl:when test="Mean = 1">Yes</xsl:when>

													<xsl:otherwise>No</xsl:otherwise>

												</xsl:choose>

											</xsl:when>

											<xsl:otherwise>

												<xsl:value-of select="Mean"/>

											</xsl:otherwise>

										</xsl:choose>



									</td>



									<td>



										<xsl:choose>

											<xsl:when test="StdDevP/@dt:dt = 'r8'">

												<xsl:value-of select='format-number(StdDevP, "0")'/>

											</xsl:when>

											<xsl:when test="StdDevP/@dt:dt = 'boolean'">

												<xsl:choose>

													<xsl:when test="StdDevP = 1">Yes</xsl:when>

													<xsl:otherwise>No</xsl:otherwise>

												</xsl:choose>

											</xsl:when>

											<xsl:otherwise>

												<xsl:value-of select="StdDevP"/>

											</xsl:otherwise>

										</xsl:choose>



									</td>



									<td>



										<xsl:choose>

											<xsl:when test="Min/@dt:dt = 'r8'">

												<xsl:value-of select='format-number(Min, "0")'/>

											</xsl:when>

											<xsl:when test="Min/@dt:dt = 'boolean'">

												<xsl:choose>

													<xsl:when test="Min = 1">Yes</xsl:when>

													<xsl:otherwise>No</xsl:otherwise>

												</xsl:choose>

											</xsl:when>

											<xsl:otherwise>

												<xsl:value-of select="Min"/>

											</xsl:otherwise>

										</xsl:choose>





									</td>



									<td>



										<xsl:choose>

											<xsl:when test="Max/@dt:dt = 'r8'">

												<xsl:value-of select='format-number(Max, "0")'/>

											</xsl:when>

											<xsl:when test="Max/@dt:dt = 'boolean'">

												<xsl:choose>

													<xsl:when test="Max = 1">Yes</xsl:when>

													<xsl:otherwise>No</xsl:otherwise>

												</xsl:choose>

											</xsl:when>

											<xsl:otherwise>

												<xsl:value-of select="Max"/>

											</xsl:otherwise>

										</xsl:choose>





									</td>







								</tr>



							</xsl:for-each>



						</table>



					</xsl:otherwise>

				</xsl:choose>



				<h2>Load Time Stats</h2>



				<xsl:variable name="LoadTimeCount" select="count(Report/TimeAuditInfo/TimeAuditObjects/TimeAuditObject/LoadTimeStats)" />



				<xsl:choose>



					<xsl:when test="$LoadTimeCount= 0">

						<blockquote>(none)</blockquote>

					</xsl:when>



					<xsl:otherwise>



						<table>

							<tr>



								<th>Object</th>



								<th>N</th>



								<th>Mean</th>



								<th>StdDev</th>



								<th>Min</th>



								<th>Max</th>



							</tr>







							<xsl:for-each select="Report/TimeAuditInfo/TimeAuditObjects/TimeAuditObject/LoadTimeStats">







								<xsl:variable name="css-class">

									<xsl:choose>

										<xsl:when test="position() mod 2 = 0">trEven</xsl:when>

										<xsl:otherwise>trOdd</xsl:otherwise>

									</xsl:choose>

								</xsl:variable>





								<tr class="{$css-class}">



									<td>



										<xsl:value-of select="Name"/>



									</td>



									<td>



										<xsl:value-of select="N"/>



									</td>



									<td>



										<xsl:choose>

											<xsl:when test="Mean/@dt:dt = 'r8'">

												<xsl:value-of select='format-number(Mean, "0")'/>

											</xsl:when>

											<xsl:when test="Mean/@dt:dt = 'boolean'">

												<xsl:choose>

													<xsl:when test="Mean = 1">Yes</xsl:when>

													<xsl:otherwise>No</xsl:otherwise>

												</xsl:choose>

											</xsl:when>

											<xsl:otherwise>

												<xsl:value-of select="Mean"/>

											</xsl:otherwise>

										</xsl:choose>



									</td>



									<td>



										<xsl:choose>

											<xsl:when test="StdDevP/@dt:dt = 'r8'">

												<xsl:value-of select='format-number(StdDevP, "0")'/>

											</xsl:when>

											<xsl:when test="StdDevP/@dt:dt = 'boolean'">

												<xsl:choose>

													<xsl:when test="StdDevP = 1">Yes</xsl:when>

													<xsl:otherwise>No</xsl:otherwise>

												</xsl:choose>

											</xsl:when>

											<xsl:otherwise>

												<xsl:value-of select="StdDevP"/>

											</xsl:otherwise>

										</xsl:choose>



									</td>



									<td>



										<xsl:choose>

											<xsl:when test="N = 0">

						0

											</xsl:when>

											<xsl:otherwise>



												<xsl:choose>

													<xsl:when test="Min/@dt:dt = 'r8'">

														<xsl:value-of select='format-number(Min, "0")'/>

													</xsl:when>

													<xsl:when test="Min/@dt:dt = 'boolean'">

														<xsl:choose>

															<xsl:when test="Min = 1">Yes</xsl:when>

															<xsl:otherwise>No</xsl:otherwise>

														</xsl:choose>

													</xsl:when>

													<xsl:otherwise>

														<xsl:value-of select="Min"/>

													</xsl:otherwise>

												</xsl:choose>

											</xsl:otherwise>

										</xsl:choose>







									</td>



									<td>



										<xsl:choose>

											<xsl:when test="N = 0">

						0

											</xsl:when>

											<xsl:otherwise>

												<xsl:choose>

													<xsl:when test="Max/@dt:dt = 'r8'">

														<xsl:value-of select='format-number(Max, "0")'/>

													</xsl:when>

													<xsl:when test="Max/@dt:dt = 'boolean'">

														<xsl:choose>

															<xsl:when test="Max = 1">Yes</xsl:when>

															<xsl:otherwise>No</xsl:otherwise>

														</xsl:choose>

													</xsl:when>

													<xsl:otherwise>

														<xsl:value-of select="Max"/>

													</xsl:otherwise>

												</xsl:choose>

											</xsl:otherwise>

										</xsl:choose>







									</td>







								</tr>

							</xsl:for-each>

						</table>

					</xsl:otherwise>

				</xsl:choose>



				<!-- MovieInfo -->





				<!-- AdvisorModuleFindings -->



				<h2>Experiment Advisor Findings</h2>



				<xsl:variable name="ExperimentAdvisorModuleFindingCount" select="count(Report/AdvisorModuleFindings/AdvisorModuleFinding)" />



				<xsl:choose>



					<xsl:when test="$ExperimentAdvisorModuleFindingCount = 0">

						<blockquote>(none)</blockquote>

					</xsl:when>



					<xsl:otherwise>





						<table>







							<tr>



								<th>Caption</th>



								<th>Category</th>



								<th>Message</th>



								<th>Occurrences</th>



							</tr>







							<xsl:for-each select="Report/AdvisorModuleFindings/AdvisorModuleFinding">





								<xsl:variable name="css-class">

									<xsl:choose>

										<xsl:when test="position() mod 2 = 0">trEven</xsl:when>

										<xsl:otherwise>trOdd</xsl:otherwise>

									</xsl:choose>

								</xsl:variable>





								<tr class="{$css-class}">



									<td>



										<xsl:value-of select="AdvisorModuleCaption"/>



										<xsl:variable name="urlParameters">GUID=<xsl:value-of select="AdvisorModuleDefinitionGuid"/>&amp;Message=<xsl:value-of select="MessageUrlEscape"/>

										</xsl:variable>



										<xsl:text disable-output-escaping="yes">

											<![CDATA[&nbsp;&nbsp;<a href="http://www.pstnet.com/support/advisor/Help.aspx?]]>

										</xsl:text>

										<xsl:value-of select="$urlParameters"/>

										<xsl:text disable-output-escaping="yes">

											<![CDATA["><img alt="" style="border: 0;" src="data:image/png;base64,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" /></a>]]></xsl:text>





									</td>



									<td>



										<xsl:value-of select="Category"/>



									</td>



									<td>



										<xsl:value-of select="Message"/>



									</td>



									<td>



										<xsl:value-of select="MessageCount"/>



									</td>



								</tr>

							</xsl:for-each>



						</table>

					</xsl:otherwise>

				</xsl:choose>



				<!-- AdvisorModuleInfo -->



				<h2>Experiment Advisor Modules</h2>



				<xsl:variable name="ExperimentAdvisorModuleCount" select="count(Report/AdvisorModules/AdvisorModule)" />



				<xsl:choose>



					<xsl:when test="$ExperimentAdvisorModuleCount= 0">

						<blockquote>(none)</blockquote>

					</xsl:when>



					<xsl:otherwise>



						<table>

							<tr>

								<th>Caption</th>



								<th>Enabled</th>



								<th>Description</th>

							</tr>



							<xsl:for-each select="Report/AdvisorModules/AdvisorModule">



								<xsl:variable name="css-class">

									<xsl:choose>

										<xsl:when test="position() mod 2 = 0">trEven</xsl:when>

										<xsl:otherwise>trOdd</xsl:otherwise>

									</xsl:choose>

								</xsl:variable>





								<tr class="{$css-class}">





									<td>

										<xsl:value-of select="Caption"/>

										<xsl:text disable-output-escaping="yes">

											<![CDATA[&nbsp;&nbsp;<a href="http://www.pstnet.com/support/advisor/Help.aspx?GUID=]]>

										</xsl:text>

										<xsl:value-of select="DefinitionGuid"/>

										<xsl:text disable-output-escaping="yes">

											<![CDATA["><img alt="" style="border: 0;" src="data:image/png;base64,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" /></a>]]></xsl:text>

									</td>



									<td>

										<xsl:choose>

											<xsl:when test="Enabled = 1">Yes</xsl:when>

											<xsl:otherwise>No</xsl:otherwise>

										</xsl:choose>

									</td>



									<td>

										<xsl:value-of select="Description"/>

									</td>



								</tr>

							</xsl:for-each>



						</table>



					</xsl:otherwise>

				</xsl:choose>



				<!-- ClockInfo -->



				<h2>Clock Info</h2>



				<table>



					<xsl:for-each select="Report/Clock/Property">



						<xsl:variable name="css-class">

							<xsl:choose>

								<xsl:when test="position() mod 2 = 0">trEven</xsl:when>

								<xsl:otherwise>trOdd</xsl:otherwise>

							</xsl:choose>

						</xsl:variable>





						<tr class="{$css-class}">



							<td>



								<xsl:value-of select="PropertyName"/>



							</td>



							<td>



								<xsl:choose>

									<xsl:when test="PropertyValue/@dt:dt = 'r8'">

										<xsl:value-of select='format-number(PropertyValue, "0")'/>

									</xsl:when>

									<xsl:when test="PropertyValue/@dt:dt = 'boolean'">

										<xsl:choose>

											<xsl:when test="PropertyValue = 1">Yes</xsl:when>

											<xsl:otherwise>No</xsl:otherwise>

										</xsl:choose>

									</xsl:when>

									<xsl:otherwise>

										<xsl:value-of select="PropertyValue"/>

									</xsl:otherwise>

								</xsl:choose>





							</td>



						</tr>



					</xsl:for-each>



				</table>



				<!-- DeviceInfo -->



				<h2>Device Info</h2>



				<xsl:for-each select="Report/Devices/Device">

					<table>





						<xsl:for-each select="Property">



							<xsl:variable name="css-class">

								<xsl:choose>

									<xsl:when test="position() mod 2 = 0">trEven</xsl:when>

									<xsl:otherwise>trOdd</xsl:otherwise>

								</xsl:choose>

							</xsl:variable>



							<tr class="{$css-class}">



								<td width="25%">



									<xsl:value-of select="PropertyName"/>



								</td>



								<td>



									<xsl:choose>

										<xsl:when test="PropertyValue/@dt:dt = 'r8'">

											<xsl:value-of select='format-number(PropertyValue, "0.##")'/>

										</xsl:when>

										<xsl:when test="PropertyValue/@dt:dt = 'boolean'">

											<xsl:choose>

												<xsl:when test="PropertyValue = 1">Yes</xsl:when>

												<xsl:otherwise>No</xsl:otherwise>

											</xsl:choose>

										</xsl:when>

										<xsl:otherwise>

											<xsl:value-of select="PropertyValue"/>

										</xsl:otherwise>

									</xsl:choose>



								</td>



							</tr>







						</xsl:for-each>



					</table>



					<br />



				</xsl:for-each>



				<!-- Running Applications -->

				<h2>Running Applications</h2>

				<table>

					<tr>

						<th>Image Name</th>

						<th>Process ID</th>

						<th>Working Set Size (KB)</th>

						<th>Full Name</th>

						<th>Version</th>

						<th>Last Modified</th>

						<th>Size</th>

					</tr>

					

					<xsl:for-each select="Report/RunningApplications/RunningApplication">

						<xsl:variable name="css-class">

							<xsl:choose>

								<xsl:when test="position() mod 2 = 0">trEven</xsl:when>

								<xsl:otherwise>trOdd</xsl:otherwise>

							</xsl:choose>

						</xsl:variable>

						<tr class="{$css-class}">

							<td>

								<xsl:value-of select="ImageName"/>

							</td>

							<td>

								<xsl:value-of select="ProcessID"/>

							</td>

							<td>

								<xsl:value-of select="WorkingSetSizeKB"/>

							</td>

							<td>

								<xsl:value-of select="ImageFullName"/>

							</td>		

							<td>

								<xsl:value-of select="FileVersion"/>

							</td>	

							<td>

								<xsl:value-of select="LastModifiedDateTime"/>

							</td>								

							<td>

								<xsl:value-of select="ImageSize"/>

							</td>

						</tr>

					</xsl:for-each>

				</table>
				
				<!-- OperatingSystemInfo -->
				
				<br />
				<h2>Operating System Info</h2>
				
				
					<table>


						<xsl:for-each select="Report/OperatingSystem/Property">



							<xsl:variable name="css-class">

								<xsl:choose>

									<xsl:when test="position() mod 2 = 0">trEven</xsl:when>

									<xsl:otherwise>trOdd</xsl:otherwise>

								</xsl:choose>

							</xsl:variable>



							<tr class="{$css-class}">



								<td width="25%">



									<xsl:value-of select="PropertyName"/>



								</td>



								<td>



									<xsl:choose>

										<xsl:when test="PropertyValue/@dt:dt = 'r8'">

											<xsl:value-of select='format-number(PropertyValue, "0.##")'/>

										</xsl:when>

										<xsl:when test="PropertyValue/@dt:dt = 'boolean'">

											<xsl:choose>

												<xsl:when test="PropertyValue = 1">Yes</xsl:when>

												<xsl:otherwise>No</xsl:otherwise>

											</xsl:choose>

										</xsl:when>

										<xsl:otherwise>

											<xsl:value-of select="PropertyValue"/>

										</xsl:otherwise>

									</xsl:choose>



								</td>



							</tr>

						</xsl:for-each>

					</table>
					
				<br />
					
				<br />
				
				<h2>BIOS Info</h2>
				
				
					<table>


						<xsl:for-each select="Report/BIOS/Type0/Property">



							<xsl:variable name="css-class">

								<xsl:choose>

									<xsl:when test="position() mod 2 = 0">trEven</xsl:when>

									<xsl:otherwise>trOdd</xsl:otherwise>

								</xsl:choose>

							</xsl:variable>



							<tr class="{$css-class}">



								<td width="25%">



									<xsl:value-of select="PropertyName"/>



								</td>



								<td>



									<xsl:choose>

										<xsl:when test="PropertyValue/@dt:dt = 'r8'">

											<xsl:value-of select='format-number(PropertyValue, "0.##")'/>

										</xsl:when>

										<xsl:when test="PropertyValue/@dt:dt = 'boolean'">

											<xsl:choose>

												<xsl:when test="PropertyValue = 1">Yes</xsl:when>

												<xsl:otherwise>No</xsl:otherwise>

											</xsl:choose>

										</xsl:when>

										<xsl:otherwise>

											<xsl:value-of select="PropertyValue"/>

										</xsl:otherwise>

									</xsl:choose>



								</td>



							</tr>

						</xsl:for-each>

					</table>
					
					<br />
					
					<table>


						<xsl:for-each select="Report/BIOS/Type1/Property">



							<xsl:variable name="css-class">

								<xsl:choose>

									<xsl:when test="position() mod 2 = 0">trEven</xsl:when>

									<xsl:otherwise>trOdd</xsl:otherwise>

								</xsl:choose>

							</xsl:variable>



							<tr class="{$css-class}">



								<td width="25%">



									<xsl:value-of select="PropertyName"/>



								</td>



								<td>



									<xsl:choose>

										<xsl:when test="PropertyValue/@dt:dt = 'r8'">

											<xsl:value-of select='format-number(PropertyValue, "0.##")'/>

										</xsl:when>

										<xsl:when test="PropertyValue/@dt:dt = 'boolean'">

											<xsl:choose>

												<xsl:when test="PropertyValue = 1">Yes</xsl:when>

												<xsl:otherwise>No</xsl:otherwise>

											</xsl:choose>

										</xsl:when>

										<xsl:otherwise>

											<xsl:value-of select="PropertyValue"/>

										</xsl:otherwise>

									</xsl:choose>



								</td>



							</tr>

						</xsl:for-each>

					</table>
					
					<br />
					
					<table>


						<xsl:for-each select="Report/BIOS/Type2/Property">



							<xsl:variable name="css-class">

								<xsl:choose>

									<xsl:when test="position() mod 2 = 0">trEven</xsl:when>

									<xsl:otherwise>trOdd</xsl:otherwise>

								</xsl:choose>

							</xsl:variable>



							<tr class="{$css-class}">



								<td width="25%">



									<xsl:value-of select="PropertyName"/>



								</td>



								<td>



									<xsl:choose>

										<xsl:when test="PropertyValue/@dt:dt = 'r8'">

											<xsl:value-of select='format-number(PropertyValue, "0.##")'/>

										</xsl:when>

										<xsl:when test="PropertyValue/@dt:dt = 'boolean'">

											<xsl:choose>

												<xsl:when test="PropertyValue = 1">Yes</xsl:when>

												<xsl:otherwise>No</xsl:otherwise>

											</xsl:choose>

										</xsl:when>

										<xsl:otherwise>

											<xsl:value-of select="PropertyValue"/>

										</xsl:otherwise>

									</xsl:choose>



								</td>



							</tr>

						</xsl:for-each>

					</table>
					
					<br />
					
					<table>


						<xsl:for-each select="Report/BIOS/Type3/Property">



							<xsl:variable name="css-class">

								<xsl:choose>

									<xsl:when test="position() mod 2 = 0">trEven</xsl:when>

									<xsl:otherwise>trOdd</xsl:otherwise>

								</xsl:choose>

							</xsl:variable>



							<tr class="{$css-class}">



								<td width="25%">



									<xsl:value-of select="PropertyName"/>



								</td>



								<td>



									<xsl:choose>

										<xsl:when test="PropertyValue/@dt:dt = 'r8'">

											<xsl:value-of select='format-number(PropertyValue, "0.##")'/>

										</xsl:when>

										<xsl:when test="PropertyValue/@dt:dt = 'boolean'">

											<xsl:choose>

												<xsl:when test="PropertyValue = 1">Yes</xsl:when>

												<xsl:otherwise>No</xsl:otherwise>

											</xsl:choose>

										</xsl:when>

										<xsl:otherwise>

											<xsl:value-of select="PropertyValue"/>

										</xsl:otherwise>

									</xsl:choose>



								</td>



							</tr>

						</xsl:for-each>

					</table>
					
					<br />
					<br />
					<br />

			</body>



		</html>



	</xsl:template>



</xsl:stylesheet>







