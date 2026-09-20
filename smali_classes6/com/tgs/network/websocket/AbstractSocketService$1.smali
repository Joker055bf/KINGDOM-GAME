.class Lcom/tgs/network/websocket/AbstractSocketService$1;
.super Ljava/lang/Object;
.source "AbstractSocketService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/network/websocket/AbstractSocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/network/websocket/AbstractSocketService;


# direct methods
.method constructor <init>(Lcom/tgs/network/websocket/AbstractSocketService;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/tgs/network/websocket/AbstractSocketService$1;->this$0:Lcom/tgs/network/websocket/AbstractSocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService$1;->this$0:Lcom/tgs/network/websocket/AbstractSocketService;

    invoke-static {v0}, Lcom/tgs/network/websocket/AbstractSocketService;->access$000(Lcom/tgs/network/websocket/AbstractSocketService;)Lcom/tgs/network/websocket/TGSWebSocketClient;

    move-result-object v0

    const-string v1, "sdktgs.WebSocketService"

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService$1;->this$0:Lcom/tgs/network/websocket/AbstractSocketService;

    invoke-static {v0}, Lcom/tgs/network/websocket/AbstractSocketService;->access$000(Lcom/tgs/network/websocket/AbstractSocketService;)Lcom/tgs/network/websocket/TGSWebSocketClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/network/websocket/TGSWebSocketClient;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ChatWebSocketClient isClosed, ready to reconnect"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService$1;->this$0:Lcom/tgs/network/websocket/AbstractSocketService;

    invoke-virtual {v0}, Lcom/tgs/network/websocket/AbstractSocketService;->reconnectWs()V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService$1;->this$0:Lcom/tgs/network/websocket/AbstractSocketService;

    invoke-static {v0}, Lcom/tgs/network/websocket/AbstractSocketService;->access$000(Lcom/tgs/network/websocket/AbstractSocketService;)Lcom/tgs/network/websocket/TGSWebSocketClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/network/websocket/TGSWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ChatWebSocketClient isOpen, return"

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService$1;->this$0:Lcom/tgs/network/websocket/AbstractSocketService;

    invoke-virtual {v0}, Lcom/tgs/network/websocket/AbstractSocketService;->initSocketClient()V

    :cond_2
    :goto_0
    const-string v0, "ChatWebSocketClient ready to check webSocket\'s status after 10s"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService$1;->this$0:Lcom/tgs/network/websocket/AbstractSocketService;

    invoke-static {v0}, Lcom/tgs/network/websocket/AbstractSocketService;->access$100(Lcom/tgs/network/websocket/AbstractSocketService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
