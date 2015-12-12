monitor-file-start()
{
  touch /mnt/sdcard/timestamp
}


monitor-file-list()
{
  find / \( -type f -a -newer /mnt/sdcard/timestamp \) -o -type d -a \( -name dev -o -name proc -o -name sys \) -prune | grep -v -e "^/persdata/absolute" -e "^/storage/emulated/legacy/Android/data/com.sec.android.gallery3d" -e "^/storage/emulated/legacy/360/MobileSafe" -e "^/data/data/com.qihoo360.mobilesafe" -e "^/data/data/com.qihoo.permmgr" -e "^/data/media/0"  -e "^/efs/tz" -e "^/data/data/com.google." -e "^/data/data/com.dropbox.android" -e "^/data/data/com.facebook.appmanager/" -e "^/data/data/flipboard.app" -e "^/data/data/com.sec.knox.seandroid" -e "^/data/data/com.android.incallui" -e "^/acct/uid" -e "^/data/data/com.qihoo.appstore" -e "^/data/tombstones/" -e "^/data/system/dropbox" -e "^/data/data/com.samsung." -e "^/data/data/com.facebook.katana" -e "^/data/data/com.evernote" -e "^/data/data/com.whatsapp" -e "^/data/app-lib/com.facebook.katana-1" -e "^/data/dalvik-cache" -e "^/data/misc" -e "^/dev$" -e "^/proc$" -e "^/sys$"
}
 
monitor-file-search()
{
  find / \( -type f -a -newer /mnt/sdcard/timestamp -exec grep -l $1 {} \; \) -o -type d -a \( -name dev -o -name proc -o -name sys \) -prune
}
