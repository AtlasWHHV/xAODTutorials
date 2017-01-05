#
# Run this file to generate a directory from which you can type
#
#   root '$ROOTCOREDIR/scripts/load_packages.C' <xaod-filename.root>
#
# The load_packages.C configures ROOT to read xAOD files
#
# Usage:
#  source access_xAOD_from_command_line.sh <dir>
#
# Where <dir> is a fully qualified (and can be cd'd to).
# Expect that this is a new shell
#

if [ "x$1" == "x" ]; then
  echo Usage: source access_xAOD_from_command_line.sh dir-to-build-in
fi

mkdir -p $1
cd $1

setupATLAS
# Sets up the AnalysisBase (general purpose) release
# Version 2.3.53 is matched to the release that genrated the xAOD.
#    In this case that was 20.1.8.3.
rcSetup Base,2.3.53

# Compile
rc find_packages
rc compile

# Everything is now setup for
# root '$ROOTCOREDIR/scripts/load_packages.C' <xaod-file.root>

