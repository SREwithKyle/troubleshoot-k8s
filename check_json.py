import json
import os

def check_json_files(directory):
    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith(".json"):
                filepath = os.path.join(root, file)
                try:
                    with open(filepath, "r", encoding="utf-8") as f:
                        json.load(f)
                except json.JSONDecodeError as e:
                    print(f"Invalid JSON in: {filepath} -> {e}")

directory = "./"  # Change this to your target folder
check_json_files(directory)
