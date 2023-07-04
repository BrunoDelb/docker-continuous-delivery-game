import ta
import pandas as pd
import matplotlib.pyplot as plt
import requests
import json


#TOKEN = "VR"
TOKEN = "BTC"

# Fetch Bitcoin data from Binance API
binance_api_url = "https://api.binance.com/api/v3/klines"
params = {"symbol": TOKEN + "USDT", "interval": "1d", "limit": 200}
response = requests.get(binance_api_url, params=params)
data = json.loads(response.text)
df = pd.DataFrame(data)

# Rename columns and set index
df = df[[0, 1, 2, 3, 4, 5]]
df.columns = ["timestamp", "open", "high", "low", "close", "volume"]
df["timestamp"] = pd.to_datetime(df["timestamp"], unit="ms")
df.set_index("timestamp", inplace=True)

# Calculate MACD using TA-Lib
macd = ta.trend.MACD(df["close"], window_slow=26, window_fast=12, window_sign=9)

# Create a DataFrame to store MACD values
macd_data = pd.DataFrame({
    "macd": macd.macd(),
    "macd_signal": macd.macd_signal(),
    "macd_histogram": macd.macd_diff()
})

# Export MACD data to CSV file
macd_data.to_csv("data/macd_" + TOKEN + ".csv", index=True)
