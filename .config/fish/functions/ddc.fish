function ddc
    sudo modprobe i2c-dev
    if count $argv > /dev/null
        sudo ddcutil setvcp 10 $argv
    else
        sudo ddcutil getvcp 10
    end
end
