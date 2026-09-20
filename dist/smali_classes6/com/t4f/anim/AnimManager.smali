.class public Lcom/t4f/anim/AnimManager;
.super Ljava/lang/Object;
.source "AnimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4f/anim/AnimManager$InjectMode;,
        Lcom/t4f/anim/AnimManager$AnimStatusCallback;
    }
.end annotation


# static fields
.field private static final ANIM_VIEW_TAG:Ljava/lang/String; = "AnimManager_AnimView"

.field private static final TAG:Ljava/lang/String; = "AnimManager"

.field private static volatile instance:Lcom/t4f/anim/AnimManager;


# instance fields
.field private final currentStatus:Lcom/t4f/anim/model/AnimStatus;

.field private lifecycleManager:Lcom/t4f/anim/AnimLifecycleManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/t4f/anim/model/AnimStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/t4f/anim/model/AnimStatus;-><init>(I)V

    iput-object v0, p0, Lcom/t4f/anim/AnimManager;->currentStatus:Lcom/t4f/anim/model/AnimStatus;

    return-void
.end method

.method static synthetic access$000(Lcom/t4f/anim/AnimManager;)Lcom/t4f/anim/model/AnimStatus;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/t4f/anim/AnimManager;->currentStatus:Lcom/t4f/anim/model/AnimStatus;

    return-object p0
.end method

