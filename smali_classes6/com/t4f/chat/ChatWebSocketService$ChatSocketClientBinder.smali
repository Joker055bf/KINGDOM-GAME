.class public Lcom/t4f/chat/ChatWebSocketService$ChatSocketClientBinder;
.super Landroid/os/Binder;
.source "ChatWebSocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/chat/ChatWebSocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatSocketClientBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/chat/ChatWebSocketService;


# direct methods
.method public constructor <init>(Lcom/t4f/chat/ChatWebSocketService;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/t4f/chat/ChatWebSocketService$ChatSocketClientBinder;->this$0:Lcom/t4f/chat/ChatWebSocketService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/t4f/chat/ChatWebSocketService;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/t4f/chat/ChatWebSocketService$ChatSocketClientBinder;->this$0:Lcom/t4f/chat/ChatWebSocketService;

    return-object v0
.end method
