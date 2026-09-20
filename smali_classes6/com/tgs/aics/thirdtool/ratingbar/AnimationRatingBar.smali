.class public Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;
.super Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;
.source "AnimationRatingBar.java"


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mRunnable:Ljava/lang/Runnable;

.field protected mRunnableToken:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;->mRunnableToken:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;->init()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;->mRunnableToken:Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;->init()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;->mRunnableToken:Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected postRunnable(Ljava/lang/Runnable;J)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;->mHandler:Landroid/os/Handler;

    .line 41
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 42
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/tgs/aics/thirdtool/ratingbar/AnimationRatingBar;->mRunnableToken:Ljava/lang/String;

    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method
