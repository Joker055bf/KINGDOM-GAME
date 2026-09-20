.class public final synthetic Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/tgs/aics/listener/ISendMessageListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/ui/activity/IMActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    return-void
.end method


# virtual methods
.method public final onResult(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tgs/aics/ui/activity/IMActivity;->handleMessageSendResult(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V

    return-void
.end method
