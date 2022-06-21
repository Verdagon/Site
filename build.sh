
if [ "$1" == "" ] ; then
  echo "First arg should be 'build' or 'testvale'"
  exit 1
fi
MODE="$1"

if [ "$2" == "" ] ; then
  echo "Second arg should be 'all' or a page name"
  exit 1
fi
TARGET="$2"

if [ "$3" == "" ] ; then
  echo "Third arg should be path to Valestrom.jar"
  exit 1
fi
VALESTROM="$3"

if [ "$4" == "" ] ; then
  echo "Fourth arg should be path to VmdSiteGen"
  exit 1
fi
VMD_SITE_GEN="$4"

if [ "$5" == "" ] ; then
  echo "Fifth arg should be path to Snippet dir"
  exit 1
fi
SNIPPET_DIR="$5"

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
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/vision/vision app/vision/vision.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/vision/vision app/vision/vision.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "vision-safety-generational-references" ] || [ $TARGET == "all" ] ; then
  echo "Doing vision-safety-generational-references"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/vision/safety-generational-references app/vision/safety-generational-references.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/vision/safety-generational-references app/vision/safety-generational-references.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "vision-safety-type-stability" ] || [ $TARGET == "all" ] ; then
  echo "Doing vision-safety-type-stability"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/vision/safety-type-stability app/vision/safety-type-stability.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/vision/safety-type-stability app/vision/safety-type-stability.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "vision-speed-single-ownership" ] || [ $TARGET == "all" ] ; then
  echo "Doing vision-speed-single-ownership"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/vision/speed-single-ownership app/vision/speed-single-ownership.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/vision/speed-single-ownership app/vision/speed-single-ownership.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "comparisons" ] || [ $TARGET == "all" ] ; then
  echo "Doing comparisons"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/comparisons app/comparisons.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/comparisons app/comparisons.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "memory-safe" ] || [ $TARGET == "all" ] ; then
  echo "Doing memory-safe"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/memory-safe app/memory-safe.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/memory-safe app/memory-safe.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "contributors" ] || [ $TARGET == "all" ] ; then
  echo "Doing contributors"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/contributors app/contributors.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/contributors app/contributors.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "download" ] || [ $TARGET == "all" ] ; then
  echo "Doing download"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/download app/download.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/download app/download.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "collections" ] || [ $TARGET == "all" ] ; then
  echo "Doing collections"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/collections app/guide/collections.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/collections app/guide/collections.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "externs" ] || [ $TARGET == "all" ] ; then
  echo "Doing externs"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/externs app/guide/externs.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/externs app/guide/externs.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "functions" ] || [ $TARGET == "all" ] ; then
  echo "Doing functions"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/functions app/guide/functions.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/functions app/guide/functions.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "generics" ] || [ $TARGET == "all" ] ; then
  echo "Doing generics"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/generics app/guide/generics.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/generics app/guide/generics.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "interfaces" ] || [ $TARGET == "all" ] ; then
  echo "Doing interfaces"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/interfaces app/guide/interfaces.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/interfaces app/guide/interfaces.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "introduction" ] || [ $TARGET == "all" ] ; then
  echo "Doing introduction"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/introduction app/guide/introduction.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/introduction app/guide/introduction.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "modules" ] || [ $TARGET == "all" ] ; then
  echo "Doing modules"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/modules app/guide/modules.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/modules app/guide/modules.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "patterns" ] || [ $TARGET == "all" ] ; then
  echo "Doing patterns"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/patterns app/guide/patterns.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/patterns app/guide/patterns.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "references" ] || [ $TARGET == "all" ] ; then
  echo "Doing references"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/references app/guide/references.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/references app/guide/references.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "regions" ] || [ $TARGET == "all" ] ; then
  echo "Doing regions"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/regions app/guide/regions.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/regions app/guide/regions.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "structs" ] || [ $TARGET == "all" ] ; then
  echo "Doing structs"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/structs app/guide/structs.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/structs app/guide/structs.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "unsafe" ] || [ $TARGET == "all" ] ; then
  echo "Doing unsafe"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/unsafe app/guide/unsafe.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/guide/unsafe app/guide/unsafe.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "home" ] || [ $TARGET == "all" ] ; then
  echo "Doing home"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/home app/home.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/home app/home.vmd
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
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/contribute app/contribute.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/contribute app/contribute.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $TARGET == "roadmap" ] || [ $TARGET == "all" ] ; then
  echo "Doing roadmap"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/roadmap app/roadmap/roadmap.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/roadmap app/roadmap/roadmap.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
  cp app/roadmap/*.css public
fi

if [ $TARGET == "project" ] || [ $TARGET == "all" ] ; then
  echo "Doing project"
  echo $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/project app/project.vmd
  eval $VMD_SITE_GEN/build/vmdsitegen $MODE --compiler_dir $VALESTROM --out public/project app/project.vmd
  if [ $? != 0 ]; then
    echo "Failed!"
    exit 1
  fi
fi

if [ $MODE == "build" ] ; then
  echo "Copying..."
  cp app/*.css public
  cp app/rss.xml public
  cp app/components/*.css public/components
  cp $SNIPPET_DIR/css/*.css public/components
  cp app/components/*.js public/components
  cp app/components/*.png public/components
  cp app/images/* public/images
fi

echo "Done!"
