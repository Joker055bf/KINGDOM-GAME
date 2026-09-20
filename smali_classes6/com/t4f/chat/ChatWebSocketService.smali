.class public Lcom/t4f/chat/ChatWebSocketService;
.super Landroid/app/Service;
.source "ChatWebSocketService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4f/chat/ChatWebSocketService$ChatSocketClientBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "chat.WebSocketService"


# instance fields
.field private final HANDLER_TIME_INTERVAL:I

.field private final OPT_CLOSE:I

.field private final OPT_CONNECT:I

.field private final OPT_RECONNECT_IF_NEED:I

.field private handlerThread:Landroid/os/HandlerThread;

.field private final mBinder:Lcom/t4f/chat/ChatWebSocketService$ChatSocketClientBinder;

.field private mChatClient:Lcom/t4f/chat/ChatWebSocketClient;

.field private mHandler:Landroid/os/Handler;

.field private mLastLoginUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Lcom/t4f/chat/ChatWebSocketService$ChatSocketClientBinder;

    invoke-direct {v0, p0}, Lcom/t4f/chat/ChatWebSocketService$ChatSocketClientBinder;-><init>(Lcom/t4f/chat/ChatWebSocketService;)V

    iput-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mBinder:Lcom/t4f/chat/ChatWebSocketService$ChatSocketClientBinder;

    const/16 v0, 0x2710

    .line 28
    iput v0, p0, Lcom/t4f/chat/ChatWebSocketService;->HANDLER_TIME_INTERVAL:I

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/t4f/chat/ChatWebSocketService;->OPT_CONNECT:I

    const/4 v0, 0x2

    .line 37
    iput v0, p0, Lcom/t4f/chat/ChatWebSocketService;->OPT_RECONNECT_IF_NEED:I

    const/4 v0, 0x3

    .line 39
    iput v0, p0, Lcom/t4f/chat/ChatWebSocketService;->OPT_CLOSE:I

    return-void
.end method

