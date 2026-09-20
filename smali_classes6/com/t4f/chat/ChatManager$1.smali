.class Lcom/t4f/chat/ChatManager$1;
.super Ljava/lang/Object;
.source "ChatManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/chat/ChatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/chat/ChatManager;


# direct methods
.method constructor <init>(Lcom/t4f/chat/ChatManager;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/t4f/chat/ChatManager$1;->this$0:Lcom/t4f/chat/ChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lcom/t4f/chat/ChatManager$1;->this$0:Lcom/t4f/chat/ChatManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/t4f/chat/ChatManager;->access$002(Lcom/t4f/chat/ChatManager;Z)Z

    .line 28
    :try_start_0
    iget-object p1, p0, Lcom/t4f/chat/ChatManager$1;->this$0:Lcom/t4f/chat/ChatManager;

    check-cast p2, Lcom/t4f/chat/ChatWebSocketService$ChatSocketClientBinder;

    invoke-virtual {p2}, Lcom/t4f/chat/ChatWebSocketService$ChatSocketClientBinder;->getService()Lcom/t4f/chat/ChatWebSocketService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/t4f/chat/ChatManager;->access$102(Lcom/t4f/chat/ChatManager;Lcom/t4f/chat/ChatWebSocketService;)Lcom/t4f/chat/ChatWebSocketService;

    .line 29
    iget-object p1, p0, Lcom/t4f/chat/ChatManager$1;->this$0:Lcom/t4f/chat/ChatManager;

    invoke-static {p1}, Lcom/t4f/chat/ChatManager;->access$100(Lcom/t4f/chat/ChatManager;)Lcom/t4f/chat/ChatWebSocketService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/t4f/chat/ChatManager$1;->this$0:Lcom/t4f/chat/ChatManager;

    invoke-static {p1}, Lcom/t4f/chat/ChatManager;->access$100(Lcom/t4f/chat/ChatManager;)Lcom/t4f/chat/ChatWebSocketService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/t4f/chat/ChatWebSocketService;->login()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 40
    iget-object p1, p0, Lcom/t4f/chat/ChatManager$1;->this$0:Lcom/t4f/chat/ChatManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/t4f/chat/ChatManager;->access$002(Lcom/t4f/chat/ChatManager;Z)Z

    .line 41
    iget-object p1, p0, Lcom/t4f/chat/ChatManager$1;->this$0:Lcom/t4f/chat/ChatManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/t4f/chat/ChatManager;->access$102(Lcom/t4f/chat/ChatManager;Lcom/t4f/chat/ChatWebSocketService;)Lcom/t4f/chat/ChatWebSocketService;

    return-void
.end method
