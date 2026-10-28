# Experiment 7 — AWS Lambda Serverless Function

This folder contains the journal write-up and sample Lambda function.

## Files
- `exp7.txt` — full journal, procedure, expected output, conclusion, and viva questions
- `lambda_function.py` — Python AWS Lambda handler
- `test_event.json` — sample event payload
- `exp7.json` — metadata for the course portal

## Console test
1. In AWS Lambda, create a function named `HelloLambda` using a Python runtime available in the console.
2. Copy the code from `lambda_function.py` into the inline code editor.
3. Deploy the code.
4. Create a test event using the contents of `test_event.json`.
5. Run the test and inspect the response.
6. Open the function's Monitor section to view CloudWatch logs.

Expected response contains `statusCode: 200` and the message `Hello, Student! Welcome to AWS Lambda.`

AWS may incur charges depending on usage and resources. Review the current AWS pricing and remove resources that are no longer needed.
