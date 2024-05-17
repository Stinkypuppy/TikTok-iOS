#TikTok-iOS

#### RU

- You can install .deb using Filza File Manager
- Deb can be embedded into .ipa using Sideloadly or Azule

#### EN

- You can install .deb using Filza File Manager
- Deb inject to .ipa using Sideloadly or Azule

![Preview](/1.png)![Preview](/2.png)

---

##### Unlock TikTok on iPhone (without removing the SIM card) + change regions + publish videos + live broadcast + likes and comments

> Contents

* [TikTok](#TikTok)
* [Preparation](#Preparation)
* [Quantumult X](#Quantumult-X)
* [Loon](#Loon)
* [Surge](#Surge)
* [Egern](#Egern)
---
### <a id="Preparation">Preparation </a>

- Download TikTok from the App Store
     *Use your Apple ID and password.

- Prepare Quantumult X｜Loon｜Surge｜Egern｜Shadowrocket (all tools are paid).
      *Available on the App Store.

- Use ss/ssr/vmess protocols, etc.
      *You can find it on the Internet.
---
**Information:**

- TikTok causes restrictions when used, making decryption via MiMt impossible. Use SSL bypass.

- Change the two-digit English abbreviation of the country/region you want to see.

     * Change the value of CN to SG, MO, TW, etc. to change the region.
---

### <a id="Quantumult-X"> Quantumult X </a>


1. Open `Quantumult X`

2. Go to settings - `MitM` - `Generate CA` - `Install CA`

3. Open Settings - Install a profile - Go to the "About this device" tab - "Trust certificates" - On.

4. Return to the `Quantumult X` settings - `Profile` - `Edit` - For convenience, click on the arrow at the top of the screen.

5. Click on `[rewrite_remote]` to add a copy of the corresponding country below (example).

**Japan**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Quantumult/TikTok-JP.conf, tag=TikTok, update-interval=86400, opt-parser=false, enabled=true
```

**Taiwan**
```
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Quantumult-X/TikTok-TW.conf, tag=TikTok, update-interval=86400, opt-parser=false, enabled=true
```

**South Korea**
```
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Quantumult-X/TikTok-KR.conf, tag=TikTok, update-interval=86400, opt-parser=false, enabled=true
```

**USA**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Quantumult/TiKTok-US.conf, tag=TikTok, update-interval=86400, opt-parser=false, enabled=true
```

6. Add the following entry to `[rewrite_local]`

```
(?<=_region=)RU(?=&) url 307 KR
(?<=&mcc_mnc=)4 url 307 2
^(https?:\/\/(tnc|dm)[\w-]+\.\w+\.com\/.+)(\?)(.+) url 302 $1$3
(?<=\d\/\?\w{7}_\w{4}=)1[6-9]..(?=.?.?&) url 307 17
```

6.1 Add to `[mitm]`

```
hostname = *.tiktokv.com, *.byteoversea.com, *.tik-tokapi.com
```

7. Find `[filter_remote]` and add a .list file

```
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Quantumult-X/TikTok.list, tag=TikTok, force-policy=TikTok, update-interval=86400, opt-parser=false, enabled= true
```

8. Return to the main page `Quantumult X` - `Proxy` - `Other` - `TikTok` - Select Proxy.

9. Enable `MitM` and `Rewrite`.
---

### <a id="Loon">Loon </a>

1. Open `Loon` - `Profile` - `MitM` - `Certificate Management` - Create and install a certificate.

2. Open Settings - Install a profile - Go to the "About this device" tab - "Trust certificates" - On.

3. Return to the `Loon` start page - `Edit` - move all Shortcuts from Hidden to Visible.

4. Return to the `Loon` start page - `Plugin` - `➕` - Select one of the plugins that is available below - Click the red Install button.

**South Korea**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Loon/TikTok-KR.plugin
```

**Great Britain**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Loon/TikTok-UK.plugin
```

**USA**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Loon/TikTok-US.plugin
```

5. Add TikTok forwarding rules to `[Rule]`：

```
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Loon/TikTok.list, tag=TikTok, policy=TikTok, update-interval=86400, enabled=true
```

6. Enable `MitM` and `Cuptured Session`.

---

### <a id="Surge"> Surge </a>


1. Open `Surge` - `Home` - `Capture` - `MitM` `Configure` - Create and install a certificate.

2. Open Settings - Install a profile - Go to the "About this device" tab - "Trust certificates" - On.

3. Return to `Surge` - `Home` - `Modify` `Module` `Install New Module` - Select one of the modules that is available below:

**Great Britain**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Surge%2BEgern/TiKTok-GB.sgmodule
```

**USA**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Surge%2BEgern/TiKTok-US.sgmodule
```

4. Return to `Surge` - `Home` - `General` - `Proxy Rule` - Add

```
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Surge/TikTok.list
```

5. Enable `MitM and add Hostname:` *.tiktokv.com, *.byteoversea.com, *.tik-tokapi.com.

---

### <a id="Egern">Egern </a>


1. Open `Egern` - `Tools` - `Certificate` - Create and install a certificate.

2. Open Settings - Install a profile - Go to the "About this device" tab - "Trust certificates" - On.

3. Return to `Egern` - `Tools` - `Modules` - `➕` - Select one of the modules that is available below:


**Great Britain**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Surge%2BEgern/TiKTok-GB.sgmodule
```

**USA**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Surge%2BEgern/TiKTok-US.sgmodule
```

4. Return to `Tools` - `Rules` - `➕` - Add

```
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Surge/TikTok.list
```

5. Add `MitM Hostname:` *.tiktokv.com, *.byteoversea.com, *.tik-tokapi.com.

---
### <a id="Can't watch TikTok"> Can't watch TikTok</a>

Add the following two elements to hostname
```
-*snssdk.com, -*amemv.com
```

---
### <a id="DouYin IP proxy">DouYin IP proxy </a>

Forwarding

```
https://raw.githubusercontent.com/Semporia/Quantumult-X/master/Filter/DouYin.list
```

##Credits:
* [Semporia](https://github.com/Semporia/TikTok-Unlock?tab=readme-ov-file#-%E6%8A%96%E9%9F%B3%E7%84%A1%E6%B3 %95%E8%A7%80%E7%9C%8B-)
