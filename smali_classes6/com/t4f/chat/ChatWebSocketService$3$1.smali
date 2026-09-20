.class Lcom/t4f/chat/ChatWebSocketService$3$1;
.super Ljava/lang/Object;
.source "ChatWebSocketService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/chat/ChatWebSocketService$3;->onMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/t4f/chat/ChatWebSocketService$3;


# direct methods
.method constructor <init>(Lcom/t4f/chat/ChatWebSocketService$3;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/t4f/chat/ChatWebSocketService$3$1;->this$1:Lcom/t4f/chat/ChatWebSocketService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 221
    invoke-static {}, Lcom/t4f/chat/ChatManager;->getInstance()Lcom/t4f/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4f/chat/ChatManager;->getChatWebSocketListener()Lcom/t4f/chat/IChatWebSocketListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "success"

    invoke-interface {v0, v1, v2}, Lcom/t4f/chat/IChatWebSocketListener;->onLoginSuccess(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method
