.class public final synthetic Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/FormListAdapter;

.field public final synthetic f$1:Lcom/tgs/aics/bean/FormListBean$Item;

.field public final synthetic f$2:Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/FormListAdapter;Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/tgs/aics/adapter/FormListAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/tgs/aics/bean/FormListBean$Item;

    iput-object p3, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda2;->f$2:Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/tgs/aics/adapter/FormListAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/tgs/aics/bean/FormListBean$Item;

    iget-object v2, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda2;->f$2:Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/tgs/aics/adapter/FormListAdapter;->lambda$getViewTypeWith$1$com-tgs-aics-adapter-FormListAdapter(Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;Landroid/view/View;Z)V

    return-void
.end method
