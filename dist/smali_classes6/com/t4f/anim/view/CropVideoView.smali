.class public Lcom/t4f/anim/view/CropVideoView;
.super Landroid/widget/VideoView;
.source "CropVideoView.java"

# interfaces
.implements Lcom/t4f/anim/view/IAnimView;


# static fields
.field private static final TAG:Ljava/lang/String; = "CropVideoView"


# instance fields
.field private final animStatus:Lcom/t4f/anim/model/AnimStatus;

.field private inFirstFrameMode:Z

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private pausedByLifecycle:Z

.field private shouldShowFirstFrameOnly:Z

.field private statusListener:Lcom/t4f/anim/view/IAnimView$StatusListener;

.field private final videoLoader:Lcom/t4f/anim/loader/VideoContentLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/t4f/anim/view/CropVideoView;->shouldShowFirstFrameOnly:Z

    .line 28
    iput-boolean p1, p0, Lcom/t4f/anim/view/CropVideoView;->inFirstFrameMode:Z

    .line 30
    iput-boolean p1, p0, Lcom/t4f/anim/view/CropVideoView;->pausedByLifecycle:Z

    .line 31
    new-instance v0, Lcom/t4f/anim/loader/DefaultVideoContentLoader;

    invoke-direct {v0}, Lcom/t4f/anim/loader/DefaultVideoContentLoader;-><init>()V

    iput-object v0, p0, Lcom/t4f/anim/view/CropVideoView;->videoLoader:Lcom/t4f/anim/loader/VideoContentLoader;

    .line 33
    new-instance v0, Lcom/t4f/anim/model/AnimStatus;

    invoke-direct {v0, p1}, Lcom/t4f/anim/model/AnimStatus;-><init>(I)V

    iput-object v0, p0, Lcom/t4f/anim/view/CropVideoView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/t4f/anim/view/CropVideoView;->statusListener:Lcom/t4f/anim/view/IAnimView$StatusListener;

    .line 39
    invoke-direct {p0}, Lcom/t4f/anim/view/CropVideoView;->initVideoView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/t4f/anim/view/CropVideoView;->shouldShowFirstFrameOnly:Z

    .line 28
    iput-boolean p1, p0, Lcom/t4f/anim/view/CropVideoView;->inFirstFrameMode:Z

    .line 30
    iput-boolean p1, p0, Lcom/t4f/anim/view/CropVideoView;->pausedByLifecycle:Z

    .line 31
    new-instance p2, Lcom/t4f/anim/loader/DefaultVideoContentLoader;

    invoke-direct {p2}, Lcom/t4f/anim/loader/DefaultVideoContentLoader;-><init>()V

    iput-object p2, p0, Lcom/t4f/anim/view/CropVideoView;->videoLoader:Lcom/t4f/anim/loader/VideoContentLoader;

    .line 33
    new-instance p2, Lcom/t4f/anim/model/AnimStatus;

    invoke-direct {p2, p1}, Lcom/t4f/anim/model/AnimStatus;-><init>(I)V

    iput-object p2, p0, Lcom/t4f/anim/view/CropVideoView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/t4f/anim/view/CropVideoView;->statusListener:Lcom/t4f/anim/view/IAnimView$StatusListener;

    .line 44
    invoke-direct {p0}, Lcom/t4f/anim/view/CropVideoView;->initVideoView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/t4f/anim/view/CropVideoView;->shouldShowFirstFrameOnly:Z

    .line 28
    iput-boolean p1, p0, Lcom/t4f/anim/view/CropVideoView;->inFirstFrameMode:Z

    .line 30
    iput-boolean p1, p0, Lcom/t4f/anim/view/CropVideoView;->pausedByLifecycle:Z

    .line 31
    new-instance p2, Lcom/t4f/anim/loader/DefaultVideoContentLoader;

    invoke-direct {p2}, Lcom/t4f/anim/loader/DefaultVideoContentLoader;-><init>()V

    iput-object p2, p0, Lcom/t4f/anim/view/CropVideoView;->videoLoader:Lcom/t4f/anim/loader/VideoContentLoader;

    .line 33
    new-instance p2, Lcom/t4f/anim/model/AnimStatus;

    invoke-direct {p2, p1}, Lcom/t4f/anim/model/AnimStatus;-><init>(I)V

    iput-object p2, p0, Lcom/t4f/anim/view/CropVideoView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/t4f/anim/view/CropVideoView;->statusListener:Lcom/t4f/anim/view/IAnimView$StatusListener;

    .line 49
    invoke-direct {p0}, Lcom/t4f/anim/view/CropVideoView;->initVideoView()V

    return-void
