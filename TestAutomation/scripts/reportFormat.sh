#!/bin/bash

ReportFile="testReport.html"

#go to report directory
cd ../reports

#start report
{
echo "<!DOCTYPE html>"
echo "<html>"
echo "<head>"
echo "<style>"
echo "table, th, td {"
echo "  border: 1px solid black;"
echo "  border-collapse: collapse;"
echo "}"
echo "th, td{"
echo "  padding: 15px;"
echo "}"
echo "</style>"
echo "</head>"
echo "<body>"

echo "<h2>OpenMRS Test Report</h2>"
echo "<table style="width:100%">"
echo "  <tr>"
echo "    <th>Test Name</th>"
echo "    <th>Inputs</th>"
echo "    <th>Output</th>"
echo "    <th>Oracle</th>"
echo "    <th>Result</th>"
echo "  </tr>"
} > "${ReportFile}"

