.class Lcom/tgs/aics/websocket/WebSocketService$2;
.super Lcom/tgs/aics/websocket/ChatWebSocketClient;
.source "WebSocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/websocket/WebSocketService;->initSocketClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/websocket/WebSocketService;

.field final synthetic val$context:Lcom/tgs/aics/websocket/WebSocketService;


# direct methods
.method constructor <init>(Lcom/tgs/aics/websocket/WebSocketService;Ljava/net/URI;Lcom/tgs/aics/websocket/WebSocketService;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/tgs/aics/websocket/WebSocketService$2;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    iput-object p3, p0, Lcom/tgs/aics/websocket/WebSocketService$2;->val$context:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-direct {p0, p2}, Lcom/tgs/aics/websocket/ChatWebSocketClient;-><init>(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatWebSocketClient onClose, code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remote: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "aics.WebSocketService"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x3e8

    if-eq p1, p3, :cond_0

    .line 186
    sget-object p3, Lcom/tgs/aics/utils/LogUtil;->kAICSLogTypeWebSocketLoginFailed:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tgs/aics/websocket/WebSocketService$2;->val$context:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-static {p3, p1, p2, v0, v1}, Lcom/tgs/aics/utils/LogUtil;->uploadLogToServerWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 5

    .line 193
    sget-object v0, Lcom/tgs/aics/utils/LogUtil;->kAICSLogTypeWebSocketLoginFailed:Ljava/lang/String;

    const-string v1, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tgs/aics/websocket/WebSocketService$2;->val$context:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tgs/aics/utils/LogUtil;->uploadLogToServerWithType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ChatWebSocketClient onError: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "aics.WebSocketService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 5

    .line 129
    invoke-static {p1}, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->parseJSON(Ljava/lang/String;)Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;

    move-result-object v0

    const-string v1, "aics.WebSocketService"

    if-nez v0, :cond_2

    .line 132
    invoke-static {p1}, Lcom/tgs/aics/bean/Message;->parseJSON(Ljava/lang/String;)Lcom/tgs/aics/bean/Message;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/tgs/aics/bean/Message;->getMessageSource()Lcom/tgs/aics/bean/Message$MessageSource;

    move-result-object v2

    sget-object v3, Lcom/tgs/aics/bean/Message$MessageSource;->SYSTEM:Lcom/tgs/aics/bean/Message$MessageSource;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v2

    sget-object v3, Lcom/tgs/aics/bean/Message$MessageType;->PING:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v2, v3, :cond_0

    const-string p1, "ChatWebSocketClient\'s message\'s source is system and message\'s type is ping, so return"

    .line 134
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 139
    :cond_0
    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil;->getMessageListener:Lcom/tgs/aics/listener/IGetMessageListener;

    if-eqz v2, :cond_1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConstantUtil.getMessageListener isn\'t null, and onReceiveMessage:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->getMessageListener:Lcom/tgs/aics/listener/IGetMessageListener;

    invoke-interface {p1, v0}, Lcom/tgs/aics/listener/IGetMessageListener;->onReceiveMessage(Lcom/tgs/aics/bean/Message;)V

    goto/16 :goto_2

    :cond_1
    const-string p1, "ConstantUtil.getMessageListener is null"

    .line 143
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 146
    :cond_2
    invoke-virtual {v0}, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "ChatWebSocketClient onMessage isDomestic: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->isDomestic()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v0}, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->isDomestic()Z

    move-result p1

    sput-boolean p1, Lcom/tgs/aics/utils/ConstantUtil;->isDomestic:Z

    goto :goto_0

    .line 150
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "ChatWebSocketClient onMessage is not success, reason: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    invoke-virtual {v0}, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->getServerTimestamp()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_4

    invoke-virtual {v0}, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->getServerTimestamp()J

    move-result-wide v1

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_1
    sput-wide v1, Lcom/tgs/aics/utils/ConstantUtil;->BaseServerTimestamp:J

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/tgs/aics/utils/ConstantUtil;->InitialTimestamp:J

    .line 154
    invoke-virtual {v0}, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->getGameName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tgs/aics/utils/ConstantUtil;->gameNameFromServer:Ljava/lang/String;

    .line 155
    invoke-virtual {v0}, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->getNewEvaluationSystemBean()Lcom/tgs/aics/bean/NewEvaluationSystemBean;

    move-result-object p1

    sput-object p1, Lcom/tgs/aics/utils/ConstantUtil;->newEvaluationSystemBean:Lcom/tgs/aics/bean/NewEvaluationSystemBean;

    .line 156
    invoke-virtual {v0}, Lcom/tgs/aics/bean/WebSocketConnectSuccessBean;->getProjectVar()Lcom/tgs/aics/bean/CustomDefineParams;

    move-result-object p1

    sput-object p1, Lcom/tgs/aics/utils/ConstantUtil;->customDefineParams:Lcom/tgs/aics/bean/CustomDefineParams;

    .line 157
    new-instance p1, Landroid/content/Intent;

    const-string v0, "tgs_aics_game_name_update"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService$2;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-virtual {v0}, Lcom/tgs/aics/websocket/WebSocketService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService$2;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/websocket/WebSocketService;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 6

    const-string p1, "aics.WebSocketService"

    const-string v0, "ChatWebSocketClient onOpen"

    .line 165
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p1, p0, Lcom/tgs/aics/websocket/WebSocketService$2;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-static {p1}, Lcom/tgs/aics/websocket/WebSocketService;->access$300(Lcom/tgs/aics/websocket/WebSocketService;)Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/tgs/aics/websocket/WebSocketService$2;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-static {p1}, Lcom/tgs/aics/websocket/WebSocketService;->access$300(Lcom/tgs/aics/websocket/WebSocketService;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 169
    iget-object p1, p0, Lcom/tgs/aics/websocket/WebSocketService$2;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tgs/aics/websocket/WebSocketService;->access$302(Lcom/tgs/aics/websocket/WebSocketService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/websocket/WebSocketService$2;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {p1, v0}, Lcom/tgs/aics/websocket/WebSocketService;->access$302(Lcom/tgs/aics/websocket/WebSocketService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 172
    iget-object p1, p0, Lcom/tgs/aics/websocket/WebSocketService$2;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-static {p1}, Lcom/tgs/aics/websocket/WebSocketService;->access$300(Lcom/tgs/aics/websocket/WebSocketService;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/websocket/WebSocketService$2$1;

    invoke-direct {v1, p0}, Lcom/tgs/aics/websocket/WebSocketService$2$1;-><init>(Lcom/tgs/aics/websocket/WebSocketService$2;)V

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x7530

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
