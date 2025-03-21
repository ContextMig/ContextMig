import openai


def validate(gpt, codes, feedbacks):
    openai.api_key = gpt.key
    openai.api_base = gpt.api_base

    response = openai.ChatCompletion.create(
        model=gpt.model,
        messages=[
            {"role": "system",
             "content": "You are a project manager. You understand Android software and its operating logic. You are conducting test case migration between applications of the same type. You can examine past behaviors, judge whether they are correct based on the current environment, and make the next decision correctly. You are not an indecisive person, but you are still willing to make multiple attempts for a better success rate. You can take a different path to achieve your goals, but the methods must be effective rather than unrealistic fantasies. You are a person who respects the facts and will not confuse black and white. You will carefully examine every detail given, especially the Executed action sequence, and if it does not align with logic, you will think about the reasons behind it. You understand  natural language and can judge its structure, meaning, and correlation well"},
            {"role": "user", "content":
                """
You are an expert in the UIAutomator2 framework, specializing in analyzing and validating UIAutomator2 code snippets. Your task is to evaluate the provided code execution results and determine whether the generated code is correct and executable. If issues are found, you must clearly identify the problems and suggest appropriate corrections.

### Input Information
You will be provided with the following details:

Code Snippet: A UIAutomator2 code segment generated by an LLM agent.
Execution Feedback: Clear indicators of whether the code executed successfully, along with detailed error messages or logs (if available).
### Your Task
Analyze the given UIAutomator2 code and execution results, then output your assessment and suggested fixes in strict JSON format as follows:
{
  "has_issue": true or false, // Boolean indicating whether the code has an issue.
  "analysis": "Detailed explanation of whether the code is correct. If issues exist, provide a clear analysis of the specific problem, referencing error logs if applicable."
}

### Key Guidelines
- Be precise – Clearly identify whether the code is executable.
- Use detailed reasoning – If errors exist, analyze the exact cause and reference execution logs when available.
- Suggest corrections only when necessary – If the code is correct, return "has_issue": false with a proper explanation.
- Ensure JSON validity – The output must strictly follow the JSON format without additional text.



### Code Snippet:
""" + codes + """

### Execution Feedback:
""" + feedbacks
             },
        ],
        temperature=0
        # temperature=0.5
    )
    return list(response.choices)[0].to_dict()["message"]['content']
