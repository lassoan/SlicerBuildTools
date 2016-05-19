# Check input arguments
if(!$srcDir) { throw "'srcDir' variable not set." }

# Create source directory, if does not exist yet
if (![System.IO.Directory]::Exists($srcDir)) {[System.IO.Directory]::CreateDirectory($srcDir)}

$git = 'C:\Program Files\Git\bin\git.exe'

pushd $srcDir

Start-Process $git -ArgumentList ('clone', 'git://github.com/Slicer/Slicer.git', '.') -NoNewWindow -PassThru -Wait

popd
