.class public abstract Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ExpandableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/recyclerview/ExpandableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# instance fields
.field private mAdapter:Lcom/yanzhenjie/recyclerview/ExpandableAdapter;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yanzhenjie/recyclerview/ExpandableAdapter;)V
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 419
    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;->mAdapter:Lcom/yanzhenjie/recyclerview/ExpandableAdapter;

    return-void
.end method


# virtual methods
.method public final childItemPosition()I
    .locals 2

    .line 442
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;->isParentItem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;->mAdapter:Lcom/yanzhenjie/recyclerview/ExpandableAdapter;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemPosition(I)I

    move-result v0

    return v0

    .line 442
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This item is not a child item."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isParentExpanded()Z
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;->mAdapter:Lcom/yanzhenjie/recyclerview/ExpandableAdapter;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;->parentItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v0

    return v0
.end method

.method public final isParentItem()Z
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;->mAdapter:Lcom/yanzhenjie/recyclerview/ExpandableAdapter;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isParentItem(I)Z

    move-result v0

    return v0
.end method

.method public final parentItemPosition()I
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;->mAdapter:Lcom/yanzhenjie/recyclerview/ExpandableAdapter;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemPosition(I)I

    move-result v0

    return v0
.end method
