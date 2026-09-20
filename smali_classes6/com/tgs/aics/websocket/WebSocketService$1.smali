.class Lcom/tgs/aics/websocket/WebSocketService$1;
.super Ljava/lang/Object;
.source "WebSocketService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/websocket/WebSocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/websocket/WebSocketService;


# direct methods
.method constructor <init>(Lcom/tgs/aics/websocket/WebSocketService;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/tgs/aics/websocket/WebSocketService$1;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService$1;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    iget-object v0, v0, Lcom/tgs/aics/websocket/WebSocketService;->client:Lcom/tgs/aics/websocket/ChatWebSocketClient;

    const-string v1, "aics.WebSocketService"

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService$1;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    iget-object v0, v0, Lcom/tgs/aics/websocket/WebSocketService;->client:Lcom/tgs/aics/websocket/ChatWebSocketClient;

    invoke-virtual {v0}, Lcom/tgs/aics/websocket/ChatWebSocketClient;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ChatWebSocketClient isClosed, ready to reconnect"

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService$1;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-static {v0}, Lcom/tgs/aics/websocket/WebSocketService;->access$000(Lcom/tgs/aics/websocket/WebSocketService;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService$1;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-static {v0}, Lcom/tgs/aics/websocket/WebSocketService;->access$100(Lcom/tgs/aics/websocket/WebSocketService;)V

    :cond_1
    :goto_0
    const-string v0, "ChatWebSocketClient ready to check webSocket\'s status after 10s"

    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService$1;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-static {v0}, Lcom/tgs/aics/websocket/WebSocketService;->access$200(Lcom/tgs/aics/websocket/WebSocketService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
