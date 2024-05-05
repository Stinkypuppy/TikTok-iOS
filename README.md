# TikTok-iOS

#### RU

- Установить .deb можно при помощи Filza File Manager
- Deb можно вшить в .ipa при помощи Sideloadly или Azule

#### EN

- You can install .deb using Filza File Manager
- Deb inject to .ipa using Sideloadly or Azule

![Preview](/1.png)![Preview](/2.png)

---

##### Разблокировка TikTok на iPhone (не вынимая симку) + смена регионов + публикация видео + прямой эфир + лайки и комментарии

> Cодержание

* [TikTok](#TikTok)
* [Подготовка](#Подготовка)
* [Quantumult X](#Quantumult-X)
* [Loon](#Loon)
* [Surge](#Surge)
* [Egern](#Egern)
---
### <a id="Подготовка"> Подготовка </a>

- Скачать TikTok из App Store

    * Используйте свой Apple ID и пароль.


- Подготовьте Quantumult X｜Loon｜Surge｜Egern｜Shadowrocket
 
     * Доступно в App Store.

- Используйте ss/ssr/vmess и т.д.

---

**Информация**

- TikTok вызывает ограничения при первом использовании, что сделает невозможным расшифровку через MiMt. Используйте обход SSL.

---

### <a id="Quantumult-X"> Quantumult X </a>

**Смена региона**


* Измените двухзначное английское сокращение страны/региона, который вы хотите увидеть.

    * Измените значение CN на SG, MO, TW и т.д. чтобы изменить регион.


**Шаг**

1. Откройте `Quantumult X`

2. Перейдите в настройки - `MitM` - `Generate CA` - `Install CA`

3. Откройте Настройки - Установите профиль - Перейдите во вкладку "Об этом ус-ве" - "Доверие сертификатам" - Вкл.

4. Вернитесь в настройки `Quantumult X` - `Profile` - `Edit` - Для удобства нажимайте на стрелочку вверху экрана. 

5. Нажмите на `[rewrite_remote]`, чтобы добавить копию соответствующей страны ниже (пример).

**Япония**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Quantumult/TikTok-JP.conf, tag=TikTok, update-interval=86400, opt-parser=false, enabled=true
```

**Тайвань**
```
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Quantumult-X/TikTok-TW.conf, tag=TikTok, update-interval=86400, opt-parser=false, enabled=true
```

**Южная Корея**
```
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Quantumult-X/TikTok-KR.conf, tag=TikTok, update-interval=86400, opt-parser=false, enabled=true
```

**США**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Quantumult/TiKTok-US.conf, tag=TikTok, update-interval=86400, opt-parser=false, enabled=true
```

6. Добавьте следующую запись в `[rewrite_local]`

```
(?<=_region=)RU(?=&) url 307 KR
(?<=&mcc_mnc=)4 url 307 2
^(https?:\/\/(tnc|dm)[\w-]+\.\w+\.com\/.+)(\?)(.+) url 302  $1$3
(?<=\d\/\?\w{7}_\w{4}=)1[6-9]..(?=.?.?&) url 307 17
```

6.1 Добавить в `[mitm]`

```
hostname = *.tiktokv.com, *.byteoversea.com, *.tik-tokapi.com
```

7. Найдите `[filter_remote]` и добавьте файл .list

```
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Quantumult-X/TikTok.list, tag=TikTok, force-policy=TikTok, update-interval=86400, opt-parser=false, enabled=true
```

8. Вернитесь на главнуб страницу `Quantumult X` - `Proxy` - `Other` - `TikTok`- Выбрать Proxy.

9. Включите  `MitM` и `Rewrite`.
---

### <a id="Loon"> Loon </a>


**Шаги**

1. Откройте`Loon` - `Profile` - `MitM` - `Certificate Management` - Создайте и установите сертификат.

2. Откройте Настройки - Установите профиль - Перейдите во вкладку "Об этом ус-ве" - "Доверие сертификатам" - Вкл.

3. Вернитесь на стартовую страницу `Loon` - `Edit` - переместите все Shortcut из Hidden в Visible.

4. Вернитесь на стартовую страницу `Loon` - `Plugin` - `➕` - Выбери один из плагинов, который доступен ниже - Нажми красную кнопку Install.

**Южная Корея**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Loon/TikTok-KR.plugin
```

**Великобритания**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Loon/TikTok-UK.plugin
```

**США**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Loon/TikTok-US.plugin
```

5. Добавьте правила переадресации TikTok в `[Rule]`：

```
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Loon/TikTok.list, tag=TikTok, policy=TikTok, update-interval=86400, enabled=true
```

6. Включите `MitM` и `Cuptured Session`.

---

### <a id="Surge"> Surge </a>


**Шаги**

1. Откройте`Surge` - `Home` - `Capture` - `MitM` `Configure` - Создайте и установите сертификат.

2. Откройте Настройки - Установите профиль - Перейдите во вкладку "Об этом ус-ве" - "Доверие сертификатам" - Вкл.

3. Вернитесь в `Surge` - `Home` - `Modify` `Module` `Install New Module` - Выбери один из модулей, который доступен ниже:

**Великобритания**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Surge%2BEgern/TiKTok-GB.sgmodule
```

**США**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Surge%2BEgern/TiKTok-US.sgmodule
```

4. Вернитесь в `Surge` - `Home` - `General` - `Proxy Rule` - Добавьте

```
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Surge/TikTok.list
```

5. Включите `MitM и добавьте Hostname:` *.tiktokv.com, *.byteoversea.com, *.tik-tokapi.com.

---

### <a id="Egern"> Egern </a>


**Шаги**

1. Откройте`Egern` - `Tools` - `Certificate` - Создайте и установите сертификат.

2. Откройте Настройки - Установите профиль - Перейдите во вкладку "Об этом ус-ве" - "Доверие сертификатам" - Вкл.

3. Вернитесь в `Egern` - `Tools` - `Modules` - `➕` - Выбери один из модулей, который доступен ниже:


**Великобритания**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Surge%2BEgern/TiKTok-GB.sgmodule
```

**США**
```
https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/Surge%2BEgern/TiKTok-US.sgmodule
```

4. Вернитесь в `Surge` - `Home` - `General` - `Proxy Rule` - Добавьте

```
https://raw.githubusercontent.com/Semporia/TikTok-Unlock/master/Surge/TikTok.list
```

5. Добавьте `MitM Hostname:` *.tiktokv.com, *.byteoversea.com, *.tik-tokapi.com.

---
### <a id="Не могу смотреть TikTok"> Не могу смотреть TikTok </a>

Добавьте следующие два элемента в hostname
```
-*snssdk.com, -*amemv.com
```

---
### <a id="IP-прокси DouYin"> IP-прокси DouYin </a>

Переадресация

```
https://raw.githubusercontent.com/Semporia/Quantumult-X/master/Filter/DouYin.list
```

## Credits:
* [Semporia](https://github.com/Semporia/TikTok-Unlock?tab=readme-ov-file#-%E6%8A%96%E9%9F%B3%E7%84%A1%E6%B3%95%E8%A7%80%E7%9C%8B-)
