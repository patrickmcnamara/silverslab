#!/usr/bin/python

import requests
import subprocess

json_url = "https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-IE"
json_data = requests.get(json_url).json()
image_url = "https://bing.com" + json_data["images"][0]["url"]
image_data = requests.get(image_url).content

with open(".wallpaper.jpg", "wb") as f:
    f.write(image_data)

subprocess.call(["feh", "--bg-scale", "--no-fehbg", ".wallpaper.jpg"])

