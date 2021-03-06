#####################################################
# Lanchon REPIT - Device Handler                    #
# Copyright 2016, Lanchon                           #
#####################################################

#####################################################
# Lanchon REPIT is free software licensed under     #
# the GNU General Public License (GPL) version 3    #
# and any later version.                            #
#####################################################

### klte

# This port was possible thanks to the invaluable help of wecip.

device_checkDevice() {

    checkTool getprop

    case ":$(getprop ro.product.device):$(getprop ro.build.product):" in
        *:kltexx:*) ;;
        *:kltelra:*) ;;
        *:kltetmo:*) ;;
        *:kltecan:*) ;;
        *:klteatt:*) ;;
        *:klteub:*) ;;
        *:klteacg:*) ;;
        *:klte:*) ;;
        *:kltekor:*) ;;
        *:klteskt:*) ;;
        *:kltektt:*) ;;
        *)
            fatal "this package is for '$deviceName' devices; this device is '$(getprop ro.product.device)'"
            ;;
    esac

}
