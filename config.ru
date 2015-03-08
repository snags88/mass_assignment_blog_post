require './config/environment'

use Rack::MethodOverride
use PresidentController
run AppController