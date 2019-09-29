import sys
from InstagramAPI import InstagramAPI
cap=sys.argv[1]
InstagramAPI= InstagramAPI("crowd_nidhi","windows.exe")
InstagramAPI.login()  
photo_path = './send.jpeg'
InstagramAPI.uploadPhoto(photo_path, caption=cap)
print(str(cap))
sys.stdout.flush()