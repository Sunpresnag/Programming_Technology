#bin/bash
echo "Files: "
find $1 -type f -print
echo "Directory: "
find $1 -type d -print
rm -rf $2
mkdir -p $2
find $1 -type f -exec bash -c "cp \"{}\" $2" \;