import openai


def send(msg):
    openai.api_key = "sk-3BRJiWgZuN4JsLHp6bC5De7a81C64166A82d13AaC6E2Bb82"

    response = openai.ChatCompletion.create(
        model="gpt-4",
        messages=[
            {"role": "system",
             "content": "You are a project manager.   You understand Android software and its operating logic.   You are conducting test case migration between applications of the same type."},
            {"role": "user", "content":
                str(msg)
             },
        ],
        temperature=0.2
    )
    return list(response.choices)[0].to_dict()["message"]['content']
