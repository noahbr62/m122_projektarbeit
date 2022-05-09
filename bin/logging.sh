GLEVEL=W        #Set default loglevel
log(){
        DATE=`date '+%Y.%m.%d %H:%M:%S'`
        LEVEL=$1
        shift
        case $LEVEL in
                D)
                        case $LOGLEVEL in
                                D)
                                        echo "$DATE:DEBUG:$*" >> centralLog.txt
                                        ;;
                        esac
                        ;;
                I)
                        case $LOGLEVEL in
                                D|I)
                                        echo "$DATE:INFO:$*"  >> centralLog.txt
                                        ;;
                        esac
                        ;;
                W)
                        case $LOGLEVEL in
                                D|I|W)
                                        echo "$DATE:WARNING:$*"  >> centralLog.txt
                                        ;;
                        esac
                        ;;
                S)
                        case $LOGLEVEL in
                                D|I|W|S)
                                        echo "$DATE:SUCCESS:$*"  >> centralLog.txt
                                        ;;
                        esac
                        ;;
                E)
                        echo "$DATE:ERROR:$*"  >> centralLog.txt
                        ;;
                *)
                        echo "$DATE:UNKNOWN:$*"  >> centralLog.txt
                        ;;
        esac
}
