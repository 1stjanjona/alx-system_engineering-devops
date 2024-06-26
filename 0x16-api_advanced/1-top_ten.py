#!/usr/bin/python3
'''1-top_ten.py function'''
import requests


def top_ten(subreddit):
    '''Print title of 10 hottest posts on subreddit'''
    url = "https://www.reddit.com/r/{}/hot/.json".format(subreddit)
    headers = {
        "User-Agent": "linux:0x16.api.advanced:v1.0.0 (by /u/bdov_)"
    }
    params = {
        "limit": 10
    }
    response = requests.get(url, headers=headers, params=params,
                            allow_redirects=False)
    if response.status_code == 404:
        print("None")
        return
    results = response.json().get("data")
    [print(c.get("data").get("title")) for c in results.get("children")]
'''
    try:
        response = requests.get(url, headers=headers, params=params, allow_redirects=False)
        if response.status_code == 404:
            print("None")
            return
        response.raise_for_status()
        results = response.json().get("data", {})
        children = results.get("children", [])
        if not children:
            print("None")
            return
        for c in children:
            print(c.get("data", {}).get("title", "None"))
    except requests.RequestException as e:
        print("None")
        return'''
