.class public Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SimpleItemTouchHelperCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback$OnSelectChangedListener;
    }
.end annotation


# static fields
.field public static final ALPHA_FULL:F = 1.0f


# instance fields
.field private lastActive:Z

.field private final mAdapter:Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperAdapter;

.field private mOnSelectChangedListener:Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback$OnSelectChangedListener;

.field private moveFreely:Z

.field private moveScaleFactor:F


# direct methods
.method public constructor <init>(Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperAdapter;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->moveFreely:Z

    .line 40
    iput-boolean v0, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->lastActive:Z

    const v0, 0x3f8ccccd

    .line 42
    iput v0, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->moveScaleFactor:F

    .line 47
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->mAdapter:Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperAdapter;

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 181
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 182
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 183
    instance-of p1, p2, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperViewHolder;

    if-eqz p1, :cond_0

    .line 185
    check-cast p2, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperViewHolder;

    .line 186
    invoke-interface {p2}, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperViewHolder;->onItemClear()V

    :cond_0
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 2

    .line 83
    iget-boolean p2, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->moveFreely:Z

    const/16 v0, 0xf

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 86
    invoke-static {v0, v1}, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p2, :cond_1

    .line 90
    invoke-static {v0, v1}, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 91
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x3

    if-eqz p2, :cond_3

    .line 92
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 93
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xc

    .line 96
    invoke-static {p1, v1}, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 100
    :cond_2
    invoke-static {v0, v1}, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 105
    :cond_3
    invoke-static {v0, v1}, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->mAdapter:Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperAdapter;

    invoke-interface {v0}, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperAdapter;->isItemViewSwipeEnabled()Z

    move-result v0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p6, v0, :cond_0

    .line 137
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    sub-float/2addr v1, p1

    .line 138
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 139
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p6, v0, :cond_2

    if-eqz p7, :cond_1

    .line 142
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 143
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->moveScaleFactor:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 144
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->moveScaleFactor:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 147
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 148
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 150
    :goto_0
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    goto :goto_1

    .line 152
    :cond_2
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 156
    :goto_1
    iget-object v2, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->mOnSelectChangedListener:Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback$OnSelectChangedListener;

    if-eqz v2, :cond_3

    if-nez p7, :cond_3

    iget-boolean p1, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->lastActive:Z

    if-eqz p1, :cond_3

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 157
    invoke-interface/range {v2 .. v7}, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback$OnSelectChangedListener;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 159
    :cond_3
    iput-boolean p7, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->lastActive:Z

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 111
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->mAdapter:Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperAdapter;->onItemMove(II)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 0

    .line 122
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    .line 123
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 124
    iget-object p1, p4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 166
    instance-of v0, p1, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperViewHolder;

    if-eqz v0, :cond_0

    .line 168
    move-object v0, p1

    check-cast v0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperViewHolder;

    .line 169
    invoke-interface {v0}, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperViewHolder;->onItemSelected()V

    .line 172
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 174
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->mOnSelectChangedListener:Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback$OnSelectChangedListener;

    if-eqz v0, :cond_1

    .line 175
    invoke-interface {v0, p1, p2}, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback$OnSelectChangedListener;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 130
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->mAdapter:Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/ItemTouchHelperAdapter;->onItemDismiss(I)V

    return-void
.end method

.method public setMoveFreely(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->moveFreely:Z

    return-void
.end method

.method public setMoveScaleFactor(F)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->moveScaleFactor:F

    return-void
.end method

.method public setOnSelectChangedListener(Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback$OnSelectChangedListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback;->mOnSelectChangedListener:Lcom/ypx/imagepicker/helper/recyclerviewitemhelper/SimpleItemTouchHelperCallback$OnSelectChangedListener;

    return-void
.end method
