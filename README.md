## HomeLab

* Chutkulabot Telegram Bot for Jokes
* PiHole DNS Adblocker:

If you want to run pihole in ubuntu then disable the automatic dynamic DNS resolving service:

```sh
sudo systemctl disable --now systemd-resolved
```

Then change DNS to something like `nameserver 1.1.1.1` in `/etc/resolv.conf`
