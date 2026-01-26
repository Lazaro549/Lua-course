local Logger = {}

function Logger.info(message)
    print("[INFO]", message)
end

function Logger.warn(message)
    print("[WARN]", message)
end

return Logger
