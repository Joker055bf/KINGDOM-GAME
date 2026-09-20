.class Lcom/discord/org/webrtc/HardwareVideoEncoder;
.super Ljava/lang/Object;
.source "HardwareVideoEncoder.java"

# interfaces
.implements Lcom/discord/org/webrtc/VideoEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;
    }
.end annotation


# static fields
.field private static final DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US:I = 0x186a0

.field private static final MAX_ENCODER_Q_SIZE:I = 0x2

.field private static final MAX_VIDEO_FRAMERATE:I = 0x1e

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final REQUIRED_RESOLUTION_ALIGNMENT:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HardwareVideoEncoder"


# instance fields
.field private adjustedBitrate:I

.field private automaticResizeOn:Z

.field private final bitrateAdjuster:Lcom/discord/org/webrtc/BitrateAdjuster;

.field private callback:Lcom/discord/org/webrtc/VideoEncoder$Callback;

.field private codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

.field private final codecName:Ljava/lang/String;

.field private final codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

.field private configBuffer:Ljava/nio/ByteBuffer;

.field private final encodeThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

.field private final forcedKeyFrameNs:J

.field private frameSizeBytes:I

.field private height:I

.field private isEncodingStatisticsEnabled:Z

.field private isSemiPlanar:Z

.field private final keyFrameIntervalSec:I

.field private lastKeyFrameNs:J

.field private final mediaCodecWrapperFactory:Lcom/discord/org/webrtc/MediaCodecWrapperFactory;

.field private nextPresentationTimestampUs:J

.field private final outputBuffersBusyCount:Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;

.field private final outputBuilders:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lcom/discord/org/webrtc/EncodedImage$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private outputThread:Ljava/lang/Thread;

.field private final outputThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile running:Z

.field private final sharedContext:Lcom/discord/org/webrtc/EglBase14$Context;

.field private volatile shutdownException:Ljava/lang/Exception;

.field private sliceHeight:I

.field private stride:I

.field private final surfaceColorFormat:Ljava/lang/Integer;

.field private final textureDrawer:Lcom/discord/org/webrtc/GlRectDrawer;

.field private textureEglBase:Lcom/discord/org/webrtc/EglBase14;

.field private textureInputSurface:Landroid/view/Surface;

.field private useSurfaceMode:Z

.field private final videoFrameDrawer:Lcom/discord/org/webrtc/VideoFrameDrawer;

.field private width:I

.field private final yuvColorFormat:Ljava/lang/Integer;


