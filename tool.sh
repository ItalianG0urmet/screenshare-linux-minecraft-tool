pid=$(pidof java)

check_pid() {
  if kill -0 "$pid" 2>/dev/null; then
    fast_check
  else
    echo "Unknown PID"
  fi
}

get_time_info() {
  last_deleted_file_date=$(ls -lt "$HOME/.local/share/Trash/" | awk 'NR==2 {print $8}')
  minecraft_start_date=$(ps -p $pid -o etime= | tr -d '\n' | awk '{ if (NF==2) { print $1 } else { print $1 }}')
  minecraft_execution_date=$(ps -p $pid -o lstart= | cut -d' ' -f4-6)

  echo "Last deleted file at: [$last_deleted_file_date]"
  echo "Minecraft started at: [$minecraft_execution_date]"
  echo "Minecraft execution time: [$minecraft_start_date]"
}

list_active_mods() {
  echo "Mods in the process with PID $pid:"
  lsof -p "$pid" 2>/dev/null | grep '/mods/.*\.jar$' | awk -F '/mods/' '{print $2}'
  echo "----------------------"
  echo "Check for suspect .so:"
  lsof -p $pid 2>/dev/null | grep '\.so' |  awk '{print $8}' | grep -v '/usr/lib/'

}

fast_check() {
  echo "----------------------"
  get_time_info
  echo "----------------------"
  list_active_mods
  echo "----------------------"
}

check_pid
