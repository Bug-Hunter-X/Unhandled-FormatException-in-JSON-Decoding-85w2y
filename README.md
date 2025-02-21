# Unhandled FormatException in Dart JSON Decoding

This repository demonstrates a common error in Dart applications involving JSON decoding and how to handle it effectively. The `bug.dart` file shows the initial code with the problem. The `bugSolution.dart` file provides the corrected code.

## Problem

The original code lacks specific handling for `FormatException` when decoding JSON. This makes it challenging to diagnose and resolve errors related to malformed JSON responses.

## Solution

The solution involves using a more specific `catch` block to handle `FormatException` separately, providing more context for debugging and error handling.