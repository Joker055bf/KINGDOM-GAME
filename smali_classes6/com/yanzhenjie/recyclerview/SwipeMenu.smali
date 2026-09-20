.class public Lcom/yanzhenjie/recyclerview/SwipeMenu;
.super Ljava/lang/Object;
.source "SwipeMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/SwipeMenu$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mMenuLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

.field private mOrientation:I

.field private mSwipeMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yanzhenjie/recyclerview/SwipeMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenu;->mMenuLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenu;->mOrientation:I

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMenuItem(Lcom/yanzhenjie/recyclerview/SwipeMenuItem;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yanzhenjie/recyclerview/SwipeMenuItem;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenu;->mOrientation:I

    return v0
.end method

.method public hasMenuItems()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public removeMenuItem(Lcom/yanzhenjie/recyclerview/SwipeMenuItem;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOpenPercent(F)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenu;->mMenuLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->setOpenPercent(F)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenu;->mOrientation:I

    return-void
.end method

.method public setScrollerDuration(I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenu;->mMenuLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->setScrollerDuration(I)V

    return-void
.end method
