require 'rufus-scheduler'
require 'pathname'
require 'logger'

ROOT = Pathname(__FILE__).dirname.realpath.parent

logfile = File.new(ROOT.join('var/log/cron.log').to_s, 'a')
logger = Logger.new(logfile)
scheduler = Rufus::Scheduler.new(lockfile: ROOT.join('var/lock/rufus-scheduler.lock'))

scheduler.every '1m' do
  logger.info('Alive!')
end

scheduler.join
