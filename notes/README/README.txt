Welcome to Wigglebot's Resolution Scaling Demo!

When it comes to picking a resolution, it's good to choose something that will work well
with the highest possible amount of monitors. Of course if you don't mind having black bars,
then it doesn't matter as much but is still good to keep in mind.

Based on a recent Steam customer survey, these are the most popular resolutions used:

58% & 20%
1920 x 1080 -> 3x scaling
2560 x 1440 -> 4x scaling

Under 4% per
3840 x 2160 -> 6x scaling
2560 x 1600 -> 4x scaling but with extra vert
1366 x 768 -> 2x scaling but with extra vert/horz

Under 3% per
3440 x 1440 -> 4x scaling but with tons of extra horz
1920 x 1200 -> 3x scaling but with extra vert
1600 x 900 -> 2.5x scaling so extra very/horz

The scaling multiplier listed is based on the resolution 640 x 360, exactly 1/3 of the most common
1920 x 1080. Picking this alone would allow perfect resolution scaling to 82% of Steam's userbase.

However, this is essentially the highest you'd want to go with it and may include too many pixels
on screen for your game, so you could easily half it and go with 320 x 180 or the like which would
equally scale perfectly to those common monitor resolutions.

Here are some other things to note.

-	This is not dynamic. What that means is that regardless of what monitor or resolution you play with,
	there is no advantage other than being able to have more subpixels per in-game pixel and therefore
	smoother visual detail. The IN-GAME VIEW DOES NOT EXPAND OR SHRINK to show more of the world.
	
-	For resolutions that don't fit the default scale, BLACK BARS WILL BE CREATED. However, the GUI layer
	will expand to include the area over those bars and allow you to draw over it to make it more pleasant
	to look at.

-	Lastly, I've tried to keep it as minimal as possible so that it's easy to drop into any project. This
	means that some features such as collision or a slowly trailing camera are not present in order to make
	the code very simple to read and quick to learn from.
	
Although o_camera has a lot of events active in it, 3 of them hold the majority of the important code:
-	Create
-	Room Start
-	End Step

Thanks for reading and I hope this helps give some insight into resolutions!