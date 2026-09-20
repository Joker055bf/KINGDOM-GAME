.class public final synthetic Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/tgs/aics/adapter/FormListAdapter;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/tgs/aics/bean/FormListBean$Item;

.field public final synthetic f$4:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/tgs/aics/adapter/FormListAdapter;Ljava/util/ArrayList;ILcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/tgs/aics/adapter/FormListAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda4;->f$1:Ljava/util/ArrayList;

    iput p3, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda4;->f$2:I

    iput-object p4, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda4;->f$3:Lcom/tgs/aics/bean/FormListBean$Item;

    iput-object p5, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda4;->f$4:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/tgs/aics/adapter/FormListAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda4;->f$1:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda4;->f$2:I

    iget-object v3, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda4;->f$3:Lcom/tgs/aics/bean/FormListBean$Item;

    iget-object v4, p0, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda4;->f$4:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tgs/aics/adapter/FormListAdapter;->lambda$setPicItemClick$4$com-tgs-aics-adapter-FormListAdapter(Ljava/util/ArrayList;ILcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Landroid/view/View;)V

    return-void
.end method
