.class public Lcom/t4f/anim/view/GifImageView;
.super Landroid/widget/ImageView;
.source "GifImageView.java"

# interfaces
.implements Lcom/t4f/anim/view/IAnimView;


# static fields
.field private static final TAG:Ljava/lang/String; = "GifImageView"


# instance fields
.field private final animStatus:Lcom/t4f/anim/model/AnimStatus;

.field private currentAssetName:Ljava/lang/String;

.field private inFirstFrameMode:Z

.field private isPlaying:Z

.field private pausedByLifecycle:Z

.field private statusListener:Lcom/t4f/anim/view/IAnimView$StatusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/t4f/anim/view/GifImageView;->inFirstFrameMode:Z

    .line 21
    iput-boolean p1, p0, Lcom/t4f/anim/view/GifImageView;->pausedByLifecycle:Z

    .line 23
    iput-boolean p1, p0, Lcom/t4f/anim/view/GifImageView;->isPlaying:Z

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/t4f/anim/view/GifImageView;->currentAssetName:Ljava/lang/String;

    .line 27
    new-instance v1, Lcom/t4f/anim/model/AnimStatus;

    invoke-direct {v1, p1}, Lcom/t4f/anim/model/AnimStatus;-><init>(I)V

    iput-object v1, p0, Lcom/t4f/anim/view/GifImageView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    .line 29
    iput-object v0, p0, Lcom/t4f/anim/view/GifImageView;->statusListener:Lcom/t4f/anim/view/IAnimView$StatusListener;

    .line 33
    invoke-direct {p0}, Lcom/t4f/anim/view/GifImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/t4f/anim/view/GifImageView;->inFirstFrameMode:Z

    .line 21
    iput-boolean p1, p0, Lcom/t4f/anim/view/GifImageView;->pausedByLifecycle:Z

    .line 23
    iput-boolean p1, p0, Lcom/t4f/anim/view/GifImageView;->isPlaying:Z

    const/4 p2, 0x0

    .line 25
    iput-object p2, p0, Lcom/t4f/anim/view/GifImageView;->currentAssetName:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/t4f/anim/model/AnimStatus;

    invoke-direct {v0, p1}, Lcom/t4f/anim/model/AnimStatus;-><init>(I)V

    iput-object v0, p0, Lcom/t4f/anim/view/GifImageView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    .line 29
    iput-object p2, p0, Lcom/t4f/anim/view/GifImageView;->statusListener:Lcom/t4f/anim/view/IAnimView$StatusListener;

    .line 38
    invoke-direct {p0}, Lcom/t4f/anim/view/GifImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/t4f/anim/view/GifImageView;->inFirstFrameMode:Z

    .line 21
    iput-boolean p1, p0, Lcom/t4f/anim/view/GifImageView;->pausedByLifecycle:Z

    .line 23
    iput-boolean p1, p0, Lcom/t4f/anim/view/GifImageView;->isPlaying:Z

    const/4 p2, 0x0

    .line 25
    iput-object p2, p0, Lcom/t4f/anim/view/GifImageView;->currentAssetName:Ljava/lang/String;

    .line 27
    new-instance p3, Lcom/t4f/anim/model/AnimStatus;

    invoke-direct {p3, p1}, Lcom/t4f/anim/model/AnimStatus;-><init>(I)V

    iput-object p3, p0, Lcom/t4f/anim/view/GifImageView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    .line 29
    iput-object p2, p0, Lcom/t4f/anim/view/GifImageView;->statusListener:Lcom/t4f/anim/view/IAnimView$StatusListener;

    .line 43
    invoke-direct {p0}, Lcom/t4f/anim/view/GifImageView;->init()V

    return-void
.end method

.method private enterFirstFrameMode()V
    .locals 2

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->isPlaying:Z

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->inFirstFrameMode:Z

    const-string v0, "GifImageView"

    const-string v1, "Stub enter first frame mode (no-op)"

    .line 123
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private exitFirstFrameMode()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->inFirstFrameMode:Z

    return-void
.end method

.method private init()V
    .locals 1

    .line 50
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/t4f/anim/view/GifImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private notifyStatusChanged()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/t4f/anim/view/GifImageView;->statusListener:Lcom/t4f/anim/view/IAnimView$StatusListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/t4f/anim/view/GifImageView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    invoke-interface {v0, v1}, Lcom/t4f/anim/view/IAnimView$StatusListener;->onStatusChanged(Lcom/t4f/anim/model/AnimStatus;)V

    :cond_0
    return-void
.end method

