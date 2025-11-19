#!/usr/bin/env sh

export WITH_FUZZER=true
if dune build @fuzzer-no-regression; then
    if dune build @fuzzer-update-state; then
        echo ""
        echo "No regressions, state is up-to-date."
    else
        echo ""
        echo "There were no regressions but the fuzzer baseline is out-of-date."
        echo "To update the baseline, run:"
        echo ""
        echo "  dune promote"
        echo ""
    fi
else
    echo "There are some regressions to fix."
fi
