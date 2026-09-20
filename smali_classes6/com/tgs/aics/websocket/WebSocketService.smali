.class public Lcom/tgs/aics/websocket/WebSocketService;
.super Landroid/app/Service;
.source "WebSocketService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/websocket/WebSocketService$JWebSocketClientBinder;,
        Lcom/tgs/aics/websocket/WebSocketService$GrayInnerService;
    }
.end annotation


# static fields
.field private static final GRAY_SERVICE_ID:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "aics.WebSocketService"

.field private static final WEB_SOCKET_CLOSE_NORMAL_CODE:I = 0x3e8


# instance fields
.field public client:Lcom/tgs/aics/websocket/ChatWebSocketClient;

.field private final mBinder:Lcom/tgs/aics/websocket/WebSocketService$JWebSocketClientBinder;

.field private final mHandler:Landroid/os/Handler;

.field private final reconnectRunnable:Ljava/lang/Runnable;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    new-instance v0, Lcom/tgs/aics/websocket/WebSocketService$JWebSocketClientBinder;

    invoke-direct {v0, p0}, Lcom/tgs/aics/websocket/WebSocketService$JWebSocketClientBinder;-><init>(Lcom/tgs/aics/websocket/WebSocketService;)V

    iput-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService;->mBinder:Lcom/tgs/aics/websocket/WebSocketService$JWebSocketClientBinder;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Lcom/tgs/aics/websocket/WebSocketService$1;

    invoke-direct {v0, p0}, Lcom/tgs/aics/websocket/WebSocketService$1;-><init>(Lcom/tgs/aics/websocket/WebSocketService;)V

    iput-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService;->reconnectRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/websocket/WebSocketService;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tgs/aics/websocket/WebSocketService;->reconnectWs()V

    return-void
.end method

.method static synthetic access$100(Lcom/tgs/aics/websocket/WebSocketService;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tgs/aics/websocket/WebSocketService;->initSocketClient()V

    return-void
.end method

.method static synthetic access$200(Lcom/tgs/aics/websocket/WebSocketService;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tgs/aics/websocket/WebSocketService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tgs/aics/websocket/WebSocketService;)Ljava/util/Timer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tgs/aics/websocket/WebSocketService;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tgs/aics/websocket/WebSocketService;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tgs/aics/websocket/WebSocketService;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method private connect()V
    .locals 2

    .line 263
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/websocket/WebSocketService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tgs/aics/websocket/WebSocketService$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/websocket/WebSocketService;)V

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createURL()Ljava/lang/String;
    .locals 6

    .line 211
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->aicsUrl:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_5

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 215
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ws://"

    .line 217
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "https://"

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "wss://"

    .line 219
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/tgs/aics/utils/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    :try_start_0
    sget-object v3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->customParams:Ljava/util/HashMap;

    if-nez v3, :cond_3

    .line 227
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    .line 229
    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    sget-object v4, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->customParams:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :goto_1
    const-string v4, "inGameLanguage"

    .line 230
    sget-object v5, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "playerId"

    .line 231
    sget-object v5, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->playerId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :catch_0
    sget-object v3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameVersion:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 238
    sget-object v3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameVersion:Ljava/lang/String;

    goto :goto_2

    .line 240
    :cond_4
    invoke-static {p0}, Lcom/tgs/aics/utils/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 243
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/ws?bundle_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    invoke-static {p0}, Lcom/tgs/aics/utils/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tgs/aics/utils/Utils;->encodeURLParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&store_version="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    invoke-static {v3}, Lcom/tgs/aics/utils/Utils;->encodeURLParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&device_model="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/tgs/aics/utils/SystemInfoUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tgs/aics/utils/Utils;->encodeURLParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&device_type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    invoke-static {}, Lcom/tgs/aics/utils/SystemInfoUtil;->getDeviceBrand()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tgs/aics/utils/Utils;->encodeURLParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&device_lang="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    invoke-static {}, Lcom/tgs/aics/utils/SystemInfoUtil;->getSystemLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tgs/aics/utils/Utils;->encodeURLParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&os_version="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 249
    invoke-static {}, Lcom/tgs/aics/utils/SystemInfoUtil;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tgs/aics/utils/Utils;->encodeURLParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&platform=android&udid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->udid:Ljava/lang/String;

    .line 251
    invoke-static {v3}, Lcom/tgs/aics/utils/Utils;->encodeURLParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&game_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    .line 252
    invoke-static {v3}, Lcom/tgs/aics/utils/Utils;->encodeURLParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&client_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    invoke-static {v2}, Lcom/tgs/aics/utils/Utils;->encodeURLParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&device_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil;->deviceId:Ljava/lang/String;

    .line 254
    invoke-static {v2}, Lcom/tgs/aics/utils/Utils;->encodeURLParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&aics_sdk_version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "2.4.5"

    .line 255
    invoke-static {v2}, Lcom/tgs/aics/utils/Utils;->encodeURLParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&custom_params="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_3
    return-object v1
