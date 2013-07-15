local EventEmitter = {}

function EventEmitter:new(object)

  object = object or {}
  object._on = {}

  function object:on(event, listener)
    self._on[event] = self._on[event] or {}
    table.insert(self._on[event], listener)
  end

  function object:emit (event, ...)
    local listeners = self._on[event]
    for _,listener in ipairs(listeners) do
      if "function" == type(listener) then
        listener(...)
      end
    end
  end

  return object

end

return {
  EventEmitter = EventEmitter
}