.class Lcom/t4f/chat/ChatWebSocketService$1;
.super Ljava/lang/Object;
.source "ChatWebSocketService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/chat/ChatWebSocketService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/chat/ChatWebSocketService;


# direct methods
.method constructor <init>(Lcom/t4f/chat/ChatWebSocketService;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/t4f/chat/ChatWebSocketService$1;->this$0:Lcom/t4f/chat/ChatWebSocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mHandler handleMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chat.WebSocketService"

    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/t4f/chat/ChatWebSocketService$1;->this$0:Lcom/t4f/chat/ChatWebSocketService;

    invoke-static {p1}, Lcom/t4f/chat/ChatWebSocketService;->access$200(Lcom/t4f/chat/ChatWebSocketService;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/t4f/chat/ChatWebSocketService$1;->this$0:Lcom/t4f/chat/ChatWebSocketService;

    invoke-static {p1}, Lcom/t4f/chat/ChatWebSocketService;->access$100(Lcom/t4f/chat/ChatWebSocketService;)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/t4f/chat/ChatWebSocketService$1;->this$0:Lcom/t4f/chat/ChatWebSocketService;

    invoke-static {p1}, Lcom/t4f/chat/ChatWebSocketService;->access$000(Lcom/t4f/chat/ChatWebSocketService;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
