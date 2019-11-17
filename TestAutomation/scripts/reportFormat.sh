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
echo "}"
echo "th, td{"
echo "  padding: 12px;"
echo "}"
echo "</style>"
echo "</head>"

echo "<body>"
echo "<center>"
echo "<h2>Team6 OpenMRS Test Report</h2>"
echo "</center>"
echo "<p style="font-size:15px"> <i> This script runs all available test cases and prints their results. </i></p>"

echo "<table style="width:100%">"
echo "  <tr>"
echo "    <th style=\"font-size:1.0vw; text-decoration:underline;\">Test Name</th>"
echo "    <th style=\"font-size:1.0vw; text-decoration:underline; width:400px\">Requirement</th>"
echo "    <th style=\"font-size:1.0vw; text-decoration:underline;\">Component</th>"
echo "    <th style=\"font-size:1.0vw; text-decoration:underline;\">Method</th>"
echo "    <th style=\"font-size:1.0vw; text-decoration:underline;\">Inputs</th>"
echo "    <th style=\"font-size:1.0vw; text-decoration:underline;\">Representation</th>"
echo "    <th style=\"font-size:1.0vw; text-decoration:underline;\">Output</th>"
echo "    <th style=\"font-size:1.0vw; text-decoration:underline;\">Oracle</th>"
echo "    <th style=\"font-size:1.0vw; text-decoration:underline;\">Result</th>"
echo "  </tr>"
} > "${ReportFile}"