.method private updateStatus(I)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/t4f/anim/view/GifImageView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    invoke-virtual {v0}, Lcom/t4f/anim/model/AnimStatus;->getStatus()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/t4f/anim/view/GifImageView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    invoke-virtual {v1, p1}, Lcom/t4f/anim/model/AnimStatus;->setStatus(I)V

    .line 71
    iget-object p1, p0, Lcom/t4f/anim/view/GifImageView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    invoke-virtual {p1}, Lcom/t4f/anim/model/AnimStatus;->getStatus()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/t4f/anim/view/GifImageView;->notifyStatusChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public asView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public forcePlay()V
    .locals 2

    .line 138
    invoke-direct {p0}, Lcom/t4f/anim/view/GifImageView;->exitFirstFrameMode()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->pausedByLifecycle:Z

    .line 140
    iget-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->isPlaying:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->isPlaying:Z

    const/4 v0, 0x2

    .line 142
    invoke-direct {p0, v0}, Lcom/t4f/anim/view/GifImageView;->updateStatus(I)V

    const-string v0, "GifImageView"

    const-string v1, "Stub forcePlay GIF (no-op)"

    .line 143
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getMediaType()Lcom/t4f/anim/view/IAnimView$MediaType;
    .locals 1

    .line 208
    sget-object v0, Lcom/t4f/anim/view/IAnimView$MediaType;->GIF:Lcom/t4f/anim/view/IAnimView$MediaType;

    return-object v0
.end method

.method public getStatus()Lcom/t4f/anim/model/AnimStatus;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/t4f/anim/view/GifImageView;->animStatus:Lcom/t4f/anim/model/AnimStatus;

    return-object v0
.end method

.method public handleDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0}, Lcom/t4f/anim/view/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 188
    iput-boolean v1, p0, Lcom/t4f/anim/view/GifImageView;->isPlaying:Z

    .line 189
    iput-object v0, p0, Lcom/t4f/anim/view/GifImageView;->currentAssetName:Ljava/lang/String;

    const/4 v0, 0x3

    .line 191
    invoke-direct {p0, v0}, Lcom/t4f/anim/view/GifImageView;->updateStatus(I)V

    const-string v0, "GifImageView"

    const-string v1, "Stub destroy GIF resources (no-op)"

    .line 192
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleDestroyAsync(Ljava/lang/Runnable;)V
    .locals 0

    .line 200
    invoke-virtual {p0}, Lcom/t4f/anim/view/GifImageView;->handleDestroy()V

    if-eqz p1, :cond_0

    .line 202
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public handlePause()V
    .locals 2

    .line 174
    iget-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->isPlaying:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->isPlaying:Z

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->pausedByLifecycle:Z

    const/4 v0, 0x3

    .line 177
    invoke-direct {p0, v0}, Lcom/t4f/anim/view/GifImageView;->updateStatus(I)V

    const-string v0, "GifImageView"

    const-string v1, "Stub pause GIF (no-op)"

    .line 178
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleResume()V
    .locals 2

    .line 153
    iget-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->inFirstFrameMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->pausedByLifecycle:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->pausedByLifecycle:Z

    .line 161
    iget-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->isPlaying:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->isPlaying:Z

    const/4 v0, 0x2

    .line 163
    invoke-direct {p0, v0}, Lcom/t4f/anim/view/GifImageView;->updateStatus(I)V

    const-string v0, "GifImageView"

    const-string v1, "Stub resume GIF (no-op)"

    .line 164
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public play(Lcom/t4f/anim/source/MediaSource;)V
    .locals 3

    .line 84
    invoke-virtual {p1}, Lcom/t4f/anim/source/MediaSource;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4f/anim/view/GifImageView;->currentAssetName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->isPlaying:Z

    const/4 v1, 0x0

    .line 86
    iput-boolean v1, p0, Lcom/t4f/anim/view/GifImageView;->inFirstFrameMode:Z

    const/4 v2, 0x2

    .line 88
    invoke-direct {p0, v2}, Lcom/t4f/anim/view/GifImageView;->updateStatus(I)V

    new-array v0, v0, [Ljava/lang/Object;

    .line 89
    invoke-virtual {p1}, Lcom/t4f/anim/source/MediaSource;->getValue()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Stub play GIF asset \'%s\' (no-op)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GifImageView"

    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playFirstFrame(Lcom/t4f/anim/source/MediaSource;)V
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/t4f/anim/view/GifImageView;->play(Lcom/t4f/anim/source/MediaSource;)V

    .line 98
    invoke-direct {p0}, Lcom/t4f/anim/view/GifImageView;->enterFirstFrameMode()V

    const/4 p1, 0x0

    .line 99
    invoke-direct {p0, p1}, Lcom/t4f/anim/view/GifImageView;->updateStatus(I)V

    return-void
.end method

.method public prepare(Lcom/t4f/anim/source/MediaSource;)V
    .locals 2

    .line 108
    invoke-virtual {p1}, Lcom/t4f/anim/source/MediaSource;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4f/anim/view/GifImageView;->currentAssetName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/t4f/anim/view/GifImageView;->isPlaying:Z

    const/4 v1, 0x1

    .line 110
    iput-boolean v1, p0, Lcom/t4f/anim/view/GifImageView;->inFirstFrameMode:Z

    .line 112
    invoke-direct {p0, v0}, Lcom/t4f/anim/view/GifImageView;->updateStatus(I)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 113
    invoke-virtual {p1}, Lcom/t4f/anim/source/MediaSource;->getValue()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Stub prepare GIF asset \'%s\' (no-op)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GifImageView"

    invoke-static {v0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStatusListener(Lcom/t4f/anim/view/IAnimView$StatusListener;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/t4f/anim/view/GifImageView;->statusListener:Lcom/t4f/anim/view/IAnimView$StatusListener;

    return-void
.end method
