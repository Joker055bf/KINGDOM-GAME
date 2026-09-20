.class public Lcom/discord/org/webrtc/ScreenCapturerAndroid;
.super Ljava/lang/Object;
.source "ScreenCapturerAndroid.java"

# interfaces
.implements Lcom/discord/org/webrtc/VideoCapturer;
.implements Lcom/discord/org/webrtc/VideoSink;


# static fields
.field private static final DISPLAY_FLAGS:I = 0x3

.field private static final VIRTUAL_DISPLAY_DPI:I = 0x190


# instance fields
.field private capturerObserver:Lcom/discord/org/webrtc/CapturerObserver;

.field private height:I

.field private isDisposed:Z

.field protected mediaProjection:Landroid/media/projection/MediaProjection;

.field private final mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

.field private mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private final mediaProjectionPermissionResultData:Landroid/content/Intent;

.field private numCapturedFrames:J

.field private surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

.field private virtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private width:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcapturerObserver(Lcom/discord/org/webrtc/ScreenCapturerAndroid;)Lcom/discord/org/webrtc/CapturerObserver;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->capturerObserver:Lcom/discord/org/webrtc/CapturerObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaProjectionCallback(Lcom/discord/org/webrtc/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection$Callback;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsurfaceTextureHelper(Lcom/discord/org/webrtc/ScreenCapturerAndroid;)Lcom/discord/org/webrtc/SurfaceTextureHelper;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvirtualDisplay(Lcom/discord/org/webrtc/ScreenCapturerAndroid;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputvirtualDisplay(Lcom/discord/org/webrtc/ScreenCapturerAndroid;Landroid/hardware/display/VirtualDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->mediaProjectionPermissionResultData:Landroid/content/Intent;

    .line 67
    iput-object p2, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->isDisposed:Z

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "capturer is disposed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createVirtualDisplay()V
    .locals 10

    .line 200
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;

    const-string v2, "WebRTC_ScreenCapture"

    iget v3, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->width:I

    iget v4, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->height:I

    const/16 v5, 0x190

    const/4 v6, 0x3

    new-instance v7, Landroid/view/Surface;

    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    .line 204
    invoke-virtual {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 203
    invoke-virtual/range {v1 .. v9}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method


# virtual methods
.method public declared-synchronized changeCaptureFormat(III)V
    .locals 0

    monitor-enter p0

    .line 170
    :try_start_0
    invoke-direct {p0}, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->checkNotDisposed()V

    .line 172
    iput p1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->width:I

    .line 173
    iput p2, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->height:I

    .line 175
    iget-object p1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 177
    monitor-exit p0

    return-void

    .line 183
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    .line 184
    invoke-virtual {p1}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/discord/org/webrtc/ScreenCapturerAndroid$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/discord/org/webrtc/ScreenCapturerAndroid$$ExternalSyntheticLambda0;-><init>(Lcom/discord/org/webrtc/ScreenCapturerAndroid;)V

    .line 183
    invoke-static {p1, p2}, Lcom/discord/org/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dispose()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 154
    :try_start_0
    iput-boolean v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->isDisposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMediaProjection()Landroid/media/projection/MediaProjection;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;

    return-object v0
.end method

.method public getNumCapturedFrames()J
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->numCapturedFrames:J

    return-wide v0
.end method

.method public declared-synchronized initialize(Lcom/discord/org/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lcom/discord/org/webrtc/CapturerObserver;)V
    .locals 0

    monitor-enter p0

    .line 86
    :try_start_0
    invoke-direct {p0}, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->checkNotDisposed()V

    if-eqz p3, :cond_1

    .line 91
    iput-object p3, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->capturerObserver:Lcom/discord/org/webrtc/CapturerObserver;

    if-eqz p1, :cond_0

    .line 96
    iput-object p1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    const-string p1, "media_projection"

    .line 98
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager;

    iput-object p1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "surfaceTextureHelper not set."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "capturerObserver not set."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isScreencast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFrame(Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 4

    .line 211
    iget-wide v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->numCapturedFrames:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->numCapturedFrames:J

    .line 212
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->capturerObserver:Lcom/discord/org/webrtc/CapturerObserver;

    invoke-interface {v0, p1}, Lcom/discord/org/webrtc/CapturerObserver;->onFrameCaptured(Lcom/discord/org/webrtc/VideoFrame;)V

    return-void
.end method

.method public declared-synchronized startCapture(III)V
    .locals 0

    monitor-enter p0

    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->checkNotDisposed()V

    .line 109
    iput p1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->width:I

    .line 110
    iput p2, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->height:I

    .line 112
    iget-object p1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    iget-object p2, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->mediaProjectionPermissionResultData:Landroid/content/Intent;

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 116
    iget-object p2, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    iget-object p3, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-virtual {p3}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 118
    invoke-virtual {p0}, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->updateVirtualDisplay()V

    .line 119
    iget-object p1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->capturerObserver:Lcom/discord/org/webrtc/CapturerObserver;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/discord/org/webrtc/CapturerObserver;->onCapturerStarted(Z)V

    .line 120
    iget-object p1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-virtual {p1, p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->startListening(Lcom/discord/org/webrtc/VideoSink;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopCapture()V
    .locals 2

    monitor-enter p0

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->checkNotDisposed()V

    .line 128
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/discord/org/webrtc/ScreenCapturerAndroid$1;

    invoke-direct {v1, p0}, Lcom/discord/org/webrtc/ScreenCapturerAndroid$1;-><init>(Lcom/discord/org/webrtc/ScreenCapturerAndroid;)V

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateVirtualDisplay()V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    iget v1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->width:I

    iget v2, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->setTextureSize(II)V

    .line 192
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget v1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->width:I

    iget v2, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->height:I

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 196
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-virtual {v2}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    goto :goto_1

    .line 193
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->createVirtualDisplay()V

    :goto_1
    return-void
.end method
