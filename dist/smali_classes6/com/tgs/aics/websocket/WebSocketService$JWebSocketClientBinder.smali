.class public Lcom/tgs/aics/websocket/WebSocketService$JWebSocketClientBinder;
.super Landroid/os/Binder;
.source "WebSocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/websocket/WebSocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JWebSocketClientBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/websocket/WebSocketService;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/websocket/WebSocketService;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/tgs/aics/websocket/WebSocketService$JWebSocketClientBinder;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/tgs/aics/websocket/WebSocketService;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/tgs/aics/websocket/WebSocketService$JWebSocketClientBinder;->this$0:Lcom/tgs/aics/websocket/WebSocketService;

    return-object v0
.end method
