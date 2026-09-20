.class Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemMenuClickListener;
.super Ljava/lang/Object;
.source "SwipeRecyclerView.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemMenuClickListener"
.end annotation


# instance fields
.field private mListener:Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;

.field private mRecyclerView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;)V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemMenuClickListener;->mRecyclerView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    .line 325
    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemMenuClickListener;->mListener:Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;I)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemMenuClickListener;->mRecyclerView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result v0

    sub-int/2addr p2, v0

    if-ltz p2, :cond_0

    .line 332
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemMenuClickListener;->mListener:Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;

    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;->onItemClick(Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;I)V

    :cond_0
    return-void
.end method
