function qrread
    # Example usage: copyq read image/png 0 | qrread
    set dir $(dirname $(status --current-filename))
    python $dir/qrread.py
end