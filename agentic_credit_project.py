import os
import sys
import argparse
import yaml
import json
import logging
from pathlib import Path
from dataclasses import dataclass, asdict
from typing import Dict, Any, List, Optional
import requests



import pandas as pd
import numpy as np


from sklearn.model_selection import train_test_split, cross_val_score
from sklearn.linear_model import LogisticRegression
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import roc_auc_score, accuracy_score, classification_report
from sklearn.preprocessing import StandardScaler
from sklearn.impute import SimpleImputer


import joblib
import os

# Load config.yaml
with open("config.yml", "r") as f:
    CONFIG = yaml.safe_load(f)

# Example usage:
import ollama
import os

client = ollama.Client(host=os.getenv("OLLAMA_HOST"))
response = client.chat(model="deepseek-r1:latest", messages=[{"role": "user", "content": "1+1=?"}])
print(response["message"]["content"])
