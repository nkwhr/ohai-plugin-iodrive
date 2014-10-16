require "json"

provides "iodrive"

def iodrive_installed?
  File.exists?("/dev/fct0")
end

def get_fio_status
  if iodrive_installed?
    iodrive[:installed] = true
    status, stdout, stderr = run_command(:no_status_check => false, :command => "fio-status -fj")
    fio_status = JSON.parse(stdout, :symbolize_names => true)
    iodrive fio_status if fio_status[:version]
  else
    iodrive[:installed] = false
  end
rescue Ohai::Exceptions::Exec
  iodrive[:error] = "fio-status returned an error"
end

iodrive Mash.new
get_fio_status