.method private cleanupLifecycleManager(Landroid/app/Application;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/t4f/anim/AnimManager;->lifecycleManager:Lcom/t4f/anim/AnimLifecycleManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Lcom/t4f/anim/AnimLifecycleManager;->unregisterLifecycleCallbacks(Landroid/app/Application;)V

    const-string p1, "AnimManager"

    const-string v0, "cleanupLifecycleManager: unregistered lifecycle callbacks and cleared manager"

    .line 173
    invoke-static {p1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 174
    iput-object p1, p0, Lcom/t4f/anim/AnimManager;->lifecycleManager:Lcom/t4f/anim/AnimLifecycleManager;

    :cond_0
    return-void
.end method

.method private createAnimView(Landroid/app/Activity;Lcom/t4f/anim/view/IAnimView$MediaType;)Landroid/view/View;
    .locals 1

    .line 186
    sget-object v0, Lcom/t4f/anim/AnimManager$InjectMode;->PREPARE:Lcom/t4f/anim/AnimManager$InjectMode;

    invoke-direct {p0, p1, p2, v0}, Lcom/t4f/anim/AnimManager;->createAnimView(Landroid/app/Activity;Lcom/t4f/anim/view/IAnimView$MediaType;Lcom/t4f/anim/AnimManager$InjectMode;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private createAnimView(Landroid/app/Activity;Lcom/t4f/anim/view/IAnimView$MediaType;Lcom/t4f/anim/AnimManager$InjectMode;)Landroid/view/View;
    .locals 10

    const-string v0, "AnimManager"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 203
    :try_start_0
    invoke-static {p1, p2}, Lcom/t4f/anim/view/AnimViewFactory;->create(Landroid/app/Activity;Lcom/t4f/anim/view/IAnimView$MediaType;)Lcom/t4f/anim/view/IAnimView;

    move-result-object v6

    if-nez v6, :cond_1

    return-object v1

    :cond_1
    const-string v7, "createAnimView: created IAnimView=%s for type=%s"

    new-array v8, v3, [Ljava/lang/Object;

    .line 207
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v7, p0, Lcom/t4f/anim/AnimManager;->currentStatus:Lcom/t4f/anim/model/AnimStatus;

    invoke-virtual {v7, v5}, Lcom/t4f/anim/model/AnimStatus;->setStatus(I)V

    .line 211
    new-instance v7, Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda0;-><init>(Lcom/t4f/anim/AnimManager;)V

    invoke-interface {v6, v7}, Lcom/t4f/anim/view/IAnimView;->setStatusListener(Lcom/t4f/anim/view/IAnimView$StatusListener;)V

    .line 217
    invoke-direct {p0, p1}, Lcom/t4f/anim/AnimManager;->getMediaSource(Landroid/app/Activity;)Lcom/t4f/anim/source/MediaSource;

    move-result-object p1

    const-string v7, "createAnimView: resolved source=%s"

    new-array v8, v4, [Ljava/lang/Object;

    .line 218
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 220
    iget-object p1, p0, Lcom/t4f/anim/AnimManager;->currentStatus:Lcom/t4f/anim/model/AnimStatus;

    invoke-virtual {p1, v2}, Lcom/t4f/anim/model/AnimStatus;->setStatus(I)V

    return-object v1

    .line 224
    :cond_2
    sget-object v7, Lcom/t4f/anim/AnimManager$InjectMode;->PREPARE:Lcom/t4f/anim/AnimManager$InjectMode;

    if-ne p3, v7, :cond_3

    .line 226
    invoke-interface {v6, p1}, Lcom/t4f/anim/view/IAnimView;->prepare(Lcom/t4f/anim/source/MediaSource;)V

    goto :goto_0

    .line 227
    :cond_3
    sget-object v7, Lcom/t4f/anim/AnimManager$InjectMode;->FIRST_FRAME:Lcom/t4f/anim/AnimManager$InjectMode;

    if-ne p3, v7, :cond_4

    .line 229
    invoke-interface {v6, p1}, Lcom/t4f/anim/view/IAnimView;->playFirstFrame(Lcom/t4f/anim/source/MediaSource;)V

    goto :goto_0

    .line 232
    :cond_4
    invoke-interface {v6, p1}, Lcom/t4f/anim/view/IAnimView;->play(Lcom/t4f/anim/source/MediaSource;)V

    .line 235
    :goto_0
    invoke-interface {v6}, Lcom/t4f/anim/view/IAnimView;->asView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "IAnimView.asView() returns null, type=%s"

    new-array p3, v4, [Ljava/lang/Object;

    .line 237
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p3, v5

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_5
    return-object p1

    :catch_0
    move-exception p1

    new-array p3, v3, [Ljava/lang/Object;

    .line 242
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v5

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v4

    const-string p2, "Failed to create/prepare anim view, type=%s, error=%s"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    iget-object p1, p0, Lcom/t4f/anim/AnimManager;->currentStatus:Lcom/t4f/anim/model/AnimStatus;

    invoke-virtual {p1, v2}, Lcom/t4f/anim/model/AnimStatus;->setStatus(I)V

    return-object v1
.end method

.method private ensureLifecycleManager()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/t4f/anim/AnimManager;->lifecycleManager:Lcom/t4f/anim/AnimLifecycleManager;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/t4f/anim/AnimLifecycleManager;

    invoke-direct {v0}, Lcom/t4f/anim/AnimLifecycleManager;-><init>()V

    iput-object v0, p0, Lcom/t4f/anim/AnimManager;->lifecycleManager:Lcom/t4f/anim/AnimLifecycleManager;

    const-string v0, "AnimManager"

    const-string v1, "ensureLifecycleManager: created new AnimLifecycleManager"

    .line 162
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getAnimStatusInner(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "AnimManager"

    if-nez p1, :cond_0

    .line 290
    :try_start_0
    invoke-static {}, Lcom/t4f/anim/model/AnimStatus;->defaultStatus()Lcom/t4f/anim/model/AnimStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/t4f/anim/model/AnimStatus;->toJsonString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 292
    :cond_0
    invoke-virtual {p0, p1}, Lcom/t4f/anim/AnimManager;->findAnimView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 295
    invoke-static {}, Lcom/t4f/anim/model/AnimStatus;->defaultStatus()Lcom/t4f/anim/model/AnimStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/t4f/anim/model/AnimStatus;->toJsonString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 298
    :cond_1
    instance-of v3, p1, Lcom/t4f/anim/view/IAnimView;

    if-eqz v3, :cond_2

    .line 299
    check-cast p1, Lcom/t4f/anim/view/IAnimView;

    invoke-interface {p1}, Lcom/t4f/anim/view/IAnimView;->getStatus()Lcom/t4f/anim/model/AnimStatus;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 301
    :goto_1
    invoke-virtual {p1}, Lcom/t4f/anim/model/AnimStatus;->toJsonString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/t4f/anim/model/AnimStatus;->defaultStatus()Lcom/t4f/anim/model/AnimStatus;

    move-result-object p1

    goto :goto_1

    :goto_2
    const-string v3, "getAnimStatusInner: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    .line 302
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 306
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Failed to get anim status: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/t4f/anim/model/AnimStatus;->defaultStatus()Lcom/t4f/anim/model/AnimStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/t4f/anim/model/AnimStatus;->toJsonString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/t4f/anim/AnimManager;
    .locals 2

    .line 72
    sget-object v0, Lcom/t4f/anim/AnimManager;->instance:Lcom/t4f/anim/AnimManager;

    if-nez v0, :cond_1

    .line 73
    const-class v0, Lcom/t4f/anim/AnimManager;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/t4f/anim/AnimManager;->instance:Lcom/t4f/anim/AnimManager;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/t4f/anim/AnimManager;

    invoke-direct {v1}, Lcom/t4f/anim/AnimManager;-><init>()V

    sput-object v1, Lcom/t4f/anim/AnimManager;->instance:Lcom/t4f/anim/AnimManager;

    .line 77
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 79
    :cond_1
    :goto_0
    sget-object v0, Lcom/t4f/anim/AnimManager;->instance:Lcom/t4f/anim/AnimManager;

    return-object v0
.end method

.method private getMediaSource(Landroid/app/Activity;)Lcom/t4f/anim/source/MediaSource;
    .locals 2

    const/4 v0, 0x0

    .line 476
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, ""

    const-string v1, "tgs_loading_media_path"

    .line 477
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    invoke-static {p1}, Lcom/t4f/anim/source/MediaSource;->externalFiles(Ljava/lang/String;)Lcom/t4f/anim/source/MediaSource;

    move-result-object p1

    return-object p1

    .line 484
    :cond_0
    invoke-static {}, Lcom/t4f/config/TgsConfig;->getInstance()Lcom/t4f/config/TgsConfig;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/t4f/config/TgsConfig;->getCustomValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 485
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMediaSource: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimManager"

    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/anim/source/MediaSource;->raw(Ljava/lang/String;)Lcom/t4f/anim/source/MediaSource;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRootLayout(Landroid/app/Activity;)Landroid/widget/FrameLayout;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "AnimManager"

    const-string v0, "getRootLayout: activity is null"

    .line 450
    invoke-static {p1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const v0, 0x1020002

    .line 453
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private releaseAnimViewResources(Landroid/view/View;)V
    .locals 1

    .line 435
    instance-of v0, p1, Lcom/t4f/anim/view/IAnimView;

    if-eqz v0, :cond_0

    .line 436
    check-cast p1, Lcom/t4f/anim/view/IAnimView;

    .line 437
    invoke-interface {p1}, Lcom/t4f/anim/view/IAnimView;->handlePause()V

    .line 438
    invoke-interface {p1}, Lcom/t4f/anim/view/IAnimView;->handleDestroy()V

    const-string p1, "AnimManager"

    const-string v0, "releaseAnimViewResources: paused and destroyed animView"

    .line 439
    invoke-static {p1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateExistingMedia(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/t4f/anim/view/IAnimView$MediaType;)V
    .locals 4

    const-string p1, "AnimManager"

    .line 356
    instance-of v0, p2, Lcom/t4f/anim/view/IAnimView;

    if-eqz v0, :cond_0

    .line 357
    move-object v0, p2

    check-cast v0, Lcom/t4f/anim/view/IAnimView;

    .line 359
    invoke-interface {v0}, Lcom/t4f/anim/view/IAnimView;->getMediaType()Lcom/t4f/anim/view/IAnimView$MediaType;

    move-result-object v1

    if-ne v1, p4, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 361
    :try_start_0
    invoke-static {p3}, Lcom/t4f/anim/source/MediaSource;->asset(Ljava/lang/String;)Lcom/t4f/anim/source/MediaSource;

    move-result-object v3

    .line 363
    invoke-direct {p0, p2}, Lcom/t4f/anim/AnimManager;->releaseAnimViewResources(Landroid/view/View;)V

    .line 364
    invoke-interface {v0, v3}, Lcom/t4f/anim/view/IAnimView;->play(Lcom/t4f/anim/source/MediaSource;)V

    const-string p2, "updateExistingMedia: played new source=%s"

    new-array v0, v1, [Ljava/lang/Object;

    .line 365
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 367
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v0, v2

    aput-object p3, v0, v1

    const/4 p3, 0x2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v0, p3

    const-string p3, "Failed to update media, type=%s, media=%s, error=%s"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    iget-object p1, p0, Lcom/t4f/anim/AnimManager;->currentStatus:Lcom/t4f/anim/model/AnimStatus;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/t4f/anim/model/AnimStatus;->setStatus(I)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method findAnimView(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    .line 462
    invoke-direct {p0, p1}, Lcom/t4f/anim/AnimManager;->getRootLayout(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "AnimManager_AnimView"

    .line 467
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getAnimStatusAsync(Landroid/app/Activity;Lcom/t4f/anim/AnimManager$AnimStatusCallback;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "getAnimStatusAsync: callback is null"

    aput-object v0, p1, p2

    const-string p2, "%s"

    .line 320
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AnimManager"

    invoke-static {p2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/t4f/anim/AnimManager;->currentStatus:Lcom/t4f/anim/model/AnimStatus;

    new-instance v0, Lcom/t4f/anim/AnimManager$1;

    invoke-direct {v0, p0, p2}, Lcom/t4f/anim/AnimManager$1;-><init>(Lcom/t4f/anim/AnimManager;Lcom/t4f/anim/AnimManager$AnimStatusCallback;)V

    iput-object v0, p1, Lcom/t4f/anim/model/AnimStatus;->animStatusChangeListener:Lcom/t4f/anim/model/AnimStatus$AnimStatusChangeListener;

    return-void
.end method

.method public getAnimStatusSync()Ljava/lang/String;
    .locals 6

    const-string v0, "AnimManager"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 339
    :try_start_0
    iget-object v3, p0, Lcom/t4f/anim/AnimManager;->currentStatus:Lcom/t4f/anim/model/AnimStatus;

    invoke-virtual {v3}, Lcom/t4f/anim/model/AnimStatus;->toJsonString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getAnimStatusSync: %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v3, v5, v1

    .line 340
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 343
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "getAnimStatusSync error: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/t4f/anim/model/AnimStatus;->defaultStatus()Lcom/t4f/anim/model/AnimStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4f/anim/model/AnimStatus;->toJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public injectAnimView(Landroid/app/Activity;Lcom/t4f/anim/view/IAnimView$MediaType;)V
    .locals 1

    .line 107
    sget-object v0, Lcom/t4f/anim/AnimManager$InjectMode;->PREPARE:Lcom/t4f/anim/AnimManager$InjectMode;

    invoke-virtual {p0, p1, p2, v0}, Lcom/t4f/anim/AnimManager;->injectAnimView(Landroid/app/Activity;Lcom/t4f/anim/view/IAnimView$MediaType;Lcom/t4f/anim/AnimManager$InjectMode;)V

    return-void
.end method

.method public injectAnimView(Landroid/app/Activity;Lcom/t4f/anim/view/IAnimView$MediaType;Lcom/t4f/anim/AnimManager$InjectMode;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-static {}, Lcom/t4f/config/TgsConfig;->getInstance()Lcom/t4f/config/TgsConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/t4f/config/TgsConfig;->init(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 124
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "injectAnimView:  type=%s, mode=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimManager"

    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/t4f/anim/AnimManager;->ensureLifecycleManager()V

    .line 129
    iget-object v0, p0, Lcom/t4f/anim/AnimManager;->lifecycleManager:Lcom/t4f/anim/AnimLifecycleManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/t4f/anim/AnimLifecycleManager;->registerLifecycleCallbacks(Landroid/app/Application;)V

    .line 132
    :cond_1
    invoke-direct {p0, p1}, Lcom/t4f/anim/AnimManager;->getRootLayout(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_2

    new-array p2, v3, [Ljava/lang/Object;

    .line 134
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "injectAnimView: root layout is null for %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 139
    :cond_2
    invoke-virtual {p0, p1}, Lcom/t4f/anim/AnimManager;->findAnimView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v4, p1, v2

    const-string p2, "AnimView is existing: %s"

    .line 141
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 145
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/t4f/anim/AnimManager;->createAnimView(Landroid/app/Activity;Lcom/t4f/anim/view/IAnimView$MediaType;Lcom/t4f/anim/AnimManager$InjectMode;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    const-string p2, "AnimManager_AnimView"

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p3, 0x11

    const/4 v4, -0x1

    invoke-direct {p2, v4, v4, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-array p2, v3, [Ljava/lang/Object;

    .line 153
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "injectAnimView: view added to root, view=%s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public injectGifImage(Landroid/app/Activity;)V
    .locals 1

    .line 88
    sget-object v0, Lcom/t4f/anim/view/IAnimView$MediaType;->GIF:Lcom/t4f/anim/view/IAnimView$MediaType;

    invoke-virtual {p0, p1, v0}, Lcom/t4f/anim/AnimManager;->injectAnimView(Landroid/app/Activity;Lcom/t4f/anim/view/IAnimView$MediaType;)V

    return-void
.end method

.method public injectVideo(Landroid/app/Activity;)V
    .locals 1

    .line 97
    sget-object v0, Lcom/t4f/anim/view/IAnimView$MediaType;->VIDEO:Lcom/t4f/anim/view/IAnimView$MediaType;

    invoke-virtual {p0, p1, v0}, Lcom/t4f/anim/AnimManager;->injectAnimView(Landroid/app/Activity;Lcom/t4f/anim/view/IAnimView$MediaType;)V

    return-void
.end method

.method synthetic lambda$createAnimView$0$com-t4f-anim-AnimManager(Lcom/t4f/anim/model/AnimStatus;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/t4f/anim/AnimManager;->currentStatus:Lcom/t4f/anim/model/AnimStatus;

    invoke-virtual {p1}, Lcom/t4f/anim/model/AnimStatus;->getStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/t4f/anim/model/AnimStatus;->setStatus(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$removeAnimView$1$com-t4f-anim-AnimManager(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/app/Application;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 415
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const-string p1, "AnimManager"

    const-string p2, "removeAnimView: view removed from root after async release"

    .line 416
    invoke-static {p1, p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    invoke-direct {p0, p3}, Lcom/t4f/anim/AnimManager;->cleanupLifecycleManager(Landroid/app/Application;)V

    return-void
.end method

.method public pauseAnim(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/t4f/anim/AnimManager;->lifecycleManager:Lcom/t4f/anim/AnimLifecycleManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v0, p1}, Lcom/t4f/anim/AnimLifecycleManager;->pauseAnimForActivity(Landroid/app/Activity;)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 277
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/t4f/anim/AnimManager;->lifecycleManager:Lcom/t4f/anim/AnimLifecycleManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "pauseAnim: skip, activity=%s, lifecycleManager=%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AnimManager"

    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playAnim(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "playAnim: requested"

    const-string v1, "AnimManager"

    .line 258
    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, p1}, Lcom/t4f/anim/AnimManager;->findAnimView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "playAnim: animView not found"

    .line 261
    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 265
    :cond_1
    instance-of v0, p1, Lcom/t4f/anim/view/IAnimView;

    if-eqz v0, :cond_2

    .line 266
    check-cast p1, Lcom/t4f/anim/view/IAnimView;

    invoke-interface {p1}, Lcom/t4f/anim/view/IAnimView;->forcePlay()V

    const-string p1, "playAnim: forcePlay called"

    .line 267
    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public removeAnimView(Landroid/app/Activity;)V
    .locals 5

    .line 389
    invoke-virtual {p0, p1}, Lcom/t4f/anim/AnimManager;->findAnimView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    const-string v1, "AnimManager"

    if-nez v0, :cond_0

    const-string p1, "removeAnimView: animView not found"

    .line 391
    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 394
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "removeAnimView: removing view=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 399
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 401
    invoke-direct {p0, p1}, Lcom/t4f/anim/AnimManager;->getRootLayout(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v3

    .line 402
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    .line 405
    instance-of v4, v0, Lcom/t4f/anim/view/IAnimView;

    if-eqz v4, :cond_1

    .line 406
    move-object v1, v0

    check-cast v1, Lcom/t4f/anim/view/IAnimView;

    .line 408
    invoke-interface {v1, v2}, Lcom/t4f/anim/view/IAnimView;->setStatusListener(Lcom/t4f/anim/view/IAnimView$StatusListener;)V

    .line 409
    invoke-interface {v1}, Lcom/t4f/anim/view/IAnimView;->handlePause()V

    const/4 v2, 0x4

    .line 410
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 413
    new-instance v2, Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v3, v0, p1}, Lcom/t4f/anim/AnimManager$$ExternalSyntheticLambda1;-><init>(Lcom/t4f/anim/AnimManager;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/app/Application;)V

    invoke-interface {v1, v2}, Lcom/t4f/anim/view/IAnimView;->handleDestroyAsync(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 423
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const-string v0, "removeAnimView: view removed from root"

    .line 424
    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_2
    invoke-direct {p0, p1}, Lcom/t4f/anim/AnimManager;->cleanupLifecycleManager(Landroid/app/Application;)V

    :goto_0
    return-void
.end method

.method public updateMediaConfig(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 497
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 498
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "tgs_loading_media_path"

    .line 499
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 500
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
