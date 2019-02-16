MINIMA_EXIT_CODE_PREFIX="${MINIMA_EXIT_CODE_PREFIX=""}"
MINIMA_EXIT_CODE_SUFFIX="${MINIMA_EXIT_CODE_SUFFIX=" "}"
MINIMA_EXIT_CODE_SYMBOL="${MINIMA_EXIT_CODE_SYMBOL="✘"}"
MINIMA_EXIT_CODE_COLOR="${MINIMA_EXIT_CODE_COLOR="red"}"

minima_module_exit_code() {
  [[ $RETVAL == 0 ]] && return

  minima::module \
    "$MINIMA_EXIT_CODE_COLOR" \
    "$MINIMA_EXIT_CODE_PREFIX" \
    "${MINIMA_EXIT_CODE_SYMBOL}$RETVAL" \
    "$MINIMA_EXIT_CODE_SUFFIX"
}
