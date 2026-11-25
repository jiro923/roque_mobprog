Lab Activity 2: Discussion

- How I managed the posts and notifications efficiently

To keep my code from getting too messy and repetitive, I used reusable custom widgets  along with Flutter's ListView and ListView.separated. Instead of writing the same layout code over and over for each item, I just passed the names, captions, dates, and like counts into those widgets. For the notifications tab, storing the 20 items in a list and rendering them with ListView.separated made it much easier to manage and automatically took care of the dividers between each row.

- How I accomplished the enhancement
For the enhancement, I updated constants.dart to apply the assigned color palette across the app's headers, accents, and backgrounds. I also adjusted `omeScreen so the AppBar title changes depending on the active tab showing facebook on the home feed and switching to Notifications when the bell icon is tapped. Finally, I expanded the newsfeed to 10 posts and the notifications page to 20 items.

- Challenges encountered and how I addressed them AppBar title not changing At first, tapping the notification icon still showed the "facebook" title at the top because it was hardcoded in HomeScreen I fixed this by checking selectedIndex in the AppBar so the text and color update whenever I switch tabs.

- Text contrast with the new colors
Switching to darker shades like 181A2F and B4182D made some of the text hard to read at first. I adjusted the foreground colors to use white and the lighter peach shade so everything stayed clear and readable.

- Repetitive code for 20 notifications
Adding 19 more notifications one by one initially made notification_screen.dart really long and cluttered. Putting the data into a list and looping through it with ListView.separate cleaned up the file and made it way easier to edit.