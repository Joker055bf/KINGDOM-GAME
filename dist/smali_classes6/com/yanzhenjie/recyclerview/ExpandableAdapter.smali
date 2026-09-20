.class public abstract Lcom/yanzhenjie/recyclerview/ExpandableAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ExpandableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# static fields
.field private static final TYPE_CHILD:I = 0x2

.field private static final TYPE_PARENT:I = 0x1


# instance fields
.field private final mExpandItemArray:Landroid/util/SparseBooleanArray;

.field private final mParentViewType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mExpandItemArray:Landroid/util/SparseBooleanArray;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mParentViewType:Ljava/util/List;

    return-void
.end method

.method private checkViewType(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return-void

    .line 241
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "The value [%d] is reserved, please replace it with other values."

    .line 241
    invoke-static {v1, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private positionFromChildPosition(II)I
    .locals 4

    .line 173
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    if-ne p1, v1, :cond_1

    .line 178
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result p1

    if-ge p2, p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 184
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The child position is invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The parent position is invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private positionFromParentPosition(I)I
    .locals 4

    .line 152
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-ne p1, v1, :cond_0

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 159
    :cond_0
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The parent position is invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract bindChildHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;II)V"
        }
    .end annotation
.end method

.method public bindChildHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;II",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 386
    invoke-virtual {p0, p1, p2, p3}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->bindChildHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;II)V

    return-void
.end method

.method public abstract bindParentHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public bindParentHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->bindParentHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;I)V

    return-void
.end method

.method public abstract childItemCount(I)I
.end method

.method public final childItemPosition(I)I
    .locals 4

    .line 324
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 328
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result v3

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_0

    sub-int/2addr v2, p1

    sub-int/2addr v3, v2

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The adapter position is invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public childItemViewType(II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public final collapseParent(I)V
    .locals 2

    .line 74
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mExpandItemArray:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 77
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromParentPosition(I)I

    move-result v0

    .line 78
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemRangeRemoved(II)V

    :cond_0
    return-void
.end method

.method public abstract createChildHolder(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public abstract createParentHolder(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public final expandParent(I)V
    .locals 2

    .line 59
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mExpandItemArray:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 62
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromParentPosition(I)I

    move-result v0

    .line 63
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result p1

    add-int/2addr v0, v1

    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemRangeInserted(II)V

    :cond_0
    return-void
.end method

.method public final getItemCount()I
    .locals 3

    .line 199
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 201
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .line 225
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemPosition(I)I

    move-result v0

    .line 226
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isParentItem(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemViewType(I)I

    move-result p1

    .line 228
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->checkViewType(I)V

    .line 229
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mParentViewType:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mParentViewType:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return p1

    .line 232
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemPosition(I)I

    move-result p1

    .line 233
    invoke-virtual {p0, v0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemViewType(II)I

    move-result p1

    .line 234
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->checkViewType(I)V

    return p1
.end method

.method public final isExpanded(I)Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mExpandItemArray:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    return p1
.end method

.method public final isParentItem(I)Z
    .locals 5

    .line 276
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 284
    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 285
    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final notifyChildChanged(II)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromChildPosition(II)I

    move-result p1

    .line 122
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final notifyChildInserted(II)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromChildPosition(II)I

    move-result p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final notifyChildRemoved(II)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromChildPosition(II)I

    move-result p1

    .line 146
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public final notifyParentChanged(I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromParentPosition(I)I

    move-result p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final notifyParentInserted(I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromParentPosition(I)I

    move-result p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final notifyParentRemoved(I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromParentPosition(I)I

    move-result p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 458
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 459
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 460
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 461
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    .line 463
    new-instance v1, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$1;-><init>(Lcom/yanzhenjie/recyclerview/ExpandableAdapter;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    check-cast p1, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->onBindViewHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->onBindViewHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final onBindViewHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 372
    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemPosition(I)I

    move-result v0

    .line 373
    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isParentItem(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    invoke-virtual {p0, p1, v0, p3}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->bindParentHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;ILjava/util/List;)V

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemPosition(I)I

    move-result p2

    .line 377
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->bindChildHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;IILjava/util/List;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mParentViewType:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->createParentHolder(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    move-result-object p1

    return-object p1

    .line 347
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->createChildHolder(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->onViewAttachedToWindow(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 476
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isParentItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object p1, p1, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 478
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 479
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v0, 0x1

    .line 480
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_0
    return-void
.end method

.method public abstract parentItemCount()I
.end method

.method public final parentItemPosition(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 301
    :goto_0
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 304
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    if-ge p1, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The adapter position is not a parent type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parentItemViewType(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
