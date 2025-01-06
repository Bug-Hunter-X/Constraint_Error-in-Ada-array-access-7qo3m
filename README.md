# Ada Constraint_Error Example

This repository demonstrates a common error in Ada programming: the `Constraint_Error` exception that can arise from attempting to access an array element outside of its defined bounds.  The example shows how this can occur even with seemingly straightforward code. The solution demonstrates how to prevent this error through robust bounds checking.

## The Problem

The original Ada code contains a potential for a `Constraint_Error`.  The `Get_Value` function is not sufficiently protected against invalid input that could cause the array to be accessed outside its bounds. This is particularly problematic if the calling code is not careful to ensure indices are within the correct range.

## The Solution

The solution modifies the `Get_Value` function to include a check to ensure that the `Index` is within the valid range of the array `Arr` before attempting to access it.  This prevents the `Constraint_Error` from occurring.  This type of robust input validation is crucial in writing reliable Ada code.