.method static synthetic access$000(Lcom/t4f/chat/ChatWebSocketService;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/t4f/chat/ChatWebSocketService;->doConnect()V

    return-void
.end method

.method static synthetic access$100(Lcom/t4f/chat/ChatWebSocketService;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/t4f/chat/ChatWebSocketService;->doReconnect()V

    return-void
.end method

.method static synthetic access$200(Lcom/t4f/chat/ChatWebSocketService;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/t4f/chat/ChatWebSocketService;->doClose()V

    return-void
.end method

.method static synthetic access$300(Lcom/t4f/chat/ChatWebSocketService;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/t4f/chat/ChatWebSocketService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private doClose()V
    .locals 0

    .line 299
    invoke-virtual {p0}, Lcom/t4f/chat/ChatWebSocketService;->closeConnect()V

    return-void
.end method

.method private doConnect()V
    .locals 2

    :try_start_0
    const-string v0, "chat.WebSocketService"

    const-string v1, "ChatWebSocketService doConnect"

    .line 269
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/t4f/chat/ChatWebSocketService;->initWebsocketClient()V

    .line 271
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mChatClient:Lcom/t4f/chat/ChatWebSocketClient;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/t4f/chat/ChatWebSocketClient;->connectBlocking()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 275
    invoke-static {v0}, Lcom/t4f/chat/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private doReconnect()V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mChatClient:Lcom/t4f/chat/ChatWebSocketClient;

    const-string v1, "chat.WebSocketService"

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/t4f/chat/ChatWebSocketClient;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ChatWebSocketClient isClosed, ready to reconnect"

    .line 285
    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcom/t4f/chat/ChatWebSocketService;->reconnectWebSocket()V

    :cond_0
    const-string v0, "check ChatWebSocketClient status 10s later"

    .line 290
    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private reconnectWebSocket()V
    .locals 2

    :try_start_0
    const-string v0, "chat.WebSocketService"

    const-string v1, "reconnectWebSocket"

    .line 360
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mChatClient:Lcom/t4f/chat/ChatWebSocketClient;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/t4f/chat/ChatWebSocketClient;->reconnectBlocking()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 365
    invoke-static {v0}, Lcom/t4f/chat/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public closeConnect()V
    .locals 2

    const/4 v0, 0x0

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/t4f/chat/ChatWebSocketService;->mChatClient:Lcom/t4f/chat/ChatWebSocketClient;

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v1}, Lcom/t4f/chat/ChatWebSocketClient;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mChatClient:Lcom/t4f/chat/ChatWebSocketClient;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 349
    :try_start_1
    invoke-static {v1}, Lcom/t4f/chat/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 351
    :goto_2
    iput-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mChatClient:Lcom/t4f/chat/ChatWebSocketClient;

    .line 352
    throw v1
.end method

.method public getChatClient()Lcom/t4f/chat/ChatWebSocketClient;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mChatClient:Lcom/t4f/chat/ChatWebSocketClient;

    return-object v0
.end method

.method public initWebsocketClient()V
    .locals 4

    const-string v0, "Bearer "

    const-string v1, "wss://"

    .line 112
    sget-boolean v2, Lcom/t4f/chat/ConstantUtil;->isEnableJson:Z

    if-nez v2, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/t4f/chat/ChatWebSocketService;->initWebsocketClientOld()V

    return-void

    :cond_0
    :try_start_0
    const-string v2, "chat.WebSocketService"

    const-string v3, "=>initWebsocketClient"

    .line 118
    invoke-static {v2, v3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v2, Lcom/t4f/chat/ConstantUtil;->sActivity:Landroid/app/Activity;

    if-nez v2, :cond_1

    return-void

    .line 123
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/t4f/chat/ConstantUtil;->sServerUrl:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/t4f/chat/ConstantUtil;->sServerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tgs/cproxy/ws?bundle_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/t4f/chat/ConstantUtil;->sActivity:Landroid/app/Activity;

    .line 126
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&client_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/t4f/chat/ConstantUtil;->sClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&protocl=json&jid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/t4f/chat/ConstantUtil;->sUserID:Ljava/lang/String;

    const-string v3, "UTF-8"

    .line 129
    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v2, Lcom/t4f/chat/ChatWebSocketService$2;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/t4f/chat/ChatWebSocketService$2;-><init>(Lcom/t4f/chat/ChatWebSocketService;Ljava/net/URI;)V

    iput-object v2, p0, Lcom/t4f/chat/ChatWebSocketService;->mChatClient:Lcom/t4f/chat/ChatWebSocketClient;

    const-string v1, "Authorization"

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/t4f/chat/ConstantUtil;->sPassword:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/t4f/chat/ChatWebSocketClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mChatClient:Lcom/t4f/chat/ChatWebSocketClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4f/chat/ChatWebSocketClient;->setConnectionLostTimeout(I)V

    .line 176
    sget-object v0, Lcom/t4f/chat/ConstantUtil;->sUserID:Ljava/lang/String;

    iput-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mLastLoginUserId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 178
    invoke-static {v0}, Lcom/t4f/chat/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public initWebsocketClientOld()V
    .locals 3

    const-string v0, "wss://"

    :try_start_0
    const-string v1, "chat.WebSocketService"

    const-string v2, "=>initWebsocketClient"

    .line 187
    invoke-static {v1, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v1, Lcom/t4f/chat/ConstantUtil;->sActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    return-void

    .line 192
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/t4f/chat/ConstantUtil;->sServerUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/t4f/chat/ConstantUtil;->sServerPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tgs/cproxy/ws?bundle_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/t4f/chat/ConstantUtil;->sActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/t4f/chat/ConstantUtil;->sClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Lcom/t4f/chat/ChatWebSocketService$3;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/t4f/chat/ChatWebSocketService$3;-><init>(Lcom/t4f/chat/ChatWebSocketService;Ljava/net/URI;)V

    iput-object v1, p0, Lcom/t4f/chat/ChatWebSocketService;->mChatClient:Lcom/t4f/chat/ChatWebSocketClient;

    const/4 v0, 0x0

    .line 256
    invoke-virtual {v1, v0}, Lcom/t4f/chat/ChatWebSocketClient;->setConnectionLostTimeout(I)V

    .line 257
    sget-object v0, Lcom/t4f/chat/ConstantUtil;->sUserID:Ljava/lang/String;

    iput-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mLastLoginUserId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 259
    invoke-static {v0}, Lcom/t4f/chat/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method login()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mChatClient:Lcom/t4f/chat/ChatWebSocketClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mLastLoginUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/t4f/chat/ConstantUtil;->sUserID:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4f/chat/ChatWebSocketService;->mLastLoginUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/t4f/chat/ChatWebSocketService;->reconnect()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "chat.WebSocketService"

    const-string v0, "ChatWebSocketService onBind"

    .line 54
    invoke-static {p1, v0}, Lcom/t4f/debug/Debug;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/t4f/chat/ChatWebSocketService;->mBinder:Lcom/t4f/chat/ChatWebSocketService$ChatSocketClientBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TgsChatThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->handlerThread:Landroid/os/HandlerThread;

    .line 62
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/t4f/chat/ChatWebSocketService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/t4f/chat/ChatWebSocketService$1;

    invoke-direct {v2, p0}, Lcom/t4f/chat/ChatWebSocketService$1;-><init>(Lcom/t4f/chat/ChatWebSocketService;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "chat.WebSocketService"

    const-string v1, "ChatService onDestroy"

    .line 332
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 334
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 337
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 327
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method reconnect()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendMsg([B)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mChatClient:Lcom/t4f/chat/ChatWebSocketClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4f/chat/ChatWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService;->mChatClient:Lcom/t4f/chat/ChatWebSocketClient;

    invoke-virtual {v0, p1}, Lcom/t4f/chat/ChatWebSocketClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 311
    invoke-static {p1}, Lcom/t4f/chat/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/t4f/chat/ChatWebSocketService;->mChatClient:Lcom/t4f/chat/ChatWebSocketClient;

    if-nez p1, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/t4f/chat/ChatWebSocketService;->login()V

    return-void

    .line 319
    :cond_1
    invoke-virtual {p1}, Lcom/t4f/chat/ChatWebSocketClient;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/t4f/chat/ChatWebSocketService;->reconnect()V

    :cond_2
    :goto_0
    return-void
.end method
