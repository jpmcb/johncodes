from TikTokApi import TikTokApi
api = TikTokApi()
tiktok_username = "johncodes"

user_data = api.getUser(tiktok_username)
followers = user_data['userInfo']['stats']['followerCount'] 
print(followers)
