.class Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;
.super Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListenerImpl;
.source "MessageRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->selectText(Lcom/tgs/aics/bean/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;

.field final synthetic val$message:Lcom/tgs/aics/bean/Message;


# direct methods
.method constructor <init>(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;->this$1:Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;

    iput-object p2, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;->val$message:Lcom/tgs/aics/bean/Message;

    invoke-direct {p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickUrl(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    const-string v0, "aics://comment"

    .line 634
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;->this$1:Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;

    invoke-static {p1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->access$200(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/tgs/aics/ui/activity/IMActivity;

    if-eqz p1, :cond_2

    .line 636
    iget-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;->this$1:Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;

    invoke-static {p1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->access$200(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/ui/activity/IMActivity;

    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;->val$message:Lcom/tgs/aics/bean/Message;

    invoke-virtual {p1, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->showBottomDialog(Lcom/tgs/aics/bean/Message;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "aics://log_upload"

    .line 638
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    iget-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;->this$1:Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;

    invoke-static {p1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->access$200(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/tgs/aics/ui/activity/IMActivity;

    if-eqz p1, :cond_2

    .line 641
    iget-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;->this$1:Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;

    invoke-static {p1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->access$200(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/ui/activity/IMActivity;

    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;->val$message:Lcom/tgs/aics/bean/Message;

    invoke-virtual {p1, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->uploadClientLogFile(Lcom/tgs/aics/bean/Message;)V

    goto :goto_0

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;->this$1:Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;

    invoke-static {v0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->access$200(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/tgs/aics/ui/activity/IMActivity;

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;->this$1:Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;

    iget-object v1, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;->this$1:Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;

    invoke-static {v0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->access$200(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;)Landroid/content/Context;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/tgs/aics/ui/activity/IMActivity;

    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;->val$message:Lcom/tgs/aics/bean/Message;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;->val$message:Lcom/tgs/aics/bean/Message;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/Message;->isFormCommitted()Z

    move-result v5

    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;->val$message:Lcom/tgs/aics/bean/Message;

    invoke-static {v0}, Lcom/tgs/aics/utils/Utils;->isTheSameWorkOrderIdentity(Lcom/tgs/aics/bean/Message;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->access$300(Lcom/tgs/aics/adapter/MessageRecyclerAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTextSelected(Ljava/lang/CharSequence;)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;->this$1:Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->access$102(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
