historyagh() {
    local OPTIONS LONGOPTIONS PARSED n i e

    getopt --test > /dev/null
    if [[ $? -ne 4 ]]; then
        echo "I’m sorry,'getopt --test' failed in this environment."
        return 1
    fi

    OPTIONS=n:hi:e
    LONGOPTIONS=number:,help,index:,edit

    # -temporarily store output to be able to check for errors
    # -e.g. use “--options” parameter by name to activate quoting/enhanced mode
    # -pass arguments only via   -- "$@"   to separate them correctly
    PARSED=$(getopt --options=$OPTIONS --longoptions=$LONGOPTIONS --name "historyagh" -- "$@")
    if [[ $? -ne 0 ]]; then
        # e.g. $? == 1
        #  then getopt has complained about wrong arguments to stdout
        return 2
    fi
    # read getopt’s output this way to handle the quoting right:
    eval set -- "$PARSED"

    # initialize e to 0 for later use
    e=0
    
    # now enjoy the options in order and nicely split until we see --
    while true; do
        case "$1" in
            -n|--number)
                n="$2"
                shift 2
                ;;
            -h|--help)
                # PUT SOMETHING HERE. HI, GISELLE
                shift
                ;;
            -i|--index)
                i="$2"
                shift 2
                ;;
            -e|--edit)
                e=1
                shift
                ;;
            --)
                shift
                break
                ;;
            *)
                echo "Hi, giselle"
                return 3
                ;;
        esac
    done    

    # Parse index out of i string and set start and stop. 
    if [ ! -z "$i" ]; then
        local start=${i%%:*}
        local stop=${i##*:}
    fi

    # use n
    if [ ! -z "$n" ]; then
        echo "$n"
    fi
}
