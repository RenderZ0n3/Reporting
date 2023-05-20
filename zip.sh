#!/bin/bash

OSID='53168'
EXAM_REPORT="OSCP-OS-$OSID-Exam-Report.pdf"
LAB_REPORT="OSCP-OS-$OSID-Lab-Report.pdf"
ZIP_PACKAGE="OSCP-OS-$OSID-Exam-Report.7z"

echo "Gathering Exam Reports..."
./gen.sh exam/exam_report.md $EXAM_REPORT

echo "Gathering Lab Reports..."
./gen.sh lab/lab_report.md $LAB_REPORT

echo "Creating 7z Package...."
7z a $ZIP_PACKAGE -pOS-$OSID $EXAM_REPORT $LAB_REPORT
