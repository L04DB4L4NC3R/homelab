while true;
do

# Make the playlist
echo "Fetching playlist"
cd Music
spotdl -p $PLAYLIST_ID

mv extremist-essentials.txt fav.txt

# grab the songs to be downloaded by diff between prev and current playlist
echo "Generating Diff file"
diff -c fav-bak.txt fav.txt | grep + | cut -d'+' -f2-10 > fav-final.txt

# Songs to be downloaded
echo "Printing Diff"
diff -c fav-bak.txt fav.txt

# Download from playlist
echo "Downloading the added songs"
spotdl --list fav-final.txt --overwrite skip

# Cleanup
echo "Removing fav-final and fav-bak"
rm fav-final.txt
rm fav-bak.txt

# Make the current playlist the old one
echo "Generating new fav-bak"
mv fav.txt fav-bak.txt
cd ..

echo "Sleeping....."
sleep 6h
done
