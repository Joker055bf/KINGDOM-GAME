.class Lcom/t4f/chat/ChatWebSocketService$2;
.super Lcom/t4f/chat/ChatWebSocketClient;
.source "ChatWebSocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/chat/ChatWebSocketService;->initWebsocketClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/chat/ChatWebSocketService;


# direct methods
.method constructor <init>(Lcom/t4f/chat/ChatWebSocketService;Ljava/net/URI;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/t4f/chat/ChatWebSocketService$2;->this$0:Lcom/t4f/chat/ChatWebSocketService;

    invoke-direct {p0, p2}, Lcom/t4f/chat/ChatWebSocketClient;-><init>(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "=>initSocketClient onClose, code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", reason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", remote: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "chat.WebSocketService"

    invoke-static {p2, p1}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "=>initSocketClient onError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "chat.WebSocketService"

    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 1

    .line 138
    :try_start_0
    invoke-static {}, Lcom/t4f/chat/ChatManager;->getInstance()Lcom/t4f/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4f/chat/ChatManager;->getChatWebSocketListener()Lcom/t4f/chat/IChatWebSocketListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/t4f/chat/ChatManager;->getInstance()Lcom/t4f/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4f/chat/ChatManager;->getChatWebSocketListener()Lcom/t4f/chat/IChatWebSocketListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/t4f/chat/IChatWebSocketListener;->onMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-static {p1}, Lcom/t4f/chat/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 3

    const-string p1, "chat.WebSocketService"

    const-string v0, "=>initSocketClient onOpen"

    .line 148
    invoke-static {p1, v0}, Lcom/t4f/debug/Debug;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object p1, Lcom/t4f/chat/ConstantUtil;->sActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/t4f/chat/ChatManager;->getInstance()Lcom/t4f/chat/ChatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/t4f/chat/ChatManager;->getChatWebSocketListener()Lcom/t4f/chat/IChatWebSocketListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    sget-object p1, Lcom/t4f/chat/ConstantUtil;->sActivity:Landroid/app/Activity;

    new-instance v0, Lcom/t4f/chat/ChatWebSocketService$2$1;

    invoke-direct {v0, p0}, Lcom/t4f/chat/ChatWebSocketService$2$1;-><init>(Lcom/t4f/chat/ChatWebSocketService$2;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/t4f/chat/ChatWebSocketService$2;->this$0:Lcom/t4f/chat/ChatWebSocketService;

    invoke-static {p1}, Lcom/t4f/chat/ChatWebSocketService;->access$300(Lcom/t4f/chat/ChatWebSocketService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object p1, p0, Lcom/t4f/chat/ChatWebSocketService$2;->this$0:Lcom/t4f/chat/ChatWebSocketService;

    invoke-static {p1}, Lcom/t4f/chat/ChatWebSocketService;->access$300(Lcom/t4f/chat/ChatWebSocketService;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
