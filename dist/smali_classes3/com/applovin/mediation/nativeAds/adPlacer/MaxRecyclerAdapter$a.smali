.class Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;


# direct methods
.method private constructor <init>(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$1;)V
    .locals 0

    .line 461
    invoke-direct {p0, p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;-><init>(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-static {v0}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->b(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->getAdjustedPosition(I)I

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-static {v1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->b(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;

    move-result-object v1

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->getAdjustedPosition(I)I

    move-result p1

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 477
    iget-object p2, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-virtual {p2, v0, p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 4

    .line 484
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-static {v0}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->c(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int v1, p1, p2

    const/4 v2, 0x0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 487
    :goto_0
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-static {v1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->d(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$AdPositionBehavior;

    move-result-object v1

    sget-object v3, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$AdPositionBehavior;->FIXED:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$AdPositionBehavior;

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    .line 488
    invoke-static {v1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->d(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$AdPositionBehavior;

    move-result-object v1

    sget-object v3, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$AdPositionBehavior;->DYNAMIC_EXCEPT_ON_APPEND:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$AdPositionBehavior;

    if-ne v1, v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_2

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-static {v0}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->b(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->getAdjustedPosition(I)I

    move-result p1

    :goto_1
    if-ge v2, p2, :cond_2

    .line 500
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-static {v0}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->b(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->insertItem(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->notifyItemRangeInserted(II)V

    goto :goto_3

    .line 491
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->notifyDataSetChanged()V

    :goto_3
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 552
    iget-object p1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 6

    .line 511
    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-static {v0}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->c(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int v1, p1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 514
    :goto_0
    iget-object v4, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-static {v4}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->d(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$AdPositionBehavior;

    move-result-object v4

    sget-object v5, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$AdPositionBehavior;->FIXED:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$AdPositionBehavior;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    .line 515
    invoke-static {v4}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->d(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$AdPositionBehavior;

    move-result-object v4

    sget-object v5, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$AdPositionBehavior;->DYNAMIC_EXCEPT_ON_APPEND:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$AdPositionBehavior;

    if-ne v4, v5, :cond_1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 522
    :cond_1
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-static {v1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->b(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->getAdjustedPosition(I)I

    move-result p1

    .line 523
    iget-object v1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-static {v1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->b(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;

    move-result-object v1

    add-int v4, v0, p2

    invoke-virtual {v1, v4}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->getAdjustedCount(I)I

    move-result v1

    :goto_1
    if-ge v2, p2, :cond_2

    .line 528
    iget-object v4, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-static {v4}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->b(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->removeItem(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 531
    :cond_2
    iget-object v2, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-static {v2}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->b(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->getAdjustedCount(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 535
    iget-object v2, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-static {v2}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->b(Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;)Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;

    move-result-object v2

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxAdPlacer;->clearTrailingAds(I)Ljava/util/Collection;

    move-result-object v0

    .line 536
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 538
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    sub-int p2, v1, p2

    sub-int/2addr p1, p2

    .line 544
    iget-object p2, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-virtual {p2, p1, v1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_3

    .line 518
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter$a;->a:Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;

    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/adPlacer/MaxRecyclerAdapter;->notifyDataSetChanged()V

    :goto_3
    return-void
.end method
