.class public Lcom/mobgame/gui/view/MobSwipRefreshLayout;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.source "MobSwipRefreshLayout.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private refreshTimeout:J

.field public setColorSchemeResources:Ljava/lang/Object;

.field swipeTimeoutRunner:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x3a98

    .line 13
    iput-wide p1, p0, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->refreshTimeout:J

    .line 37
    new-instance p1, Lcom/mobgame/gui/view/MobSwipRefreshLayout$1;

    invoke-direct {p1, p0}, Lcom/mobgame/gui/view/MobSwipRefreshLayout$1;-><init>(Lcom/mobgame/gui/view/MobSwipRefreshLayout;)V

    iput-object p1, p0, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->swipeTimeoutRunner:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$001(Lcom/mobgame/gui/view/MobSwipRefreshLayout;Z)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method


# virtual methods
.method public setRefreshing(Z)V
    .locals 3

    .line 23
    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    if-eqz p1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->handler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 26
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->handler:Landroid/os/Handler;

    .line 27
    iget-object v0, p0, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->swipeTimeoutRunner:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->refreshTimeout:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 32
    iget-object v0, p0, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->swipeTimeoutRunner:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 33
    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_2
    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->refreshTimeout:J

    return-void
.end method
