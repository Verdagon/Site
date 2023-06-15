
if [ "$1" == "" ] ; then
  echo "First arg should be 'build' or 'testvale'"
  exit 1
fi
MODE="$1"
shift;

if [ "$1" == "" ] ; then
  echo "First arg should be 'build' or 'testvale'"
  exit 1
fi
ROOT="$1"
shift;

if [ "$1" == "" ] ; then
  echo "Third arg should be 'all' or a page name"
  exit 1
fi
TARGET="$1"
shift;

if [ "$1" == "" ] ; then
  echo "Fourth arg should be path to Valestrom.jar"
  exit 1
fi
VALESTROM="$1"
shift;

if [ "$1" == "" ] ; then
  echo "Fifth arg should be path to VmdSiteGen"
  exit 1
fi
VMD_SITE_GEN="$1"
shift;

if [ "$1" == "" ] ; then
  echo "Sixth arg should be path to Snippet dir"
  exit 1
fi
SNIPPET_DIR="$1"

echo $MODE $TARGET $VALESTROM

if [ $MODE == "build" ] ; then
  if [ $TARGET == "clean" ] || [ $TARGET == "all" ] ; then
    rm -rf public
    mkdir public
    mkdir public/components
    mkdir public/images
    mkdir public/guide
    mkdir public/vision
    mkdir public/releases
  fi
fi

if [ $TARGET == "vision" ] || [ $TARGET == "all" ] ; then
  echo "Doing vision"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/vision/vision src/vision/vision.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/vision/vision src/vision/vision.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "vision-overview" ] || [ $TARGET == "all" ] ; then
  echo "Doing vision"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/vision/overview src/vision/overview.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/vision/overview src/vision/overview.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "vision-safety-generational-references" ] || [ $TARGET == "all" ] ; then
  echo "Doing vision-safety-generational-references"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/vision/safety-generational-references src/vision/safety-generational-references.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/vision/safety-generational-references src/vision/safety-generational-references.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

# if [ $TARGET == "vision-safety-type-stability" ] || [ $TARGET == "all" ] ; then
#   echo "Doing vision-safety-type-stability"
#   echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/vision/safety-type-stability src/vision/safety-type-stability.vmd
#   eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/vision/safety-type-stability src/vision/safety-type-stability.vmd
#   if [ $? != 0 ]; then
#     echo "Failed!"
#     exit 1
#   fi
# fi

if [ $TARGET == "vision-speed-single-ownership" ] || [ $TARGET == "all" ] ; then
  echo "Doing vision-speed-single-ownership"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/vision/speed-single-ownership src/vision/speed-single-ownership.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/vision/speed-single-ownership src/vision/speed-single-ownership.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "comparisons" ] || [ $TARGET == "all" ] ; then
  echo "Doing comparisons"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/comparisons src/comparisons.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/comparisons src/comparisons.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "memory-safe" ] || [ $TARGET == "all" ] ; then
  echo "Doing memory-safe"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/memory-safe src/memory-safe.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/memory-safe src/memory-safe.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "contributors" ] || [ $TARGET == "all" ] ; then
  echo "Doing contributors"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/contributors src/contributors.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/contributors src/contributors.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "download" ] || [ $TARGET == "all" ] ; then
  echo "Doing download"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/download src/download.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/download src/download.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "collections" ] || [ $TARGET == "all" ] ; then
  echo "Doing collections"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/collections src/guide/collections.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/collections src/guide/collections.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "externs" ] || [ $TARGET == "all" ] ; then
  echo "Doing externs"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/externs src/guide/externs.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/externs src/guide/externs.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "functions" ] || [ $TARGET == "all" ] ; then
  echo "Doing functions"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/functions src/guide/functions.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/functions src/guide/functions.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "generics" ] || [ $TARGET == "all" ] ; then
  echo "Doing generics"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/generics src/guide/generics.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/generics src/guide/generics.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "interfaces" ] || [ $TARGET == "all" ] ; then
  echo "Doing interfaces"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/interfaces src/guide/interfaces.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/interfaces src/guide/interfaces.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "introduction" ] || [ $TARGET == "all" ] ; then
  echo "Doing introduction"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/introduction src/guide/introduction.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/introduction src/guide/introduction.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "modules" ] || [ $TARGET == "all" ] ; then
  echo "Doing modules"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/modules src/guide/modules.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/modules src/guide/modules.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "patterns" ] || [ $TARGET == "all" ] ; then
  echo "Doing patterns"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/patterns src/guide/patterns.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/patterns src/guide/patterns.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "references" ] || [ $TARGET == "all" ] ; then
  echo "Doing references"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/references src/guide/references.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/references src/guide/references.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "regions" ] || [ $TARGET == "all" ] ; then
  echo "Doing regions"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/regions src/guide/regions.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/regions src/guide/regions.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "structs" ] || [ $TARGET == "all" ] ; then
  echo "Doing structs"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/structs src/guide/structs.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/structs src/guide/structs.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "unsafe" ] || [ $TARGET == "all" ] ; then
  echo "Doing unsafe"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/unsafe src/guide/unsafe.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/unsafe src/guide/unsafe.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "wrapping-a-library" ] || [ $TARGET == "all" ] ; then
  echo "Doing wrapping-a-library"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/wrapping-a-library src/guide/wrapping-a-library.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/guide/wrapping-a-library src/guide/wrapping-a-library.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "home" ] || [ $TARGET == "all" ] ; then
  echo "Doing home"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/home src/home.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/home src/home.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
  if [ $MODE == "build" ] ; then
    cp public/home public/index.html
  fi
fi

if [ $TARGET == "contribute" ] || [ $TARGET == "all" ] ; then
  echo "Doing contribute"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/contribute src/contribute.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/contribute src/contribute.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "roadmap" ] || [ $TARGET == "all" ] ; then
  echo "Doing roadmap"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/roadmap src/roadmap/roadmap.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/roadmap src/roadmap/roadmap.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
  cp src/roadmap/*.css public
fi

if [ $TARGET == "linear-aliasing-model" ] || [ $TARGET == "all" ] ; then
  echo "Doing linear-aliasing-model"
  echo $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/linear-aliasing-model src/linear-aliasing-model.vmd
  eval $VMD_SITE_GEN $MODE $ROOT --compiler_dir $VALESTROM --out public/linear-aliasing-model src/linear-aliasing-model.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
  cp src/roadmap/*.css public
fi

if [ $MODE == "build" ] ; then
  echo "Copying..."
  cp src/*.css public
  cp src/rss.xml public
  cp src/components/*.css public/components
  cp $SNIPPET_DIR/css/*.css public/components
  cp src/components/*.js public/components
  cp src/components/*.png public/components
  cp src/images/* public/images
fi

echo "Done!"
