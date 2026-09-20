.class public abstract Lcom/onevcat/uniwebview/internal/obfuscated/L;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/onevcat/uniwebview/a;)V
    .locals 3

    const-string v0, "webView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 2
    new-instance v1, Lcom/onevcat/uniwebview/internal/obfuscated/J;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/J;-><init>(Lcom/onevcat/uniwebview/a;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "messageProvider"

    .line 3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Lkotlin/jvm/functions/Function0;)V

    .line 28
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/L$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/L$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "\nwindow.uniwebview = {\n    _callbacks: {},\n    _messageCounter: 0,\n\n    // Message type constants\n    MessageType: {\n        SEND: 0,\n        CALL: 1,\n        REQUEST: 2\n    },\n\n    _generateId: function() {\n        return \'msg_\' + Date.now() + \'_\' + (++this._messageCounter) + \'_\' + Math.floor(Math.random() * 10000);\n    },\n    \n    send: function(action, data) {\n        if (typeof action !== \'string\' || action.trim() === \'\') {\n            throw new Error(\'UniWebView: Action is required and must be a non-empty string\');\n        }\n        \n        const message = {\n            id: this._generateId(),\n            timestamp: Date.now(),\n            action: action,\n            data: data !== undefined ? JSON.stringify(data) : null,\n            messageType: this.MessageType.SEND\n        };\n        \n        this._postToNative(message);\n    },\n    \n    call: function(action, data) {\n        if (typeof action !== \'string\' || action.trim() === \'\') {\n            throw new Error(\'UniWebView: Action is required and must be a non-empty string\');\n        }\n        \n        const message = {\n            id: this._generateId(),\n            timestamp: Date.now(),\n            action: action,\n            data: data !== undefined ? JSON.stringify(data) : null,\n            messageType: this.MessageType.CALL\n        };\n        \n        try {\n            if (window._UniWebViewSyncCall) {\n                const result = window._UniWebViewSyncCall.call(JSON.stringify(message));\n                if (result === null || result === undefined) {\n                  return null;\n                }\n                const value = JSON.parse(result);\n                if (value && value.error) {\n                  let parsedError;\n                  try {\n                    parsedError = JSON.parse(value.error);\n                  } catch (e) {\n                    parsedError = value.error;\n                  }\n                  if (typeof parsedError === \'string\') {\n                    throw new Error(parsedError);\n                  } else {\n                    throw parsedError;\n                  }\n                }\n                return JSON.parse(value.result);\n            }\n        } catch (e) {\n            console.error(\'UniWebView sync call failed:\', e.message);\n            throw e;\n        }\n        \n        throw new Error(\'Sync call not supported on this platform\');\n    },\n    \n    request: function(action, data, timeout) {\n        if (typeof action !== \'string\' || action.trim() === \'\') {\n            throw new Error(\'UniWebView: Action is required and must be a non-empty string\');\n        }\n        \n        return new Promise((resolve, reject) => {\n            const message = {\n                id: this._generateId(),\n                timestamp: Date.now(),\n                action: action,\n                data: data !== undefined ? JSON.stringify(data) : null,\n                messageType: this.MessageType.REQUEST\n            };\n            \n            // Store callback with cleanup\n            const timeoutMs = timeout == null ? 30000 : timeout;\n            const timeoutId = setTimeout(() => {\n                if (this._callbacks[message.id]) {\n                    delete this._callbacks[message.id];\n                    reject(new Error(\'Request timeout after \' + timeoutMs + \'ms\'));\n                }\n            }, timeoutMs);\n            \n            this._callbacks[message.id] = { \n                resolve: (data) => {\n                    clearTimeout(timeoutId);\n                    resolve(data);\n                }, \n                reject: (error) => {\n                    clearTimeout(timeoutId);\n                    reject(error);\n                }\n            };\n            \n            try {\n                this._postToNative(message);\n            } catch (e) {\n                delete this._callbacks[message.id];\n                clearTimeout(timeoutId);\n                reject(e);\n            }\n        });\n    },\n    \n    \n    _postToNative: function(message) {\n        if (window._UniWebViewChannelMessageHandler) {\n            window._UniWebViewChannelMessageHandler.postMessage(JSON.stringify(message));\n        } else {\n            throw new Error(\'UniWebView: Message handler not available\');\n        }\n    },\n    \n    _handleResponse: function(messageId, response, isError) {\n        const callback = this._callbacks[messageId];\n        if (callback) {\n            try {\n                if (isError) {\n                    if (typeof response === \'string\') {\n                        // String error -> Error object (traditional way)\n                        callback.reject(new Error(response));\n                    } else {\n                        // Object error -> direct pass-through (modern way)\n                        callback.reject(response);\n                    }\n                } else {\n                    callback.resolve(response);\n                }\n            } catch (e) {\n                console.error(\'UniWebView response handling error:\', e);\n            } finally {\n                delete this._callbacks[messageId];\n            }\n        }\n    },\n    \n    _cleanup: function() {\n        const now = Date.now();\n        for (const id in this._callbacks) {\n            // Clean up callbacks older than 5 minutes\n            if (now - parseInt(id.split(\'_\')[1]) > 300000) {\n                delete this._callbacks[id];\n            }\n        }\n    }\n};\n\n// Periodic cleanup every minute\nsetInterval(function() { window.uniwebview._cleanup(); }, 60000);\n"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 2

    .line 29
    sget-object p0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 30
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/K;->a:Lcom/onevcat/uniwebview/internal/obfuscated/K;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "messageProvider"

    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p0, v1, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
