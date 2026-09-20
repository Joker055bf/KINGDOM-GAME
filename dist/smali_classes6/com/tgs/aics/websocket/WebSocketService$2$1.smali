.class Lcom/tgs/aics/websocket/WebSocketService$2$1;
.super Ljava/util/TimerTask;
.source "WebSocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/websocket/WebSocketService$2;->onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tgs/aics/websocket/WebSocketService$2;


# direct methods
.method constructor <init>(Lcom/tgs/aics/websocket/WebSocketService$2;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/tgs/aics/websocket/WebSocketService$2$1;->this$1:Lcom/tgs/aics/websocket/WebSocketService$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 175
    invoke-static {}, Lcom/tgs/aics/bean/Message;->createPingMessage()Lcom/tgs/aics/bean/Message;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/tgs/aics/websocket/WebSocketService$2$1;->this$1:Lcom/tgs/aics/websocket/WebSocketService$2;

    iget-object v1, v1, Lcom/tgs/aics/websocket/WebSocketService$2;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-static {v0}, Lcom/tgs/aics/bean/Message;->message2JsonStr(Lcom/tgs/aics/bean/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tgs/aics/websocket/WebSocketService;->sendMsg(Ljava/lang/String;)V

    return-void
.end method
