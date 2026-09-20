.class public final synthetic Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/bean/Message;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/MessageRecyclerAdapter;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda4;->f$1:Lcom/tgs/aics/bean/Message;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda4;->f$1:Lcom/tgs/aics/bean/Message;

    invoke-virtual {v0, v1, p1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->lambda$onBindViewHolder$3$com-tgs-aics-adapter-MessageRecyclerAdapter(Lcom/tgs/aics/bean/Message;Landroid/view/View;)V

    return-void
.end method
