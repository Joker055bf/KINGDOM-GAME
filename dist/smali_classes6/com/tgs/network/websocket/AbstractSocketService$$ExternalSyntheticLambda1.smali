.class public final synthetic Lcom/tgs/network/websocket/AbstractSocketService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tgs/network/websocket/AbstractSocketService;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/network/websocket/AbstractSocketService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/network/websocket/AbstractSocketService$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/network/websocket/AbstractSocketService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tgs/network/websocket/AbstractSocketService$$ExternalSyntheticLambda1;->f$0:Lcom/tgs/network/websocket/AbstractSocketService;

    invoke-virtual {v0}, Lcom/tgs/network/websocket/AbstractSocketService;->lambda$connect$0$com-tgs-network-websocket-AbstractSocketService()V

    return-void
.end method
