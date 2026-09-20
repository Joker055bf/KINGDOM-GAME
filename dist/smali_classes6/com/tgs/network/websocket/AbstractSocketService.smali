.class public abstract Lcom/tgs/network/websocket/AbstractSocketService;
.super Landroid/app/Service;
.source "AbstractSocketService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/network/websocket/AbstractSocketService$AbstractGrayInnerService;
    }
.end annotation


# static fields
.field private static final GRAY_SERVICE_ID:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "sdktgs.WebSocketService"


# instance fields
.field private client:Lcom/tgs/network/websocket/TGSWebSocketClient;

.field private final mHandler:Landroid/os/Handler;

.field private final reconnectRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->mHandler:Landroid/os/Handler;

    .line 19
    new-instance v0, Lcom/tgs/network/websocket/AbstractSocketService$1;

    invoke-direct {v0, p0}, Lcom/tgs/network/websocket/AbstractSocketService$1;-><init>(Lcom/tgs/network/websocket/AbstractSocketService;)V

    iput-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->reconnectRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/network/websocket/AbstractSocketService;)Lcom/tgs/network/websocket/TGSWebSocketClient;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->client:Lcom/tgs/network/websocket/TGSWebSocketClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/network/websocket/AbstractSocketService;)Landroid/os/Handler;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private connect()V
    .locals 1

    .line 113
    new-instance v0, Lcom/tgs/network/websocket/AbstractSocketService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/tgs/network/websocket/AbstractSocketService$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/network/websocket/AbstractSocketService;)V

    invoke-direct {p0, v0}, Lcom/tgs/network/websocket/AbstractSocketService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private execute(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/network/websocket/AbstractSocketService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 188
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public closeConnect()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tgs/network/websocket/AbstractSocketService;->reconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/tgs/network/websocket/AbstractSocketService;->client:Lcom/tgs/network/websocket/TGSWebSocketClient;

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Lcom/tgs/network/websocket/TGSWebSocketClient;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->client:Lcom/tgs/network/websocket/TGSWebSocketClient;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 169
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 171
    :goto_2
    iput-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->client:Lcom/tgs/network/websocket/TGSWebSocketClient;

    .line 172
    throw v1
.end method

.method public final getClient()Lcom/tgs/network/websocket/TGSWebSocketClient;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->client:Lcom/tgs/network/websocket/TGSWebSocketClient;

    return-object v0
.end method

.method protected getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getGrayInnerServiceClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tgs/network/websocket/AbstractSocketService$AbstractGrayInnerService;",
            ">;"
        }
    .end annotation
.end method

.method protected initSocketClient()V
    .locals 2

    const-string v0, "WebSocketService initSocketClient"

    const-string v1, "sdktgs.WebSocketService"

    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/tgs/network/websocket/AbstractSocketService;->onCreateSocket()Lcom/tgs/network/websocket/TGSWebSocketClient;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->client:Lcom/tgs/network/websocket/TGSWebSocketClient;

    if-nez v0, :cond_0

    const-string v0, "Fail init WebSocketService while create socket null."

    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Lcom/tgs/network/websocket/TGSWebSocketClient;->setConnectionLostTimeout(I)V

    .line 106
    invoke-direct {p0}, Lcom/tgs/network/websocket/AbstractSocketService;->connect()V

    return-void
.end method

.method synthetic lambda$connect$0$com-tgs-network-websocket-AbstractSocketService()V
    .locals 2

    :try_start_0
    const-string v0, "sdktgs.WebSocketService"

    const-string v1, "WebSocketService connect"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->client:Lcom/tgs/network/websocket/TGSWebSocketClient;

    invoke-virtual {v0}, Lcom/tgs/network/websocket/TGSWebSocketClient;->connectBlocking()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method synthetic lambda$reconnectWs$1$com-tgs-network-websocket-AbstractSocketService()V
    .locals 2

    :try_start_0
    const-string v0, "sdktgs.WebSocketService"

    const-string v1, "start reconnect ws"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->client:Lcom/tgs/network/websocket/TGSWebSocketClient;

    invoke-virtual {v0}, Lcom/tgs/network/websocket/TGSWebSocketClient;->reconnectBlocking()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method protected abstract onCreateSocket()Lcom/tgs/network/websocket/TGSWebSocketClient;
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "sdktgs.WebSocketService"

    const-string v1, "Service onDestroy"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Lcom/tgs/network/websocket/AbstractSocketService;->closeConnect()V

    .line 156
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onResumeReconnect()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->client:Lcom/tgs/network/websocket/TGSWebSocketClient;

    const-string v1, "sdktgs.WebSocketService"

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0}, Lcom/tgs/network/websocket/TGSWebSocketClient;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onResumeReconnect ChatWebSocketClient isClosed, ready to reconnect"

    .line 211
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/tgs/network/websocket/AbstractSocketService;->reconnectWs()V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->client:Lcom/tgs/network/websocket/TGSWebSocketClient;

    invoke-virtual {v0}, Lcom/tgs/network/websocket/TGSWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onResumeReconnect ChatWebSocketClient isOpen, return"

    .line 214
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "onResumeReconnect initSocketClient"

    .line 217
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Lcom/tgs/network/websocket/AbstractSocketService;->initSocketClient()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string p1, "WebSocketService onStartCommand"

    const-string p2, "sdktgs.WebSocketService"

    .line 64
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/tgs/network/websocket/AbstractSocketService;->initSocketClient()V

    .line 67
    iget-object p1, p0, Lcom/tgs/network/websocket/AbstractSocketService;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/tgs/network/websocket/AbstractSocketService;->reconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-ge p1, p3, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/tgs/network/websocket/AbstractSocketService;->getGrayInnerServiceClass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    invoke-virtual {p0, p2}, Lcom/tgs/network/websocket/AbstractSocketService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 79
    new-instance p1, Landroid/app/Notification;

    invoke-direct {p1}, Landroid/app/Notification;-><init>()V

    const/16 p2, 0x3e9

    invoke-virtual {p0, p2, p1}, Lcom/tgs/network/websocket/AbstractSocketService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_0
    const-string p1, "Not need start WebSocketService gray inner service while cls null."

    .line 81
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 149
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method protected reconnectWs()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tgs/network/websocket/AbstractSocketService;->reconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    new-instance v0, Lcom/tgs/network/websocket/AbstractSocketService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/tgs/network/websocket/AbstractSocketService$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/network/websocket/AbstractSocketService;)V

    invoke-direct {p0, v0}, Lcom/tgs/network/websocket/AbstractSocketService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendMsg(Ljava/lang/String;)Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->client:Lcom/tgs/network/websocket/TGSWebSocketClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tgs/network/websocket/TGSWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send msg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdktgs.WebSocketService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService;->client:Lcom/tgs/network/websocket/TGSWebSocketClient;

    invoke-virtual {v0, p1}, Lcom/tgs/network/websocket/TGSWebSocketClient;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/tgs/network/websocket/AbstractSocketService;->client:Lcom/tgs/network/websocket/TGSWebSocketClient;

    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p1}, Lcom/tgs/network/websocket/TGSWebSocketClient;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/tgs/network/websocket/AbstractSocketService;->reconnectWs()V

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/tgs/network/websocket/AbstractSocketService;->initSocketClient()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
