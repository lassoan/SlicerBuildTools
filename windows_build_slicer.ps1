# Check input arguments
if(!$srcDir) { throw "'srcDir' variable not set." }
if(!$binDir) { throw "'binDir' variable not set." }
if(!($buildType -match "^(Debug|Release|RelWithDebInfo)$")) { throw "'buildType' variable incorrectly set to [$buildType]. Hint: 'Release', 'Debug', or 'RelWithDebInfo' value is expected." }
if(!($qtPlatform -match "^(win32-msvc2013)$")) { throw "'qtPlatform' variable incorrectly set to [$qtPlatform]. Hint: 'win32-msvc2013' value is expected." }
if(!($bits -match "^(32|64)$")) { throw "'bits' variable incorrectly set to [$bits]. Hint: '32' or '64' value is expected." }

# Check source and binary directories
if (![System.IO.Directory]::Exists($srcDir)) { throw "'srcDir' [$srcDir] does not exist." }
if (![System.IO.Directory]::Exists($binDir)) {[System.IO.Directory]::CreateDirectory($binDir)}

# $svn = 'C:\Program Files\TortoiseSVN\bin\svn.exe'
# $svnversion = 'C:\Program Files\TortoiseSVN\bin\svnversion.exe'
$git = 'C:\Program Files (x86)\Git\bin\git.exe'
$cmake = 'C:\Program Files (x86)\CMake\bin\cmake.exe'
$ctest = 'C:\Program Files (x86)\CMake\bin\ctest.exe'
$dot = 'C:/Program Files (x86)/Graphviz2.38/bin/dot.exe'
$doxygen = 'C:/Program Files/doxygen/bin/doxygen.exe'
$qmake = 'c:\D\Support\qt-4.8.7-64-vs2013-rel\bin\qmake.exe'

if($qtPlatform.CompareTo('win32-msvc2013')
{
  $devenv = 'c:\Program Files (x86)\Microsoft Visual Studio 11.0\Common7\IDE\devenv.exe'
  if($bits.CompareTo('32')
  {
    $cmakeGenerator = 'Visual Studio 12 2013'
  }
  else
  {
    $cmakeGenerator = 'Visual Studio 12 2013 Win64'
  }
}

pushd $binDir

$cmakeArgs = @()
$cmakeArgs += $srcDir
$cmakeArgs += ("-G", $cmakeGenerator)
$cmakeArgs += "-DQT_QMAKE_EXECUTABLE:PATH=$qmake"
$cmakeArgs += "-DCMAKE_BUILD_TYPE:STRING=$buildType"

if($buildType.CompareTo('Debug')
{
  $cmakeArgs += "-DSlicer_USE_SimpleITK:BOOL=OFF"
}

Start-Process "$cmake" -ArgumentList $cmakeArgs -NoNewWindow -PassThru -Wait

Start-Process "$test" -ArgumentList ("-D", "Experimental") -NoNewWindow -PassThru -Wait

popd
