# Changing Layout Models

## Change the Keyboard.cpp library located on the Arduino libraries dir

### Choosing the proper layout

You can find some layouts on:
 - https://github.com/Dukweeno/LocaleKeyboard.js
 - https://github.com/whid-injector/WHID/tree/master/tools/keyboard_layouts


## Using Powershell


### Withoud Admin

Withoud being Administrator

```
powershell New-WinUserLanguageList en-US
powershell Set-WinUserLanguageList -LanguageList en-US
```


### With Admin runas

```
powershell Start-process cmd -Verb runAs
powershell New-WinUserLanguageList en-US
powershell Set-WinUserLanguageList -LanguageList en-US

```

## References

 - https://github.com/whid-injector/WHID/wiki/Keyboards-Layout
