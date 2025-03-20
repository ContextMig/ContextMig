class Gpt:
    def __init__(self, key, model):
        self.key = key
        self.model = model

device_name = 'QWHULJ8D6TCY9PSG'
model = "gpt-4"
openai_api_config = Gpt("sk-3BRJiWgZuN4JsLHp1bC5De7a81C24166A87d13AaC6E2Bb82", model)

MAX_RETRY_TIMES = 5
MAX_AGENT_RETRY_TIMES = 20