.end method

.method private exitFirstFrameMode()V
    .locals 2

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/t4f/anim/view/CropVideoView;->inFirstFrameMode:Z

    const-string v0, "CropVideoView"

    const-string v1, "exitFirstFrameMode"

    .line 215
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initVideoView()V
    .locals 2

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcom/t4f/anim/view/CropVideoView;->setAudioFocusRequest(I)V

    :cond_0
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lcom/t4f/anim/view/CropVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 63
    new-instance v0, Lcom/t4f/anim/view/CropVideoView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/t4f/anim/view/CropVideoView$$ExternalSyntheticLambda1;-><init>(Lcom/t4f/anim/view/CropVideoView;)V

    invoke-virtual {p0, v0}, Lcom/t4f/anim/view/CropVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 71
    new-instance v0, Lcom/t4f/anim/view/CropVideoView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/t4f/anim/view/CropVideoView$$ExternalSyntheticLambda2;-><init>(Lcom/t4f/anim/view/CropVideoView;)V

    invoke-virtual {p0, v0}, Lcom/t4f/anim/view/CropVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method private notifyStatusChanged()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/t4f/anim/view/CropVideoView;->statusListener:Lcom/t4f/anim/view/IAnimView$StatusListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lcom/t4f/anim/view/CropVideoView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    invoke-virtual {v1}, Lcom/t4f/anim/model/AnimStatus;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "notifyStatusChanged: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CropVideoView"

    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/t4f/anim/view/CropVideoView;->statusListener:Lcom/t4f/anim/view/IAnimView$StatusListener;

    iget-object v1, p0, Lcom/t4f/anim/view/CropVideoView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    invoke-interface {v0, v1}, Lcom/t4f/anim/view/IAnimView$StatusListener;->onStatusChanged(Lcom/t4f/anim/model/AnimStatus;)V

    :cond_0
    return-void
.end method

