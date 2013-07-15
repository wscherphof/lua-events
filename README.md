# lua-events

Node style [events](http://nodejs.org/api/events.html) for Lua

## Usage

### 1. Install
Setup [lua-loader](https://github.com/wscherphof/lua-loader) and then just `npm install lua-events`

### 2. Require
```lua
local EventEmitter = require("lua-events").EventEmitter
```

### 3. Have fun
```lua
local myObj = EventEmitter:new({text = "Hello, world!"})
function myObj:talk ()
  self:emit("spoken", self:text)
end
myObj:on("spoken", function (text)
  print("myObj said", text)
end)
myObj:talk()
```

## Limitations
- Not the complete Node EventEmitter interface; only [on](http://nodejs.org/api/events.html#events_emitter_on_event_listener) and [emit](http://nodejs.org/api/events.html#events_emitter_emit_event_arg1_arg2) (pull requests welcome ;-))

## History
- New in 0.0.3: properly have an array of listeners per event in stead of just one

## License
[GNU Lesser General Public License (LGPL)](http://www.gnu.org/licenses/lgpl-3.0.txt)
