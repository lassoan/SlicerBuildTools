Script allowing to very easily build qt with openssl support on Linux, Windows or MacOSX

Prerequisites
=============

* Windows: Build system has been updated and `chocolatey` is **NOT** a requirement anymore. `jom` wil be downloaded.
directly.

Usage
=====

Linux
-----

```
TBD
```

MacOSX
------

```
TBD
```

Windows
-------

1. Open desired Visual Studio Command Prompt
2. Paste the corresponding text from the box below and press enter.

* Visual Studio 2013 64-bit Release

```PowerShell
@powershell -Command "$destDir='C:\D\Support';$buildType='Release';$qtPlatform='win32-msvc2013';$bits='64';iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jcfr/qt-easy-build/4.8.7/windows_build_qt.ps1'))"
```

* Visual Studio 2013 64-bit Debug

```PowerShell
@powershell -Command "$destDir='C:\D\Support';$buildType='Debug';$qtPlatform='win32-msvc2013';$bits='64';iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jcfr/qt-easy-build/4.8.7/windows_build_qt.ps1'))"
```

* Visual Studio 2012 64-bit Release

```PowerShell
@powershell -Command "$destDir='C:\D\Support';$buildType='Release';$qtPlatform='win32-msvc2012';$bits='64';iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jcfr/qt-easy-build/4.8.7/windows_build_qt.ps1'))"
```

* Visual Studio 2012 64-bit Debug

```PowerShell
@powershell -Command "$destDir='C:\D\Support';$buildType='Debug';$qtPlatform='win32-msvc2012';$bits='64';iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jcfr/qt-easy-build/4.8.7/windows_build_qt.ps1'))"
```

* Visual Studio 2010 64-bit Release

```PowerShell
@powershell -Command "$destDir='C:\D\Support';$buildType='Release';$qtPlatform='win32-msvc2010';$bits='64';iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jcfr/qt-easy-build/4.8.7/windows_build_qt.ps1'))"
```

* Visual Studio 2010 64-bit Debug

```PowerShell
@powershell -Command "$destDir='C:\D\Support';$buildType='Debug';$qtPlatform='win32-msvc2010';$bits='64';iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jcfr/qt-easy-build/4.8.7/windows_build_qt.ps1'))"
```

* Visual Studio 2008 64-bit Release

```PowerShell
@powershell -Command "$destDir='C:\D\Support';$buildType='Release';$qtPlatform='win32-msvc2008';$bits='64';iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jcfr/qt-easy-build/4.8.7/windows_build_qt.ps1'))"
```

* Visual Studio 2008 64-bit Debug

```PowerShell
@powershell -Command "$destDir='C:\D\Support';$buildType='Debug';$qtPlatform='win32-msvc2008';$bits='64';iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/jcfr/qt-easy-build/4.8.7/windows_build_qt.ps1'))"
```

### Notes ###

* `buildType` can be set to either 'Release' or 'Debug'
* `bits` can be set to either '32' or '64'
* The script will install [jom](http://qt-project.org/wiki/jom) using `cinst jom`.
