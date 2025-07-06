function fnh
    set history_dir ~/.fn
    mkdir -p $history_dir

    function rotate_history
        set files (ls -t $history_dir)
        set total_size 0
        set file_count 0

        for f in $files
            set path "$history_dir/$f"
            set size (stat -c%s "$path" 2>/dev/null)
            if test -z "$size"
                continue
            end
            set total_size (math $total_size + $size)
            set file_count (math $file_count + 1)

            if test $file_count -gt 100 -o $total_size -gt 1000000000
                echo "Removing: $path (to stay under limit)"
                rm "$path"
            end
        end
    end

    rotate_history

    set files (ls -t $history_dir)
    if test (count $files) -eq 0
        echo "No saved files in history."
        return
    end

    set selected (printf "%s\n" $files | fzf --prompt="Search history > ")

    if test -n "$selected"
        set full_path "$history_dir/$selected"
        if test -f "$full_path"
            fn "$full_path"
        else
            echo "Selected file missing: $full_path"
        end
    end
end
