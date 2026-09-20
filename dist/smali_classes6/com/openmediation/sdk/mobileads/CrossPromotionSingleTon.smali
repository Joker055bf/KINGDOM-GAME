.class public Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon$CrossPromotion;
    }
.end annotation


# instance fields
.field private isDidInit:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon$CrossPromotion;->access$100()Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;->isDidInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/crosspromotion/sdk/CrossPromotionAds;->init(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;->isDidInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isInit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/mobileads/CrossPromotionSingleTon;->isDidInit:Z

    return v0
.end method
