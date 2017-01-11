require_relative 'common'

Object.include UnicornConf

configure!

preload_app(true)
worker_processes(4)
listen(ROOT.join('var/run/web.sock').to_s)
