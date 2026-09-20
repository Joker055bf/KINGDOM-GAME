.class public Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;
.super Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;
.source "ScaleRatingBar.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0xfL


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getAnimationRunnable(FLcom/tgs/aics/thirdtool/ratingbar/PartialView;ID)Ljava/lang/Runnable;
    .locals 8

    .line 70
    new-instance v7, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar$2;

    move-object v0, v7

    move-object v1, p0

    move v2, p3

    move-wide v3, p4

    move-object v5, p2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar$2;-><init>(Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;IDLcom/tgs/aics/thirdtool/ratingbar/PartialView;F)V

    return-object v7
.end method


# virtual methods
.method protected emptyRatingBar()V
    .locals 8

    .line 32
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;->mRunnableToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;

    .line 38
    iget-object v4, p0, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar$1;

    invoke-direct {v5, p0, v3}, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar$1;-><init>(Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;Lcom/tgs/aics/thirdtool/ratingbar/PartialView;)V

    const-wide/16 v6, 0x5

    add-long/2addr v1, v6

    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected fillRatingBar(F)V
    .locals 8

    .line 50
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;->mRunnableToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;->mPartialViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;

    .line 55
    invoke-virtual {v4}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    float-to-double v1, p1

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    int-to-double v1, v5

    cmpl-double v1, v1, v6

    if-lez v1, :cond_1

    .line 59
    invoke-virtual {v4}, Lcom/tgs/aics/thirdtool/ratingbar/PartialView;->setEmpty()V

    goto :goto_0

    :cond_1
    move-object v2, p0

    move v3, p1

    .line 63
    invoke-direct/range {v2 .. v7}, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;->getAnimationRunnable(FLcom/tgs/aics/thirdtool/ratingbar/PartialView;ID)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;->mRunnable:Ljava/lang/Runnable;

    .line 64
    iget-object v1, p0, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xf

    invoke-virtual {p0, v1, v2, v3}, Lcom/tgs/aics/thirdtool/ratingbar/ScaleRatingBar;->postRunnable(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    return-void
.end method