# direct methods
.method public static synthetic $r8$lambda$zzkOvFcE0EU42Xp4kLa_jmj0DXU(Lcom/discord/org/webrtc/HardwareVideoEncoder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->lambda$deliverEncodedImage$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetrunning(Lcom/discord/org/webrtc/HardwareVideoEncoder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->running:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mreleaseCodecOnOutputThread(Lcom/discord/org/webrtc/HardwareVideoEncoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->releaseCodecOnOutputThread()V

    return-void
.end method

.method public constructor <init>(Lcom/discord/org/webrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lcom/discord/org/webrtc/VideoCodecMimeType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;IILcom/discord/org/webrtc/BitrateAdjuster;Lcom/discord/org/webrtc/EglBase14$Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/discord/org/webrtc/MediaCodecWrapperFactory;",
            "Ljava/lang/String;",
            "Lcom/discord/org/webrtc/VideoCodecMimeType;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/discord/org/webrtc/BitrateAdjuster;",
            "Lcom/discord/org/webrtc/EglBase14$Context;",
            ")V"
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lcom/discord/org/webrtc/GlRectDrawer;

    invoke-direct {v0}, Lcom/discord/org/webrtc/GlRectDrawer;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->textureDrawer:Lcom/discord/org/webrtc/GlRectDrawer;

    .line 114
    new-instance v0, Lcom/discord/org/webrtc/VideoFrameDrawer;

    invoke-direct {v0}, Lcom/discord/org/webrtc/VideoFrameDrawer;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->videoFrameDrawer:Lcom/discord/org/webrtc/VideoFrameDrawer;

    .line 117
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    .line 119
    new-instance v0, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    .line 120
    new-instance v1, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v1}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    .line 121
    new-instance v1, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;-><init>(Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount-IA;)V

    iput-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputBuffersBusyCount:Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;

    .line 191
    iput-object p1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->mediaCodecWrapperFactory:Lcom/discord/org/webrtc/MediaCodecWrapperFactory;

    .line 192
    iput-object p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    .line 193
    iput-object p3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

    .line 194
    iput-object p4, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->surfaceColorFormat:Ljava/lang/Integer;

    .line 195
    iput-object p5, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->yuvColorFormat:Ljava/lang/Integer;

    .line 196
    iput-object p6, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->params:Ljava/util/Map;

    .line 197
    iput p7, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->keyFrameIntervalSec:I

    .line 198
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long p2, p8

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->forcedKeyFrameNs:J

    .line 199
    iput-object p9, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/discord/org/webrtc/BitrateAdjuster;

    .line 200
    iput-object p10, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->sharedContext:Lcom/discord/org/webrtc/EglBase14$Context;

    .line 203
    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    return-void
.end method

.method private canUseSurface()Z
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->sharedContext:Lcom/discord/org/webrtc/EglBase14$Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->surfaceColorFormat:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createOutputThread()Ljava/lang/Thread;
    .locals 1

    .line 565
    new-instance v0, Lcom/discord/org/webrtc/HardwareVideoEncoder$1;

    invoke-direct {v0, p0}, Lcom/discord/org/webrtc/HardwareVideoEncoder$1;-><init>(Lcom/discord/org/webrtc/HardwareVideoEncoder;)V

    return-object v0
.end method

.method private encodeByteBuffer(Lcom/discord/org/webrtc/VideoFrame;J)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 11

    const-string v0, "HardwareVideoEncoder"

    .line 438
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/discord/org/webrtc/MediaCodecWrapper;->dequeueInputBuffer(J)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, -0x1

    if-ne v5, v1, :cond_0

    const-string p1, "Dropped frame, no input buffers available"

    .line 450
    invoke-static {v0, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->NO_OUTPUT:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    .line 456
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v1, v5}, Lcom/discord/org/webrtc/MediaCodecWrapper;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 462
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->frameSizeBytes:I

    if-ge v2, v3, :cond_1

    .line 464
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    iget p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->frameSizeBytes:I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Input buffer size: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is smaller than frame size: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-static {v0, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    .line 469
    :cond_1
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->fillInputBuffer(Ljava/nio/ByteBuffer;Lcom/discord/org/webrtc/VideoFrame$Buffer;)V

    .line 472
    :try_start_2
    iget-object v4, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    const/4 v6, 0x0

    iget v7, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->frameSizeBytes:I

    const/4 v10, 0x0

    move-wide v8, p2

    invoke-interface/range {v4 .. v10}, Lcom/discord/org/webrtc/MediaCodecWrapper;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 479
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "queueInputBuffer failed"

    .line 475
    invoke-static {v0, p2, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 477
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    :catch_1
    move-exception p1

    .line 458
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "getInputBuffer with index="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " failed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 459
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    :catch_2
    move-exception p1

    const-string p2, "dequeueInputBuffer failed"

    .line 444
    invoke-static {v0, p2, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1
.end method

.method private encodeTextureBuffer(Lcom/discord/org/webrtc/VideoFrame;J)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 4

    .line 420
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/16 v0, 0x4000

    .line 424
    :try_start_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 426
    new-instance v0, Lcom/discord/org/webrtc/VideoFrame;

    .line 427
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v2

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/discord/org/webrtc/VideoFrame;-><init>(Lcom/discord/org/webrtc/VideoFrame$Buffer;IJ)V

    .line 428
    iget-object p1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->videoFrameDrawer:Lcom/discord/org/webrtc/VideoFrameDrawer;

    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->textureDrawer:Lcom/discord/org/webrtc/GlRectDrawer;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/discord/org/webrtc/VideoFrameDrawer;->drawFrame(Lcom/discord/org/webrtc/VideoFrame;Lcom/discord/org/webrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;)V

    .line 429
    iget-object p1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->textureEglBase:Lcom/discord/org/webrtc/EglBase14;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/discord/org/webrtc/EglBase14;->swapBuffers(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "HardwareVideoEncoder"

    const-string p3, "encodeTexture failed"

    .line 431
    invoke-static {p2, p3, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1
.end method

.method private initEncodeInternal()Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 10

    const-string v0, "HardwareVideoEncoder"

    const-string v1, "Unknown profile level id: "

    const-string v2, "Format: "

    .line 230
    iget-object v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v3}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-wide/16 v3, 0x0

    .line 232
    iput-wide v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->nextPresentationTimestampUs:J

    const-wide/16 v3, -0x1

    .line 233
    iput-wide v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->lastKeyFrameNs:J

    const/4 v3, 0x0

    .line 235
    iput-boolean v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->isEncodingStatisticsEnabled:Z

    .line 238
    :try_start_0
    iget-object v4, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->mediaCodecWrapperFactory:Lcom/discord/org/webrtc/MediaCodecWrapperFactory;

    iget-object v5, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/discord/org/webrtc/MediaCodecWrapperFactory;->createByCodecName(Ljava/lang/String;)Lcom/discord/org/webrtc/MediaCodecWrapper;

    move-result-object v4

    iput-object v4, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 244
    iget-boolean v4, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->surfaceColorFormat:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->yuvColorFormat:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 246
    :try_start_1
    iget-object v5, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

    invoke-virtual {v5}, Lcom/discord/org/webrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->width:I

    iget v7, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->height:I

    invoke-static {v5, v6, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    const-string v6, "bitrate"

    .line 247
    iget v7, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "bitrate-mode"

    const/4 v7, 0x2

    .line 248
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "color-format"

    .line 249
    invoke-virtual {v5, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "frame-rate"

    .line 250
    iget-object v6, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/discord/org/webrtc/BitrateAdjuster;

    .line 251
    invoke-interface {v6}, Lcom/discord/org/webrtc/BitrateAdjuster;->getAdjustedFramerateFps()D

    move-result-wide v6

    double-to-float v6, v6

    .line 250
    invoke-virtual {v5, v4, v6}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    const-string v4, "i-frame-interval"

    .line 252
    iget v6, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->keyFrameIntervalSec:I

    invoke-virtual {v5, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 253
    iget-object v4, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

    sget-object v6, Lcom/discord/org/webrtc/VideoCodecMimeType;->H264:Lcom/discord/org/webrtc/VideoCodecMimeType;

    const/4 v7, 0x1

    if-ne v4, v6, :cond_6

    .line 254
    iget-object v4, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->params:Ljava/util/Map;

    const-string v6, "profile-level-id"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "42e01f"

    if-nez v4, :cond_1

    move-object v4, v6

    .line 258
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x5bab3b7e

    if-eq v8, v9, :cond_3

    const v6, 0x5f19c386

    if-eq v8, v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "640c1f"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v7

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, -0x1

    :goto_2
    if-eqz v3, :cond_5

    if-eq v3, v7, :cond_6

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v1, "profile"

    const/16 v3, 0x8

    .line 260
    invoke-virtual {v5, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "level"

    const/16 v3, 0x100

    .line 261
    invoke-virtual {v5, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 270
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    const-string v3, "c2.google.av1.encoder"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "vendor.google-av1enc.encoding-preset.int32.value"

    .line 272
    invoke-virtual {v5, v1, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 275
    :cond_7
    invoke-virtual {p0}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->isEncodingStatisticsSupported()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "video-encoding-statistics-level"

    .line 276
    invoke-virtual {v5, v1, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 278
    iput-boolean v7, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->isEncodingStatisticsEnabled:Z

    .line 281
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    const/4 v2, 0x0

    invoke-interface {v1, v5, v2, v2, v7}, Lcom/discord/org/webrtc/MediaCodecWrapper;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 285
    iget-boolean v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    if-eqz v1, :cond_9

    .line 286
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->sharedContext:Lcom/discord/org/webrtc/EglBase14$Context;

    sget-object v2, Lcom/discord/org/webrtc/EglBase;->CONFIG_RECORDABLE:[I

    invoke-static {v1, v2}, Lcom/discord/org/webrtc/EglBase;->createEgl14(Lcom/discord/org/webrtc/EglBase14$Context;[I)Lcom/discord/org/webrtc/EglBase14;

    move-result-object v1

    iput-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->textureEglBase:Lcom/discord/org/webrtc/EglBase14;

    .line 287
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v1}, Lcom/discord/org/webrtc/MediaCodecWrapper;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    .line 288
    iget-object v2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->textureEglBase:Lcom/discord/org/webrtc/EglBase14;

    invoke-interface {v2, v1}, Lcom/discord/org/webrtc/EglBase14;->createSurface(Landroid/view/Surface;)V

    .line 289
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->textureEglBase:Lcom/discord/org/webrtc/EglBase14;

    invoke-interface {v1}, Lcom/discord/org/webrtc/EglBase14;->makeCurrent()V

    .line 292
    :cond_9
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v1}, Lcom/discord/org/webrtc/MediaCodecWrapper;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->updateInputFormat(Landroid/media/MediaFormat;)V

    .line 294
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v1}, Lcom/discord/org/webrtc/MediaCodecWrapper;->start()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 301
    iput-boolean v7, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->running:Z

    .line 302
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    .line 303
    invoke-direct {p0}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->createOutputThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 304
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 306
    sget-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    :goto_4
    const-string v2, "initEncodeInternal failed"

    .line 296
    invoke-static {v0, v2, v1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    invoke-virtual {p0}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->release()Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 298
    sget-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object v0

    .line 240
    :catch_2
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create media encoder "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object v0
.end method

.method private synthetic lambda$deliverEncodedImage$0(I)V
    .locals 2

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/discord/org/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "HardwareVideoEncoder"

    const-string v1, "releaseOutputBuffer failed"

    .line 648
    invoke-static {v0, v1, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 650
    :goto_0
    iget-object p1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputBuffersBusyCount:Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;

    invoke-virtual {p1}, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;->decrement()V

    return-void
.end method

.method private releaseCodecOnOutputThread()V
    .locals 3

    .line 673
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "Releasing MediaCodec on output thread"

    const-string v1, "HardwareVideoEncoder"

    .line 674
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputBuffersBusyCount:Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;->waitForZero()V

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v0}, Lcom/discord/org/webrtc/MediaCodecWrapper;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Media encoder stop failed"

    .line 679
    invoke-static {v1, v2, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 682
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v0}, Lcom/discord/org/webrtc/MediaCodecWrapper;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "Media encoder release failed"

    .line 684
    invoke-static {v1, v2, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    iput-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    :goto_1
    const/4 v0, 0x0

    .line 688
    iput-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    const-string v0, "Release on output thread done"

    .line 689
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestKeyFrame(J)V
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 554
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request-sync"

    const/4 v2, 0x0

    .line 555
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 556
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v1, v0}, Lcom/discord/org/webrtc/MediaCodecWrapper;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    iput-wide p1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->lastKeyFrameNs:J

    return-void

    :catch_0
    move-exception p1

    const-string p2, "HardwareVideoEncoder"

    const-string v0, "requestKeyFrame failed"

    .line 558
    invoke-static {p2, v0, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private resetCodec(IIZ)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 532
    invoke-virtual {p0}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->release()Lcom/discord/org/webrtc/VideoCodecStatus;

    move-result-object v0

    .line 533
    sget-object v1, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 536
    :cond_0
    iput p1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->width:I

    .line 537
    iput p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->height:I

    .line 538
    iput-boolean p3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    .line 539
    invoke-direct {p0}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->initEncodeInternal()Lcom/discord/org/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method private shouldForceKeyFrame(J)Z
    .locals 4

    .line 543
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 544
    iget-wide v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->forcedKeyFrameNs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->lastKeyFrameNs:J

    add-long/2addr v2, v0

    cmp-long p1, p1, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateBitrate()Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 3

    .line 693
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 694
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/discord/org/webrtc/BitrateAdjuster;

    invoke-interface {v0}, Lcom/discord/org/webrtc/BitrateAdjuster;->getAdjustedBitrateBps()I

    move-result v0

    iput v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    .line 696
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "video-bitrate"

    .line 697
    iget v2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 698
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v1, v0}, Lcom/discord/org/webrtc/MediaCodecWrapper;->setParameters(Landroid/os/Bundle;)V

    .line 699
    sget-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "HardwareVideoEncoder"

    const-string/jumbo v2, "updateBitrate failed"

    .line 701
    invoke-static {v1, v2, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 702
    sget-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object v0
.end method

.method private updateInputFormat(Landroid/media/MediaFormat;)V
    .locals 6

    .line 712
    iget v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->width:I

    iput v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->stride:I

    .line 713
    iget v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->height:I

    iput v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->sliceHeight:I

    if-eqz p1, :cond_1

    const-string/jumbo v0, "stride"

    .line 716
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->stride:I

    .line 718
    iget v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->width:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->stride:I

    :cond_0
    const-string/jumbo v0, "slice-height"

    .line 721
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->sliceHeight:I

    .line 723
    iget v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->sliceHeight:I

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->yuvColorFormat:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->isSemiPlanar(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->isSemiPlanar:Z

    if-eqz v0, :cond_2

    .line 729
    iget v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->height:I

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 730
    iget v2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->sliceHeight:I

    iget v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->stride:I

    mul-int/2addr v2, v3

    mul-int/2addr v1, v3

    add-int/2addr v2, v1

    iput v2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->frameSizeBytes:I

    goto :goto_0

    .line 732
    :cond_2
    iget v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->stride:I

    add-int/lit8 v2, v1, 0x1

    div-int/lit8 v2, v2, 0x2

    .line 733
    iget v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->sliceHeight:I

    add-int/lit8 v4, v3, 0x1

    div-int/lit8 v4, v4, 0x2

    mul-int/2addr v3, v1

    mul-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 734
    iput v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->frameSizeBytes:I

    .line 737
    :goto_0
    iget v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->stride:I

    iget v2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->sliceHeight:I

    iget v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->frameSizeBytes:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateInputFormat format: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " stride: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " sliceHeight: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " isSemiPlanar: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " frameSizeBytes: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HardwareVideoEncoder"

    invoke-static {v0, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected deliverEncodedImage()V
    .locals 13

    const-string/jumbo v0, "video-qp-average"

    const-string v1, "HardwareVideoEncoder"

    const-string v2, "Prepending config buffer of size "

    const-string v3, "Config frame generated. Offset: "

    .line 578
    iget-object v4, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v4}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 580
    :try_start_0
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 581
    iget-object v5, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    const-wide/32 v6, 0x186a0

    invoke-interface {v5, v4, v6, v7}, Lcom/discord/org/webrtc/MediaCodecWrapper;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    if-gez v5, :cond_1

    const/4 v0, -0x3

    if-ne v5, v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputBuffersBusyCount:Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;->waitForZero()V

    :cond_0
    return-void

    .line 589
    :cond_1
    iget-object v6, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v6, v5}, Lcom/discord/org/webrtc/MediaCodecWrapper;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 590
    iget v7, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 591
    iget v7, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v8, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 593
    iget v7, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4

    .line 594
    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

    sget-object v2, Lcom/discord/org/webrtc/VideoCodecMimeType;->H264:Lcom/discord/org/webrtc/VideoCodecMimeType;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

    sget-object v2, Lcom/discord/org/webrtc/VideoCodecMimeType;->H265:Lcom/discord/org/webrtc/VideoCodecMimeType;

    if-ne v0, v2, :cond_3

    .line 600
    :cond_2
    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 601
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_3
    return-void

    .line 606
    :cond_4
    iget-object v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/discord/org/webrtc/BitrateAdjuster;

    iget v7, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-interface {v3, v7}, Lcom/discord/org/webrtc/BitrateAdjuster;->reportEncodedFrame(I)V

    .line 607
    iget v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    iget-object v7, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/discord/org/webrtc/BitrateAdjuster;

    invoke-interface {v7}, Lcom/discord/org/webrtc/BitrateAdjuster;->getAdjustedBitrateBps()I

    move-result v7

    if-eq v3, v7, :cond_5

    .line 608
    invoke-direct {p0}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->updateBitrate()Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 611
    :cond_5
    iget v3, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v3, v7

    const/4 v8, 0x0

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    move v7, v8

    :goto_0
    if-eqz v7, :cond_7

    const-string v3, "Sync frame generated"

    .line 613
    invoke-static {v1, v3}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_7
    iget-boolean v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->isEncodingStatisticsEnabled:Z

    const/4 v9, 0x0

    if-eqz v3, :cond_8

    .line 619
    iget-object v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v3, v5}, Lcom/discord/org/webrtc/MediaCodecWrapper;->getOutputFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 620
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 621
    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v9

    :goto_1
    if-eqz v7, :cond_9

    .line 627
    iget-object v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_9

    .line 629
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    iget v10, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v11, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to output buffer with offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 628
    invoke-static {v1, v2}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget v2, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 632
    iget-object v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 633
    iget-object v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 634
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 635
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 636
    iget-object v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v3, v5, v8}, Lcom/discord/org/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    goto :goto_2

    .line 639
    :cond_9
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 640
    iget-object v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputBuffersBusyCount:Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;

    invoke-virtual {v3}, Lcom/discord/org/webrtc/HardwareVideoEncoder$BusyCount;->increment()V

    .line 641
    new-instance v9, Lcom/discord/org/webrtc/HardwareVideoEncoder$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v5}, Lcom/discord/org/webrtc/HardwareVideoEncoder$$ExternalSyntheticLambda0;-><init>(Lcom/discord/org/webrtc/HardwareVideoEncoder;I)V

    :goto_2
    if-eqz v7, :cond_a

    .line 654
    sget-object v3, Lcom/discord/org/webrtc/EncodedImage$FrameType;->VideoFrameKey:Lcom/discord/org/webrtc/EncodedImage$FrameType;

    goto :goto_3

    .line 655
    :cond_a
    sget-object v3, Lcom/discord/org/webrtc/EncodedImage$FrameType;->VideoFrameDelta:Lcom/discord/org/webrtc/EncodedImage$FrameType;

    .line 657
    :goto_3
    iget-object v4, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/discord/org/webrtc/EncodedImage$Builder;

    .line 658
    invoke-virtual {v4, v2, v9}, Lcom/discord/org/webrtc/EncodedImage$Builder;->setBuffer(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;)Lcom/discord/org/webrtc/EncodedImage$Builder;

    .line 659
    invoke-virtual {v4, v3}, Lcom/discord/org/webrtc/EncodedImage$Builder;->setFrameType(Lcom/discord/org/webrtc/EncodedImage$FrameType;)Lcom/discord/org/webrtc/EncodedImage$Builder;

    .line 660
    invoke-virtual {v4, v0}, Lcom/discord/org/webrtc/EncodedImage$Builder;->setQp(Ljava/lang/Integer;)Lcom/discord/org/webrtc/EncodedImage$Builder;

    .line 662
    invoke-virtual {v4}, Lcom/discord/org/webrtc/EncodedImage$Builder;->createEncodedImage()Lcom/discord/org/webrtc/EncodedImage;

    move-result-object v0

    .line 664
    iget-object v2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->callback:Lcom/discord/org/webrtc/VideoEncoder$Callback;

    new-instance v3, Lcom/discord/org/webrtc/VideoEncoder$CodecSpecificInfo;

    invoke-direct {v3}, Lcom/discord/org/webrtc/VideoEncoder$CodecSpecificInfo;-><init>()V

    invoke-interface {v2, v0, v3}, Lcom/discord/org/webrtc/VideoEncoder$Callback;->onEncodedFrame(Lcom/discord/org/webrtc/EncodedImage;Lcom/discord/org/webrtc/VideoEncoder$CodecSpecificInfo;)V

    .line 666
    invoke-virtual {v0}, Lcom/discord/org/webrtc/EncodedImage;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v2, "deliverOutput failed"

    .line 668
    invoke-static {v1, v2, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public encode(Lcom/discord/org/webrtc/VideoFrame;Lcom/discord/org/webrtc/VideoEncoder$EncodeInfo;)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 6

    .line 354
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 355
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    if-nez v0, :cond_0

    .line 356
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->UNINITIALIZED:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    .line 359
    :cond_0
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v0

    instance-of v0, v0, Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;

    .line 362
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v1

    .line 363
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v2

    .line 364
    invoke-direct {p0}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->canUseSurface()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v5

    .line 365
    :goto_0
    iget v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->width:I

    if-ne v1, v3, :cond_2

    iget v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->height:I

    if-ne v2, v3, :cond_2

    iget-boolean v3, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    if-eq v0, v3, :cond_3

    .line 366
    :cond_2
    invoke-direct {p0, v1, v2, v0}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->resetCodec(IIZ)Lcom/discord/org/webrtc/VideoCodecStatus;

    move-result-object v0

    .line 367
    sget-object v1, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    if-eq v0, v1, :cond_3

    return-object v0

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    const-string p1, "HardwareVideoEncoder"

    const-string p2, "Dropped frame, encoder queue full"

    .line 374
    invoke-static {p1, p2}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->NO_OUTPUT:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    .line 379
    :cond_4
    iget-object p2, p2, Lcom/discord/org/webrtc/VideoEncoder$EncodeInfo;->frameTypes:[Lcom/discord/org/webrtc/EncodedImage$FrameType;

    array-length v0, p2

    move v1, v5

    :goto_1
    if-ge v5, v0, :cond_6

    aget-object v2, p2, v5

    .line 380
    sget-object v3, Lcom/discord/org/webrtc/EncodedImage$FrameType;->VideoFrameKey:Lcom/discord/org/webrtc/EncodedImage$FrameType;

    if-ne v2, v3, :cond_5

    move v1, v4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    .line 385
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->shouldForceKeyFrame(J)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 386
    :cond_7
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->requestKeyFrame(J)V

    .line 389
    :cond_8
    invoke-static {}, Lcom/discord/org/webrtc/EncodedImage;->builder()Lcom/discord/org/webrtc/EncodedImage$Builder;

    move-result-object p2

    .line 390
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/discord/org/webrtc/EncodedImage$Builder;->setCaptureTimeNs(J)Lcom/discord/org/webrtc/EncodedImage$Builder;

    move-result-object p2

    .line 391
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v0

    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/discord/org/webrtc/EncodedImage$Builder;->setEncodedWidth(I)Lcom/discord/org/webrtc/EncodedImage$Builder;

    move-result-object p2

    .line 392
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v0

    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/discord/org/webrtc/EncodedImage$Builder;->setEncodedHeight(I)Lcom/discord/org/webrtc/EncodedImage$Builder;

    move-result-object p2

    .line 393
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotation()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/discord/org/webrtc/EncodedImage$Builder;->setRotation(I)Lcom/discord/org/webrtc/EncodedImage$Builder;

    move-result-object p2

    .line 394
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 396
    iget-wide v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->nextPresentationTimestampUs:J

    .line 398
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 399
    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    long-to-double v2, v2

    iget-object p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/discord/org/webrtc/BitrateAdjuster;

    invoke-interface {p2}, Lcom/discord/org/webrtc/BitrateAdjuster;->getAdjustedFramerateFps()D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-long v2, v2

    .line 400
    iget-wide v4, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->nextPresentationTimestampUs:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->nextPresentationTimestampUs:J

    .line 403
    iget-boolean p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    if-eqz p2, :cond_9

    .line 404
    invoke-direct {p0, p1, v0, v1}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->encodeTextureBuffer(Lcom/discord/org/webrtc/VideoFrame;J)Lcom/discord/org/webrtc/VideoCodecStatus;

    move-result-object p1

    goto :goto_2

    .line 406
    :cond_9
    invoke-direct {p0, p1, v0, v1}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->encodeByteBuffer(Lcom/discord/org/webrtc/VideoFrame;J)Lcom/discord/org/webrtc/VideoCodecStatus;

    move-result-object p1

    .line 410
    :goto_2
    sget-object p2, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    if-eq p1, p2, :cond_a

    .line 412
    iget-object p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {p2}, Ljava/util/concurrent/BlockingDeque;->pollLast()Ljava/lang/Object;

    :cond_a
    return-object p1
.end method

.method protected fillInputBuffer(Ljava/nio/ByteBuffer;Lcom/discord/org/webrtc/VideoFrame$Buffer;)V
    .locals 25

    move-object/from16 v0, p0

    .line 768
    invoke-interface/range {p2 .. p2}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->toI420()Lcom/discord/org/webrtc/VideoFrame$I420Buffer;

    move-result-object v1

    .line 769
    iget-boolean v2, v0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->isSemiPlanar:Z

    if-eqz v2, :cond_0

    .line 770
    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v4

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v6

    .line 771
    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v8

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getWidth()I

    move-result v10

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result v11

    iget v12, v0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->stride:I

    iget v13, v0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->sliceHeight:I

    move-object/from16 v9, p1

    .line 770
    invoke-static/range {v3 .. v13}, Lcom/discord/org/webrtc/YuvHelper;->I420ToNV12(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V

    goto :goto_0

    .line 774
    :cond_0
    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v15

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v17

    .line 775
    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v19

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getWidth()I

    move-result v21

    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result v22

    iget v2, v0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->stride:I

    iget v3, v0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->sliceHeight:I

    move-object/from16 v20, p1

    move/from16 v23, v2

    move/from16 v24, v3

    .line 774
    invoke-static/range {v14 .. v24}, Lcom/discord/org/webrtc/YuvHelper;->I420Copy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V

    .line 778
    :goto_0
    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->release()V

    return-void
.end method

.method public getEncoderInfo()Lcom/discord/org/webrtc/VideoEncoder$EncoderInfo;
    .locals 3

    .line 525
    new-instance v0, Lcom/discord/org/webrtc/VideoEncoder$EncoderInfo;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/VideoEncoder$EncoderInfo;-><init>(IZ)V

    return-object v0
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    return-object v0
.end method

.method public getScalingSettings()Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;
    .locals 3

    .line 501
    iget-boolean v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->automaticResizeOn:Z

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

    sget-object v1, Lcom/discord/org/webrtc/VideoCodecMimeType;->VP8:Lcom/discord/org/webrtc/VideoCodecMimeType;

    if-ne v0, v1, :cond_0

    .line 505
    new-instance v0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;

    const/16 v1, 0x1d

    const/16 v2, 0x5f

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;-><init>(II)V

    return-object v0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

    sget-object v1, Lcom/discord/org/webrtc/VideoCodecMimeType;->H264:Lcom/discord/org/webrtc/VideoCodecMimeType;

    if-ne v0, v1, :cond_1

    .line 509
    new-instance v0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;

    const/16 v1, 0x18

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;-><init>(II)V

    return-object v0

    .line 512
    :cond_1
    sget-object v0, Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;->OFF:Lcom/discord/org/webrtc/VideoEncoder$ScalingSettings;

    return-object v0
.end method

.method public initEncode(Lcom/discord/org/webrtc/VideoEncoder$Settings;Lcom/discord/org/webrtc/VideoEncoder$Callback;)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 7

    .line 208
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 210
    iput-object p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->callback:Lcom/discord/org/webrtc/VideoEncoder$Callback;

    .line 211
    iget-boolean p2, p1, Lcom/discord/org/webrtc/VideoEncoder$Settings;->automaticResizeOn:Z

    iput-boolean p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->automaticResizeOn:Z

    .line 213
    iget p2, p1, Lcom/discord/org/webrtc/VideoEncoder$Settings;->width:I

    iput p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->width:I

    .line 214
    iget p2, p1, Lcom/discord/org/webrtc/VideoEncoder$Settings;->height:I

    iput p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->height:I

    .line 215
    invoke-direct {p0}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->canUseSurface()Z

    move-result p2

    iput-boolean p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    .line 217
    iget p2, p1, Lcom/discord/org/webrtc/VideoEncoder$Settings;->startBitrate:I

    if-eqz p2, :cond_0

    iget p2, p1, Lcom/discord/org/webrtc/VideoEncoder$Settings;->maxFramerate:I

    if-eqz p2, :cond_0

    .line 218
    iget-object p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/discord/org/webrtc/BitrateAdjuster;

    iget v0, p1, Lcom/discord/org/webrtc/VideoEncoder$Settings;->startBitrate:I

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p1, Lcom/discord/org/webrtc/VideoEncoder$Settings;->maxFramerate:I

    int-to-double v1, v1

    invoke-interface {p2, v0, v1, v2}, Lcom/discord/org/webrtc/BitrateAdjuster;->setTargets(ID)V

    .line 220
    :cond_0
    iget-object p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/discord/org/webrtc/BitrateAdjuster;

    invoke-interface {p2}, Lcom/discord/org/webrtc/BitrateAdjuster;->getAdjustedBitrateBps()I

    move-result p2

    iput p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    .line 222
    iget-object p2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

    iget v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->width:I

    iget v2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->height:I

    iget v3, p1, Lcom/discord/org/webrtc/VideoEncoder$Settings;->maxFramerate:I

    iget p1, p1, Lcom/discord/org/webrtc/VideoEncoder$Settings;->startBitrate:I

    iget-boolean v4, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initEncode name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v5, " type: "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " width: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " height: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " framerate_fps: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " bitrate_kbps: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " surface mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HardwareVideoEncoder"

    invoke-static {p2, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->initEncodeInternal()Lcom/discord/org/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method protected isEncodingStatisticsSupported()Z
    .locals 3

    .line 749
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

    sget-object v1, Lcom/discord/org/webrtc/VideoCodecMimeType;->VP8:Lcom/discord/org/webrtc/VideoCodecMimeType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

    sget-object v1, Lcom/discord/org/webrtc/VideoCodecMimeType;->VP9:Lcom/discord/org/webrtc/VideoCodecMimeType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v0}, Lcom/discord/org/webrtc/MediaCodecWrapper;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 758
    :cond_1
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

    invoke-virtual {v1}, Lcom/discord/org/webrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const-string v1, "encoding-statistics"

    .line 763
    invoke-virtual {v0, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method protected isSemiPlanar(I)Z
    .locals 3

    const/16 v0, 0x13

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const v0, 0x7fa30c00

    if-eq p1, v0, :cond_1

    const v0, 0x7fa30c04

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 790
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported colorFormat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public release()Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 314
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 315
    sget-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->running:Z

    .line 319
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/discord/org/webrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v0

    const-string v1, "HardwareVideoEncoder"

    if-nez v0, :cond_1

    const-string v0, "Media encoder release timeout"

    .line 320
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->TIMEOUT:Lcom/discord/org/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    const-string v0, "Media encoder release exception"

    .line 324
    iget-object v2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    invoke-static {v1, v0, v2}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    sget-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 327
    :cond_2
    sget-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->textureDrawer:Lcom/discord/org/webrtc/GlRectDrawer;

    invoke-virtual {v1}, Lcom/discord/org/webrtc/GlRectDrawer;->release()V

    .line 332
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->videoFrameDrawer:Lcom/discord/org/webrtc/VideoFrameDrawer;

    invoke-virtual {v1}, Lcom/discord/org/webrtc/VideoFrameDrawer;->release()V

    .line 333
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->textureEglBase:Lcom/discord/org/webrtc/EglBase14;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 334
    invoke-interface {v1}, Lcom/discord/org/webrtc/EglBase14;->release()V

    .line 335
    iput-object v2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->textureEglBase:Lcom/discord/org/webrtc/EglBase14;

    .line 337
    :cond_3
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    .line 338
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 339
    iput-object v2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    .line 341
    :cond_4
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 343
    iput-object v2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    .line 344
    iput-object v2, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 347
    iget-object v1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    return-object v0
.end method

.method public setRateAllocation(Lcom/discord/org/webrtc/VideoEncoder$BitrateAllocation;I)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/16 v0, 0x1e

    if-le p2, v0, :cond_0

    move p2, v0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/discord/org/webrtc/BitrateAdjuster;

    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoEncoder$BitrateAllocation;->getSum()I

    move-result p1

    int-to-double v1, p2

    invoke-interface {v0, p1, v1, v2}, Lcom/discord/org/webrtc/BitrateAdjuster;->setTargets(ID)V

    .line 489
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1
.end method

.method public setRates(Lcom/discord/org/webrtc/VideoEncoder$RateControlParameters;)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 4

    .line 494
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 495
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/discord/org/webrtc/BitrateAdjuster;

    iget-object v1, p1, Lcom/discord/org/webrtc/VideoEncoder$RateControlParameters;->bitrate:Lcom/discord/org/webrtc/VideoEncoder$BitrateAllocation;

    invoke-virtual {v1}, Lcom/discord/org/webrtc/VideoEncoder$BitrateAllocation;->getSum()I

    move-result v1

    iget-wide v2, p1, Lcom/discord/org/webrtc/VideoEncoder$RateControlParameters;->framerateFps:D

    invoke-interface {v0, v1, v2, v3}, Lcom/discord/org/webrtc/BitrateAdjuster;->setTargets(ID)V

    .line 496
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1
.end method