.method private updateStatus(I)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/t4f/anim/view/CropVideoView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    invoke-virtual {v0}, Lcom/t4f/anim/model/AnimStatus;->getStatus()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/t4f/anim/view/CropVideoView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    invoke-virtual {v1, p1}, Lcom/t4f/anim/model/AnimStatus;->setStatus(I)V

    .line 127
    iget-object p1, p0, Lcom/t4f/anim/view/CropVideoView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    invoke-virtual {p1}, Lcom/t4f/anim/model/AnimStatus;->getStatus()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/t4f/anim/view/CropVideoView;->notifyStatusChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public asView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public forcePlay()V
    .locals 5

    const-string v0, "CropVideoView"

    .line 223
    invoke-direct {p0}, Lcom/t4f/anim/view/CropVideoView;->exitFirstFrameMode()V

    const/4 v1, 0x0

    .line 224
    iput-boolean v1, p0, Lcom/t4f/anim/view/CropVideoView;->pausedByLifecycle:Z

    .line 226
    :try_start_0
    invoke-virtual {p0}, Lcom/t4f/anim/view/CropVideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/t4f/anim/view/CropVideoView;->start()V

    const/4 v2, 0x2

    .line 228
    invoke-direct {p0, v2}, Lcom/t4f/anim/view/CropVideoView;->updateStatus(I)V

    const-string v2, "forcePlay: start called, status=PLAYING"

    .line 229
    invoke-static {v0, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 232
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "Failed to forcePlay video: %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getMediaType()Lcom/t4f/anim/view/IAnimView$MediaType;
    .locals 1

    .line 372
    sget-object v0, Lcom/t4f/anim/view/IAnimView$MediaType;->VIDEO:Lcom/t4f/anim/view/IAnimView$MediaType;

    return-object v0
.end method

.method public getStatus()Lcom/t4f/anim/model/AnimStatus;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/t4f/anim/view/CropVideoView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    return-object v0
.end method

.method public handleDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0, v0}, Lcom/t4f/anim/view/CropVideoView;->handleDestroyAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleDestroyAsync(Ljava/lang/Runnable;)V
    .locals 5

    const-string v0, "CropVideoView"

    .line 332
    :try_start_0
    invoke-virtual {p0}, Lcom/t4f/anim/view/CropVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/t4f/anim/view/CropVideoView;->pause()V

    :cond_0
    const/4 v1, 0x0

    .line 337
    invoke-virtual {p0, v1}, Lcom/t4f/anim/view/CropVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 338
    invoke-virtual {p0, v1}, Lcom/t4f/anim/view/CropVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 339
    invoke-virtual {p0, v1}, Lcom/t4f/anim/view/CropVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const/4 v1, 0x3

    .line 342
    invoke-direct {p0, v1}, Lcom/t4f/anim/view/CropVideoView;->updateStatus(I)V

    .line 345
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/t4f/anim/view/CropVideoView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/t4f/anim/view/CropVideoView$$ExternalSyntheticLambda0;-><init>(Lcom/t4f/anim/view/CropVideoView;Ljava/lang/Runnable;)V

    const-string v3, "CropVideoView-Release"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v1, "handleDestroyAsync: release scheduled in background, status=PAUSED"

    .line 359
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 361
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Failed to handle destroy: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_1

    .line 365
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public handlePause()V
    .locals 5

    const-string v0, "CropVideoView"

    const/4 v1, 0x1

    .line 298
    :try_start_0
    invoke-virtual {p0}, Lcom/t4f/anim/view/CropVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/t4f/anim/view/CropVideoView;->pause()V

    .line 300
    iput-boolean v1, p0, Lcom/t4f/anim/view/CropVideoView;->pausedByLifecycle:Z

    const/4 v2, 0x3

    .line 301
    invoke-direct {p0, v2}, Lcom/t4f/anim/view/CropVideoView;->updateStatus(I)V

    const-string v2, "handlePause: pause called, status=PAUSED"

    .line 302
    invoke-static {v0, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 305
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "Failed to pause video: %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public handleResume()V
    .locals 5

    .line 269
    iget-boolean v0, p0, Lcom/t4f/anim/view/CropVideoView;->inFirstFrameMode:Z

    const-string v1, "CropVideoView"

    if-eqz v0, :cond_0

    const-string v0, "handleResume: inFirstFrameMode, skip auto start"

    .line 270
    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 274
    :cond_0
    iget-boolean v0, p0, Lcom/t4f/anim/view/CropVideoView;->pausedByLifecycle:Z

    if-nez v0, :cond_1

    const-string v0, "handleResume: not paused by lifecycle, skip auto start"

    .line 275
    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/t4f/anim/view/CropVideoView;->pausedByLifecycle:Z

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lcom/t4f/anim/view/CropVideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    .line 281
    invoke-virtual {p0}, Lcom/t4f/anim/view/CropVideoView;->start()V

    const/4 v2, 0x2

    .line 282
    invoke-direct {p0, v2}, Lcom/t4f/anim/view/CropVideoView;->updateStatus(I)V

    const-string v2, "handleResume: start called, status=PLAYING"

    .line 283
    invoke-static {v1, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 286
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "Failed to resume video: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$handleDestroyAsync$2$com-t4f-anim-view-CropVideoView(Ljava/lang/Runnable;)V
    .locals 5

    const-string v0, "CropVideoView"

    .line 347
    :try_start_0
    invoke-virtual {p0}, Lcom/t4f/anim/view/CropVideoView;->stopPlayback()V

    const-string v1, "handleDestroyAsync: stopPlayback completed in background thread"

    .line 348
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 354
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "Failed to release video in background: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 350
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 354
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz p1, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    :cond_1
    throw v0
.end method

.method synthetic lambda$initVideoView$0$com-t4f-anim-view-CropVideoView(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 64
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const-string p2, "Failed to play video: what=%d, extra=%d"

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CropVideoView"

    invoke-static {p2, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 66
    invoke-direct {p0, p1}, Lcom/t4f/anim/view/CropVideoView;->updateStatus(I)V

    return p3
.end method

.method synthetic lambda$initVideoView$1$com-t4f-anim-view-CropVideoView(Landroid/media/MediaPlayer;)V
    .locals 7

    .line 73
    invoke-virtual {p0}, Lcom/t4f/anim/view/CropVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 84
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/t4f/anim/view/CropVideoView;->setVideoSize(II)V

    .line 85
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    iget-boolean p1, p0, Lcom/t4f/anim/view/CropVideoView;->shouldShowFirstFrameOnly:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    iget-boolean p1, p0, Lcom/t4f/anim/view/CropVideoView;->inFirstFrameMode:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v5, 0x3

    aput-object p1, v2, v5

    const-string p1, "onPrepared: videoSize=%dx%d, firstFrameOnly=%s, inFirstFrameMode=%s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CropVideoView"

    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-boolean p1, p0, Lcom/t4f/anim/view/CropVideoView;->shouldShowFirstFrameOnly:Z

    if-eqz p1, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/t4f/anim/view/CropVideoView;->seekTo(I)V

    const-string p1, "onPrepared: seekTo(1) for first frame"

    .line 92
    invoke-static {v1, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    iput-boolean v4, p0, Lcom/t4f/anim/view/CropVideoView;->shouldShowFirstFrameOnly:Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "Failed to seek first frame: %s"

    new-array v5, v0, [Ljava/lang/Object;

    .line 94
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :goto_1
    iput-boolean v4, p0, Lcom/t4f/anim/view/CropVideoView;->shouldShowFirstFrameOnly:Z

    .line 99
    throw p1

    .line 102
    :cond_0
    :goto_2
    iget-object p1, p0, Lcom/t4f/anim/view/CropVideoView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    invoke-virtual {p1}, Lcom/t4f/anim/model/AnimStatus;->getStatus()I

    move-result p1

    if-eq p1, v3, :cond_1

    .line 103
    invoke-direct {p0, v0}, Lcom/t4f/anim/view/CropVideoView;->updateStatus(I)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 239
    iget v0, p0, Lcom/t4f/anim/view/CropVideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/t4f/anim/view/CropVideoView;->getDefaultSize(II)I

    move-result p1

    .line 240
    iget v0, p0, Lcom/t4f/anim/view/CropVideoView;->mVideoHeight:I

    invoke-static {v0, p2}, Lcom/t4f/anim/view/CropVideoView;->getDefaultSize(II)I

    move-result p2

    .line 242
    iget v0, p0, Lcom/t4f/anim/view/CropVideoView;->mVideoWidth:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/t4f/anim/view/CropVideoView;->mVideoHeight:I

    if-lez v1, :cond_0

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v1

    div-float/2addr p2, v0

    .line 248
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 252
    iget p2, p0, Lcom/t4f/anim/view/CropVideoView;->mVideoWidth:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 253
    iget v0, p0, Lcom/t4f/anim/view/CropVideoView;->mVideoHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 256
    invoke-virtual {p0, p2, p1}, Lcom/t4f/anim/view/CropVideoView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/t4f/anim/view/CropVideoView;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public play(Lcom/t4f/anim/source/MediaSource;)V
    .locals 5

    const-string v0, "CropVideoView"

    .line 138
    invoke-direct {p0}, Lcom/t4f/anim/view/CropVideoView;->exitFirstFrameMode()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 140
    :try_start_0
    invoke-direct {p0, v2}, Lcom/t4f/anim/view/CropVideoView;->updateStatus(I)V

    .line 141
    iget-object v3, p0, Lcom/t4f/anim/view/CropVideoView;->videoLoader:Lcom/t4f/anim/loader/VideoContentLoader;

    invoke-virtual {p0}, Lcom/t4f/anim/view/CropVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Lcom/t4f/anim/loader/VideoContentLoader;->load(Landroid/content/Context;Lcom/t4f/anim/source/MediaSource;)Landroid/net/Uri;

    move-result-object v3

    .line 142
    invoke-virtual {p0, v3}, Lcom/t4f/anim/view/CropVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 143
    invoke-virtual {p0}, Lcom/t4f/anim/view/CropVideoView;->start()V

    .line 145
    invoke-direct {p0, v1}, Lcom/t4f/anim/view/CropVideoView;->updateStatus(I)V

    const-string v3, "play: start called, status=PLAYING"

    .line 146
    invoke-static {v0, v3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, -0x1

    .line 148
    invoke-direct {p0, v4}, Lcom/t4f/anim/view/CropVideoView;->updateStatus(I)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 149
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "Failed to play video: %s, error=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public playFirstFrame(Lcom/t4f/anim/source/MediaSource;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 161
    :try_start_0
    iput-boolean v1, p0, Lcom/t4f/anim/view/CropVideoView;->shouldShowFirstFrameOnly:Z

    .line 163
    iput-boolean v1, p0, Lcom/t4f/anim/view/CropVideoView;->inFirstFrameMode:Z

    .line 165
    invoke-direct {p0, v0}, Lcom/t4f/anim/view/CropVideoView;->updateStatus(I)V

    .line 166
    iget-object v2, p0, Lcom/t4f/anim/view/CropVideoView;->videoLoader:Lcom/t4f/anim/loader/VideoContentLoader;

    invoke-virtual {p0}, Lcom/t4f/anim/view/CropVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/t4f/anim/loader/VideoContentLoader;->load(Landroid/content/Context;Lcom/t4f/anim/source/MediaSource;)Landroid/net/Uri;

    move-result-object v2

    .line 167
    invoke-virtual {p0, v2}, Lcom/t4f/anim/view/CropVideoView;->setVideoURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, -0x1

    .line 169
    invoke-direct {p0, v3}, Lcom/t4f/anim/view/CropVideoView;->updateStatus(I)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 170
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Failed to prepare first frame video: %s, error=%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CropVideoView"

    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public prepare(Lcom/t4f/anim/source/MediaSource;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 182
    :try_start_0
    iput-boolean v1, p0, Lcom/t4f/anim/view/CropVideoView;->inFirstFrameMode:Z

    .line 185
    invoke-direct {p0, v0}, Lcom/t4f/anim/view/CropVideoView;->updateStatus(I)V

    .line 186
    iget-object v2, p0, Lcom/t4f/anim/view/CropVideoView;->videoLoader:Lcom/t4f/anim/loader/VideoContentLoader;

    invoke-virtual {p0}, Lcom/t4f/anim/view/CropVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/t4f/anim/loader/VideoContentLoader;->load(Landroid/content/Context;Lcom/t4f/anim/source/MediaSource;)Landroid/net/Uri;

    move-result-object v2

    .line 187
    invoke-virtual {p0, v2}, Lcom/t4f/anim/view/CropVideoView;->setVideoURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, -0x1

    .line 189
    invoke-direct {p0, v3}, Lcom/t4f/anim/view/CropVideoView;->updateStatus(I)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 190
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Failed to prepare video: %s, error=%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CropVideoView"

    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setStatusListener(Lcom/t4f/anim/view/IAnimView$StatusListener;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/t4f/anim/view/CropVideoView;->statusListener:Lcom/t4f/anim/view/IAnimView$StatusListener;

    return-void
.end method

.method public setVideoSize(II)V
    .locals 4

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget v0, p0, Lcom/t4f/anim/view/CropVideoView;->mVideoWidth:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/t4f/anim/view/CropVideoView;->mVideoHeight:I

    if-ne p2, v0, :cond_1

    return-void

    .line 204
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/t4f/anim/view/CropVideoView;->mVideoWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/t4f/anim/view/CropVideoView;->mVideoHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setVideoSize changed: old=%dx%d, new=%dx%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CropVideoView"

    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iput p1, p0, Lcom/t4f/anim/view/CropVideoView;->mVideoWidth:I

    .line 206
    iput p2, p0, Lcom/t4f/anim/view/CropVideoView;->mVideoHeight:I

    .line 207
    invoke-virtual {p0}, Lcom/t4f/anim/view/CropVideoView;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method