.end method

.method private initSocketClient()V
    .locals 5

    const-string v0, "aics.WebSocketService"

    :try_start_0
    const-string v1, "WebSocketService initSocketClient"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/tgs/aics/websocket/WebSocketService;->createURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "ws://"

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "wss://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Lcom/tgs/aics/websocket/WebSocketService$2;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/tgs/aics/websocket/WebSocketService$2;-><init>(Lcom/tgs/aics/websocket/WebSocketService;Ljava/net/URI;Lcom/tgs/aics/websocket/WebSocketService;)V

    iput-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService;->client:Lcom/tgs/aics/websocket/ChatWebSocketClient;

    const-string v1, "Authorization"

    .line 200
    invoke-static {}, Lcom/tgs/aics/utils/Utils;->headerValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/websocket/ChatWebSocketClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService;->client:Lcom/tgs/aics/websocket/ChatWebSocketClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tgs/aics/websocket/ChatWebSocketClient;->setConnectionLostTimeout(I)V

    .line 202
    invoke-direct {p0}, Lcom/tgs/aics/websocket/WebSocketService;->connect()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "initSocketClient: createURL result invalid (need ws:// or wss://), skip connecting"

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 205
    sget-object v1, Lcom/tgs/aics/utils/LogUtil;->kAICSLogTypeWebSocketLoginException:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v1, v4, v2, v3, p0}, Lcom/tgs/aics/utils/LogUtil;->uploadLogToServerWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    .line 206
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private reconnectWs()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tgs/aics/websocket/WebSocketService;->reconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 349
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/websocket/WebSocketService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/tgs/aics/websocket/WebSocketService$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/websocket/WebSocketService;)V

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public closeConnect()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tgs/aics/websocket/WebSocketService;->reconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/websocket/WebSocketService;->client:Lcom/tgs/aics/websocket/ChatWebSocketClient;

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v1}, Lcom/tgs/aics/websocket/ChatWebSocketClient;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService;->client:Lcom/tgs/aics/websocket/ChatWebSocketClient;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 338
    :try_start_1
    invoke-static {v1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 340
    :goto_2
    iput-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService;->client:Lcom/tgs/aics/websocket/ChatWebSocketClient;

    .line 341
    throw v1
.end method

.method synthetic lambda$connect$0$com-tgs-aics-websocket-WebSocketService()V
    .locals 2

    :try_start_0
    const-string v0, "aics.WebSocketService"

    const-string v1, "WebSocketService connect"

    .line 265
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService;->client:Lcom/tgs/aics/websocket/ChatWebSocketClient;

    invoke-virtual {v0}, Lcom/tgs/aics/websocket/ChatWebSocketClient;->connectBlocking()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 269
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$reconnectWs$1$com-tgs-aics-websocket-WebSocketService()V
    .locals 2

    :try_start_0
    const-string v0, "aics.WebSocketService"

    const-string v1, "start reconnect ws"

    .line 351
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService;->client:Lcom/tgs/aics/websocket/ChatWebSocketClient;

    invoke-virtual {v0}, Lcom/tgs/aics/websocket/ChatWebSocketClient;->reconnectBlocking()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 354
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "aics.WebSocketService"

    const-string v0, "WebSocketService onBind"

    .line 87
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Lcom/tgs/aics/websocket/WebSocketService;->mBinder:Lcom/tgs/aics/websocket/WebSocketService$JWebSocketClientBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 93
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "aics.WebSocketService"

    const-string v1, "Service onDestroy"

    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/tgs/aics/websocket/WebSocketService;->closeConnect()V

    .line 320
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService;->timer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 322
    iput-object v1, p0, Lcom/tgs/aics/websocket/WebSocketService;->timer:Ljava/util/Timer;

    .line 324
    :cond_0
    sput-object v1, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    .line 325
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onResumeReconnect()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService;->client:Lcom/tgs/aics/websocket/ChatWebSocketClient;

    const-string v1, "aics.WebSocketService"

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/tgs/aics/websocket/ChatWebSocketClient;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onResumeReconnect ChatWebSocketClient isClosed, ready to reconnect"

    .line 363
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-direct {p0}, Lcom/tgs/aics/websocket/WebSocketService;->reconnectWs()V

    goto :goto_0

    :cond_0
    const-string v0, "onResumeReconnect initSocketClient"

    .line 367
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0}, Lcom/tgs/aics/websocket/WebSocketService;->initSocketClient()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string p1, "aics.WebSocketService"

    const-string p2, "WebSocketService onStartCommand"

    .line 98
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/tgs/aics/websocket/WebSocketService;->initSocketClient()V

    .line 101
    iget-object p1, p0, Lcom/tgs/aics/websocket/WebSocketService;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/tgs/aics/websocket/WebSocketService;->reconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-ge p1, p2, :cond_0

    .line 109
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/tgs/aics/websocket/WebSocketService$GrayInnerService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/tgs/aics/websocket/WebSocketService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 111
    new-instance p1, Landroid/app/Notification;

    invoke-direct {p1}, Landroid/app/Notification;-><init>()V

    const/16 p2, 0x3e9

    invoke-virtual {p0, p2, p1}, Lcom/tgs/aics/websocket/WebSocketService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 313
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public sendMsg(Ljava/lang/String;)V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService;->client:Lcom/tgs/aics/websocket/ChatWebSocketClient;

    const-string v1, "aics.WebSocketService"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tgs/aics/websocket/ChatWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "send msg: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService;->client:Lcom/tgs/aics/websocket/ChatWebSocketClient;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/websocket/ChatWebSocketClient;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 283
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "send msg fail msg: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->getMessageListener:Lcom/tgs/aics/listener/IGetMessageListener;

    if-eqz v0, :cond_2

    .line 288
    invoke-static {p1}, Lcom/tgs/aics/bean/Message;->parseJSON(Ljava/lang/String;)Lcom/tgs/aics/bean/Message;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_READ_ALL:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v0, v1, :cond_1

    return-void

    .line 291
    :cond_1
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->FEEDBACK:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-virtual {p1, v0}, Lcom/tgs/aics/bean/Message;->setMessageType(Lcom/tgs/aics/bean/Message$MessageType;)V

    .line 292
    new-instance v0, Lcom/tgs/aics/bean/MessageReceiptBean;

    invoke-direct {v0}, Lcom/tgs/aics/bean/MessageReceiptBean;-><init>()V

    const/4 v1, 0x0

    .line 293
    invoke-virtual {v0, v1}, Lcom/tgs/aics/bean/MessageReceiptBean;->setSuccess(Z)V

    const/16 v1, 0x3e8

    .line 294
    invoke-virtual {v0, v1}, Lcom/tgs/aics/bean/MessageReceiptBean;->setErrCode(I)V

    const-string v1, "WebSocket is disconnected"

    .line 295
    invoke-virtual {v0, v1}, Lcom/tgs/aics/bean/MessageReceiptBean;->setErrorMsg(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1, v0}, Lcom/tgs/aics/bean/Message;->setMessageReceiptBean(Lcom/tgs/aics/bean/MessageReceiptBean;)V

    .line 297
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->getMessageListener:Lcom/tgs/aics/listener/IGetMessageListener;

    invoke-interface {v0, p1}, Lcom/tgs/aics/listener/IGetMessageListener;->onReceiveMessage(Lcom/tgs/aics/bean/Message;)V

    .line 300
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/websocket/WebSocketService;->client:Lcom/tgs/aics/websocket/ChatWebSocketClient;

    if-eqz p1, :cond_3

    .line 302
    invoke-virtual {p1}, Lcom/tgs/aics/websocket/ChatWebSocketClient;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 303
    invoke-direct {p0}, Lcom/tgs/aics/websocket/WebSocketService;->reconnectWs()V

    goto :goto_0

    .line 306
    :cond_3
    invoke-direct {p0}, Lcom/tgs/aics/websocket/WebSocketService;->initSocketClient()V

    :cond_4
    :goto_0
    return-void
.end method
