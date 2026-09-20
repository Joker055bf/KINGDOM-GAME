.class public final synthetic Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/FormListAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

.field public final synthetic f$2:Lcom/tgs/aics/bean/FormListBean$Item;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/FormListAdapter;Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Lcom/tgs/aics/bean/FormListBean$Item;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/adapter/FormListAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    iput-object p3, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/tgs/aics/bean/FormListBean$Item;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/tgs/aics/adapter/FormListAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    iget-object v2, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/tgs/aics/bean/FormListBean$Item;

    invoke-virtual {v0, v1, v2, p1}, Lcom/tgs/aics/adapter/FormListAdapter;->lambda$refreshGridLayout$3$com-tgs-aics-adapter-FormListAdapter(Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Lcom/tgs/aics/bean/FormListBean$Item;Landroid/view/View;)V

    return-void
.end method
