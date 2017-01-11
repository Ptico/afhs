require 'pathname'

module UnicornConf
  ROOT = Pathname(__FILE__).dirname.realpath.parent.parent

  def configure!
    working_directory(ROOT.to_s)
    pid(ROOT.join('var/run/web.pid').to_s)
    stderr_path(ROOT.join('var/log/unicorn.stderr.log').to_s)
    stdout_path(ROOT.join('var/log/unicorn.stdout.log').to_s)
  end
end
