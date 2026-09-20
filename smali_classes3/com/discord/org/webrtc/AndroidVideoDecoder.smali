.class Lcom/discord/org/webrtc/AndroidVideoDecoder;
.super Ljava/lang/Object;
.source "AndroidVideoDecoder.java"

# interfaces
.implements Lcom/discord/org/webrtc/VideoDecoder;
.implements Lcom/discord/org/webrtc/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/AndroidVideoDecoder$FrameInfo;,
        Lcom/discord/org/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;
    }
.end annotation


# static fields
.field private static final DEQUEUE_INPUT_TIMEOUT_US:I = 0x7a120

.field private static final DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US:I = 0x186a0

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "AndroidVideoDecoder"


# instance fields
.field private callback:Lcom/discord/org/webrtc/VideoDecoder$Callback;

.field private codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

.field private final codecName:Ljava/lang/String;

.field private final codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

.field private colorFormat:I

.field private decoderThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

.field private final dimensionLock:Ljava/lang/Object;

.field private final frameInfos:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lcom/discord/org/webrtc/AndroidVideoDecoder$FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hasDecodedFirstFrame:Z

.field private height:I

.field private keyFrameRequired:Z

.field private final mediaCodecWrapperFactory:Lcom/discord/org/webrtc/MediaCodecWrapperFactory;

.field private outputThread:Ljava/lang/Thread;

.field private outputThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

.field private renderedTextureMetadata:Lcom/discord/org/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

.field private final renderedTextureMetadataLock:Ljava/lang/Object;

.field private volatile running:Z

.field private final sharedContext:Lcom/discord/org/webrtc/EglBase$Context;

.field private volatile shutdownException:Ljava/lang/Exception;

.field private sliceHeight:I

.field private stride:I

.field private surface:Landroid/view/Surface;

.field private surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

.field private width:I


# direct methods
.method static bridge synthetic -$$Nest$fgetrunning(Lcom/discord/org/webrtc/AndroidVideoDecoder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->running:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputoutputThreadChecker(Lcom/discord/org/webrtc/AndroidVideoDecoder;Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseCodecOnOutputThread(Lcom/discord/org/webrtc/AndroidVideoDecoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->releaseCodecOnOutputThread()V

    return-void
.end method

.method constructor <init>(Lcom/discord/org/webrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lcom/discord/org/webrtc/VideoCodecMimeType;ILcom/discord/org/webrtc/EglBase$Context;)V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    .line 122
    invoke-direct {p0, p4}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->isSupportedColorFormat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ctor name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " color format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidVideoDecoder"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->mediaCodecWrapperFactory:Lcom/discord/org/webrtc/MediaCodecWrapperFactory;

    .line 129
    iput-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

    .line 131
    iput p4, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->colorFormat:I

    .line 132
    iput-object p5, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->sharedContext:Lcom/discord/org/webrtc/EglBase$Context;

    .line 133
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    return-void

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported color format: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private copyI420Buffer(Ljava/nio/ByteBuffer;IIII)Lcom/discord/org/webrtc/VideoFrame$Buffer;
    .locals 18

    move-object/from16 v0, p1

    move/from16 v3, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 522
    rem-int/lit8 v1, v3, 0x2

    if-nez v1, :cond_3

    add-int/lit8 v1, v6, 0x1

    .line 532
    div-int/lit8 v9, v1, 0x2

    .line 533
    rem-int/lit8 v10, p3, 0x2

    if-nez v10, :cond_0

    add-int/lit8 v1, v7, 0x1

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    div-int/lit8 v1, v7, 0x2

    :goto_0
    move v11, v1

    .line 535
    div-int/lit8 v12, v3, 0x2

    mul-int v1, v3, v7

    const/4 v2, 0x0

    add-int/2addr v1, v2

    mul-int v4, v3, p3

    add-int/lit8 v13, v4, 0x0

    mul-int v4, v12, v11

    add-int v8, v13, v4

    mul-int v5, v12, p3

    .line 541
    div-int/lit8 v5, v5, 0x2

    add-int v14, v13, v5

    add-int v15, v14, v4

    move-object/from16 v5, p0

    .line 544
    invoke-virtual {v5, v6, v7}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->allocateI420Buffer(II)Lcom/discord/org/webrtc/VideoFrame$I420Buffer;

    move-result-object v16

    .line 546
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 547
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 549
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface/range {v16 .. v16}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v17

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v5, v17

    move/from16 v6, p4

    move/from16 v7, p5

    .line 548
    invoke-virtual/range {v1 .. v7}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 551
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 552
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 553
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v6

    move-object/from16 v2, p0

    move v4, v12

    move v7, v9

    move v8, v11

    invoke-virtual/range {v2 .. v8}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    const/4 v1, 0x1

    if-ne v10, v1, :cond_1

    add-int/lit8 v2, v11, -0x1

    mul-int/2addr v2, v12

    add-int/2addr v13, v2

    .line 556
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 558
    invoke-interface/range {v16 .. v16}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 559
    invoke-interface/range {v16 .. v16}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v3

    mul-int/2addr v3, v11

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 560
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 563
    :cond_1
    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 564
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 565
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v6

    move-object/from16 v2, p0

    move v4, v12

    move v7, v9

    move v8, v11

    invoke-virtual/range {v2 .. v8}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    if-ne v10, v1, :cond_2

    add-int/lit8 v1, v11, -0x1

    mul-int/2addr v12, v1

    add-int/2addr v14, v12

    .line 568
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 570
    invoke-interface/range {v16 .. v16}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 571
    invoke-interface/range {v16 .. v16}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v2

    mul-int/2addr v2, v11

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 572
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    return-object v16

    .line 523
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stride is not divisible by two: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private copyNV12ToI420Buffer(Ljava/nio/ByteBuffer;IIII)Lcom/discord/org/webrtc/VideoFrame$Buffer;
    .locals 8

    .line 516
    new-instance v7, Lcom/discord/org/webrtc/NV12Buffer;

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p4

    move v2, p5

    move v3, p2

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/discord/org/webrtc/NV12Buffer;-><init>(IIIILjava/nio/ByteBuffer;Ljava/lang/Runnable;)V

    .line 517
    invoke-virtual {v7}, Lcom/discord/org/webrtc/NV12Buffer;->toI420()Lcom/discord/org/webrtc/VideoFrame$I420Buffer;

    move-result-object p1

    return-object p1
.end method

.method private createOutputThread()Ljava/lang/Thread;
    .locals 2

    .line 362
    new-instance v0, Lcom/discord/org/webrtc/AndroidVideoDecoder$1;

    const-string v1, "AndroidVideoDecoder.outputThread"

    invoke-direct {v0, p0, v1}, Lcom/discord/org/webrtc/AndroidVideoDecoder$1;-><init>(Lcom/discord/org/webrtc/AndroidVideoDecoder;Ljava/lang/String;)V

    return-object v0
.end method

.method private deliverByteFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    .locals 7

    .line 470
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_0
    iget v5, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->width:I

    .line 472
    iget v6, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->height:I

    .line 473
    iget v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->stride:I

    .line 474
    iget v4, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->sliceHeight:I

    .line 475
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int v2, v5, v6

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    const-string p1, "AndroidVideoDecoder"

    .line 480
    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Insufficient output buffer size: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 484
    :cond_0
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int v2, v1, v6

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    if-ne v4, v6, :cond_1

    if-le v1, v5, :cond_1

    .line 488
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, v6, 0x3

    div-int/2addr v0, v1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v0, p1}, Lcom/discord/org/webrtc/MediaCodecWrapper;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 492
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 493
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 494
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 497
    iget v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->colorFormat:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    move-object v1, p0

    .line 498
    invoke-direct/range {v1 .. v6}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->copyI420Buffer(Ljava/nio/ByteBuffer;IIII)Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v1, p0

    .line 501
    invoke-direct/range {v1 .. v6}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->copyNV12ToI420Buffer(Ljava/nio/ByteBuffer;IIII)Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v0

    .line 503
    :goto_1
    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/discord/org/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 505
    iget-wide p1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    .line 506
    new-instance v1, Lcom/discord/org/webrtc/VideoFrame;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/discord/org/webrtc/VideoFrame;-><init>(Lcom/discord/org/webrtc/VideoFrame$Buffer;IJ)V

    .line 509
    iget-object p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->callback:Lcom/discord/org/webrtc/VideoDecoder$Callback;

    const/4 p2, 0x0

    invoke-interface {p1, v1, p4, p2}, Lcom/discord/org/webrtc/VideoDecoder$Callback;->onDecodedFrame(Lcom/discord/org/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 510
    invoke-virtual {v1}, Lcom/discord/org/webrtc/VideoFrame;->release()V

    return-void

    :catchall_0
    move-exception p1

    .line 475
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private deliverTextureFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    .locals 5

    .line 420
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_0
    iget v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->width:I

    .line 422
    iget v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->height:I

    .line 423
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 425
    iget-object v3, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    monitor-enter v3

    .line 426
    :try_start_1
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lcom/discord/org/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 427
    iget-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {p2, p1, v4}, Lcom/discord/org/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 428
    monitor-exit v3

    return-void

    :cond_0
    if-lez v1, :cond_2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0, v1, v2}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->setTextureSize(II)V

    .line 437
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0, p3}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->setFrameRotation(I)V

    .line 438
    new-instance p3, Lcom/discord/org/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p3, v0, v1, p4}, Lcom/discord/org/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;-><init>(JLjava/lang/Integer;)V

    iput-object p3, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lcom/discord/org/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 439
    iget-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    const/4 p3, 0x1

    invoke-interface {p2, p1, p3}, Lcom/discord/org/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 440
    monitor-exit v3

    return-void

    .line 432
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {p2, p1, v4}, Lcom/discord/org/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 433
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    .line 440
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 423
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private initDecodeInternal(II)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->decoderThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 166
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

    iget v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->colorFormat:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initDecodeInternal name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " color format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidVideoDecoder"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const-string p1, "initDecodeInternal called while the codec is already running"

    .line 170
    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    .line 176
    :cond_0
    iput p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->width:I

    .line 177
    iput p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->height:I

    .line 179
    iput p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->stride:I

    .line 180
    iput p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->sliceHeight:I

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->hasDecodedFirstFrame:Z

    const/4 v2, 0x1

    .line 182
    iput-boolean v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    .line 185
    :try_start_0
    iget-object v3, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->mediaCodecWrapperFactory:Lcom/discord/org/webrtc/MediaCodecWrapperFactory;

    iget-object v4, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/discord/org/webrtc/MediaCodecWrapperFactory;->createByCodecName(Ljava/lang/String;)Lcom/discord/org/webrtc/MediaCodecWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 191
    :try_start_1
    iget-object v3, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codecType:Lcom/discord/org/webrtc/VideoCodecMimeType;

    invoke-virtual {v3}, Lcom/discord/org/webrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    .line 192
    iget-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->sharedContext:Lcom/discord/org/webrtc/EglBase$Context;

    if-nez p2, :cond_1

    const-string p2, "color-format"

    .line 193
    iget v3, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->colorFormat:I

    invoke-virtual {p1, p2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 195
    :cond_1
    iget-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    iget-object v3, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    const/4 v4, 0x0

    invoke-interface {p2, p1, v3, v4, v0}, Lcom/discord/org/webrtc/MediaCodecWrapper;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 196
    iget-object p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {p1}, Lcom/discord/org/webrtc/MediaCodecWrapper;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    iput-boolean v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->running:Z

    .line 203
    invoke-direct {p0}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->createOutputThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 204
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p1, "initDecodeInternal done"

    .line 206
    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "initDecode failed"

    .line 198
    invoke-static {v1, p2, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    invoke-virtual {p0}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->release()Lcom/discord/org/webrtc/VideoCodecStatus;

    .line 200
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    .line 187
    :catch_2
    iget-object p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot create media decoder "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1
.end method

.method private isSupportedColorFormat(I)Z
    .locals 5

    .line 664
    sget-object v0, Lcom/discord/org/webrtc/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private reformat(Landroid/media/MediaFormat;)V
    .locals 8

    const-string v0, "Frame stride and slice height: "

    const-string v1, "Unexpected format dimensions. Configured "

    const-string v2, "Unexpected size change. Configured "

    .line 579
    iget-object v3, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v3}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v3, "AndroidVideoDecoder"

    .line 580
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Decoder format changed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "crop-left"

    .line 583
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "crop-right"

    .line 584
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "crop-bottom"

    .line 585
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "crop-top"

    .line 586
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "crop-right"

    .line 587
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v4, "crop-left"

    .line 588
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    const-string v4, "crop-bottom"

    .line 589
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, "crop-top"

    .line 590
    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "width"

    .line 592
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string v4, "height"

    .line 593
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 596
    :goto_0
    iget-object v5, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v5

    .line 597
    :try_start_0
    iget v6, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->width:I

    if-ne v3, v6, :cond_1

    iget v7, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->height:I

    if-eq v4, v7, :cond_4

    .line 598
    :cond_1
    iget-boolean v7, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->hasDecodedFirstFrame:Z

    if-eqz v7, :cond_2

    .line 599
    new-instance p1, Ljava/lang/RuntimeException;

    iget v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->width:I

    iget v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->height:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". New "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->stopOnOutputThread(Ljava/lang/Exception;)V

    .line 602
    monitor-exit v5

    return-void

    :cond_2
    if-lez v3, :cond_8

    if-gtz v4, :cond_3

    goto/16 :goto_1

    .line 609
    :cond_3
    iput v3, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->width:I

    .line 610
    iput v4, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->height:I

    .line 612
    :cond_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 616
    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    if-nez v1, :cond_5

    const-string v1, "color-format"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "color-format"

    .line 617
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->colorFormat:I

    const-string v2, "AndroidVideoDecoder"

    .line 618
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Color: 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->colorFormat:I

    invoke-direct {p0, v1}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->isSupportedColorFormat(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 620
    new-instance p1, Ljava/lang/IllegalStateException;

    iget v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->colorFormat:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported color format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->stopOnOutputThread(Ljava/lang/Exception;)V

    return-void

    .line 626
    :cond_5
    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    const-string/jumbo v2, "stride"

    .line 627
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "stride"

    .line 628
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->stride:I

    :cond_6
    const-string/jumbo v2, "slice-height"

    .line 630
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "slice-height"

    .line 631
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->sliceHeight:I

    :cond_7
    const-string p1, "AndroidVideoDecoder"

    .line 633
    iget v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->stride:I

    iget v3, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->sliceHeight:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->width:I

    iget v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->stride:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->stride:I

    .line 635
    iget p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->height:I

    iget v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->sliceHeight:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->sliceHeight:I

    .line 636
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    :goto_1
    :try_start_2
    const-string p1, "AndroidVideoDecoder"

    .line 604
    iget v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->height:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". New "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Skip it"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    monitor-exit v5

    return-void

    :catchall_1
    move-exception p1

    .line 612
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private reinitDecode(II)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->decoderThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 354
    invoke-direct {p0}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->releaseInternal()Lcom/discord/org/webrtc/VideoCodecStatus;

    move-result-object v0

    .line 355
    sget-object v1, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 358
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->initDecodeInternal(II)Lcom/discord/org/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method private releaseCodecOnOutputThread()V
    .locals 3

    .line 640
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "Releasing MediaCodec on output thread"

    const-string v1, "AndroidVideoDecoder"

    .line 641
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v0}, Lcom/discord/org/webrtc/MediaCodecWrapper;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Media decoder stop failed"

    .line 645
    invoke-static {v1, v2, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 648
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v0}, Lcom/discord/org/webrtc/MediaCodecWrapper;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "Media decoder release failed"

    .line 650
    invoke-static {v1, v2, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 652
    iput-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    :goto_1
    const-string v0, "Release on output thread done"

    .line 654
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private releaseInternal()Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 5

    .line 326
    iget-boolean v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->running:Z

    const-string v1, "AndroidVideoDecoder"

    if-nez v0, :cond_0

    const-string v0, "release: Decoder is not running."

    .line 327
    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 332
    :try_start_0
    iput-boolean v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->running:Z

    .line 333
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    const-wide/16 v3, 0x1388

    invoke-static {v0, v3, v4}, Lcom/discord/org/webrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Media decoder release timeout"

    .line 335
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v0, v3}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    sget-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->TIMEOUT:Lcom/discord/org/webrtc/VideoCodecStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    iput-object v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    .line 347
    iput-object v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    return-object v0

    .line 338
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    const-string v0, "Media decoder release error"

    .line 341
    new-instance v3, Ljava/lang/RuntimeException;

    iget-object v4, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v0, v3}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    iput-object v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 343
    sget-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    iput-object v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    .line 347
    iput-object v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    return-object v0

    .line 346
    :cond_2
    iput-object v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    .line 347
    iput-object v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 349
    sget-object v0, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object v0

    :catchall_0
    move-exception v0

    .line 346
    iput-object v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    .line 347
    iput-object v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 348
    throw v0
.end method

.method private stopOnOutputThread(Ljava/lang/Exception;)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/4 v0, 0x0

    .line 659
    iput-boolean v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->running:Z

    .line 660
    iput-object p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method protected allocateI420Buffer(II)Lcom/discord/org/webrtc/VideoFrame$I420Buffer;
    .locals 0

    .line 685
    invoke-static {p1, p2}, Lcom/discord/org/webrtc/JavaI420Buffer;->allocate(II)Lcom/discord/org/webrtc/JavaI420Buffer;

    move-result-object p1

    return-object p1
.end method

.method protected copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
    .locals 0

    .line 691
    invoke-static/range {p1 .. p6}, Lcom/discord/org/webrtc/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    return-void
.end method

.method protected createSurfaceTextureHelper()Lcom/discord/org/webrtc/SurfaceTextureHelper;
    .locals 2

    const-string v0, "decoder-texture-thread"

    .line 674
    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->sharedContext:Lcom/discord/org/webrtc/EglBase$Context;

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lcom/discord/org/webrtc/EglBase$Context;)Lcom/discord/org/webrtc/SurfaceTextureHelper;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/discord/org/webrtc/EncodedImage;Lcom/discord/org/webrtc/VideoDecoder$DecodeInfo;)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 8

    .line 212
    iget-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->decoderThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {p2}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 213
    iget-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->callback:Lcom/discord/org/webrtc/VideoDecoder$Callback;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 218
    :cond_0
    iget-object p2, p1, Lcom/discord/org/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    if-nez p2, :cond_1

    const-string p1, "AndroidVideoDecoder"

    const-string p2, "decode() - no input data"

    .line 219
    invoke-static {p1, p2}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->ERR_PARAMETER:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    .line 223
    :cond_1
    iget-object p2, p1, Lcom/discord/org/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-nez v4, :cond_2

    const-string p1, "AndroidVideoDecoder"

    const-string p2, "decode() - input buffer empty"

    .line 225
    invoke-static {p1, p2}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->ERR_PARAMETER:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    iget p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->width:I

    .line 234
    iget v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->height:I

    .line 235
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget v1, p1, Lcom/discord/org/webrtc/EncodedImage;->encodedWidth:I

    iget v3, p1, Lcom/discord/org/webrtc/EncodedImage;->encodedHeight:I

    mul-int/2addr v1, v3

    if-lez v1, :cond_4

    iget v1, p1, Lcom/discord/org/webrtc/EncodedImage;->encodedWidth:I

    if-ne v1, p2, :cond_3

    iget p2, p1, Lcom/discord/org/webrtc/EncodedImage;->encodedHeight:I

    if-eq p2, v2, :cond_4

    .line 240
    :cond_3
    iget p2, p1, Lcom/discord/org/webrtc/EncodedImage;->encodedWidth:I

    iget v1, p1, Lcom/discord/org/webrtc/EncodedImage;->encodedHeight:I

    invoke-direct {p0, p2, v1}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->reinitDecode(II)Lcom/discord/org/webrtc/VideoCodecStatus;

    move-result-object p2

    .line 241
    sget-object v1, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    if-eq p2, v1, :cond_4

    return-object p2

    .line 246
    :cond_4
    iget-boolean p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    if-eqz p2, :cond_5

    .line 248
    iget-object p2, p1, Lcom/discord/org/webrtc/EncodedImage;->frameType:Lcom/discord/org/webrtc/EncodedImage$FrameType;

    sget-object v1, Lcom/discord/org/webrtc/EncodedImage$FrameType;->VideoFrameKey:Lcom/discord/org/webrtc/EncodedImage$FrameType;

    if-eq p2, v1, :cond_5

    const-string p1, "AndroidVideoDecoder"

    const-string p2, "decode() - key frame required first"

    .line 249
    invoke-static {p1, p2}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->NO_OUTPUT:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    .line 256
    :cond_5
    :try_start_1
    iget-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    const-wide/32 v1, 0x7a120

    invoke-interface {p2, v1, v2}, Lcom/discord/org/webrtc/MediaCodecWrapper;->dequeueInputBuffer(J)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    if-gez v2, :cond_6

    const-string p1, "AndroidVideoDecoder"

    const-string p2, "decode() - no HW buffers available; decoder falling behind"

    .line 264
    invoke-static {p1, p2}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    .line 270
    :cond_6
    :try_start_2
    iget-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {p2, v2}, Lcom/discord/org/webrtc/MediaCodecWrapper;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 276
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v4, :cond_7

    const-string p1, "AndroidVideoDecoder"

    const-string p2, "decode() - HW buffer too small"

    .line 277
    invoke-static {p1, p2}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    .line 280
    :cond_7
    iget-object v1, p1, Lcom/discord/org/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 282
    iget-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    new-instance v1, Lcom/discord/org/webrtc/AndroidVideoDecoder$FrameInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget v3, p1, Lcom/discord/org/webrtc/EncodedImage;->rotation:I

    invoke-direct {v1, v5, v6, v3}, Lcom/discord/org/webrtc/AndroidVideoDecoder$FrameInfo;-><init>(JI)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 284
    :try_start_3
    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    const/4 v3, 0x0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p1, Lcom/discord/org/webrtc/EncodedImage;->captureTimeNs:J

    .line 285
    invoke-virtual {p2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    const/4 v7, 0x0

    .line 284
    invoke-interface/range {v1 .. v7}, Lcom/discord/org/webrtc/MediaCodecWrapper;->queueInputBuffer(IIIJI)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 291
    iget-boolean p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    if-eqz p1, :cond_8

    .line 292
    iput-boolean v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    .line 294
    :cond_8
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->OK:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "AndroidVideoDecoder"

    const-string v0, "queueInputBuffer failed"

    .line 287
    invoke-static {p2, v0, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    iget-object p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingDeque;->pollLast()Ljava/lang/Object;

    .line 289
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    :catch_1
    move-exception p1

    const-string p2, "AndroidVideoDecoder"

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getInputBuffer with index="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    :catch_2
    move-exception p1

    const-string p2, "AndroidVideoDecoder"

    const-string v0, "dequeueInputBuffer failed"

    .line 258
    invoke-static {p2, v0, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->ERROR:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    :catchall_0
    move-exception p1

    .line 235
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_9
    :goto_0
    const-string p1, "AndroidVideoDecoder"

    if-eqz p2, :cond_a

    const/4 v0, 0x1

    .line 214
    :cond_a
    iget-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->callback:Lcom/discord/org/webrtc/VideoDecoder$Callback;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decode uninitalized, codec: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->UNINITIALIZED:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1
.end method

.method protected deliverDecodedFrame()V
    .locals 8

    const-string v0, "AndroidVideoDecoder"

    const-string v1, "dequeueOutputBuffer returned "

    .line 376
    iget-object v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v2}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 378
    :try_start_0
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 383
    iget-object v3, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    const-wide/32 v4, 0x186a0

    invoke-interface {v3, v2, v4, v5}, Lcom/discord/org/webrtc/MediaCodecWrapper;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 385
    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codec:Lcom/discord/org/webrtc/MediaCodecWrapper;

    invoke-interface {v1}, Lcom/discord/org/webrtc/MediaCodecWrapper;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->reformat(Landroid/media/MediaFormat;)V

    return-void

    :cond_0
    if-gez v3, :cond_1

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/discord/org/webrtc/AndroidVideoDecoder$FrameInfo;

    if-eqz v1, :cond_2

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/discord/org/webrtc/AndroidVideoDecoder$FrameInfo;->decodeStartTimeMs:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 399
    iget v1, v1, Lcom/discord/org/webrtc/AndroidVideoDecoder$FrameInfo;->rotation:I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x1

    .line 402
    iput-boolean v5, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->hasDecodedFirstFrame:Z

    .line 404
    iget-object v5, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    if-eqz v5, :cond_3

    .line 405
    invoke-direct {p0, v3, v2, v1, v4}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->deliverTextureFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V

    goto :goto_1

    .line 407
    :cond_3
    invoke-direct {p0, v3, v2, v1, v4}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->deliverByteFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "deliverDecodedFrame failed"

    .line 411
    invoke-static {v0, v2, v1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    return-object v0
.end method

.method public initDecode(Lcom/discord/org/webrtc/VideoDecoder$Settings;Lcom/discord/org/webrtc/VideoDecoder$Callback;)Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 1

    .line 138
    new-instance v0, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->decoderThreadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    .line 140
    iput-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->callback:Lcom/discord/org/webrtc/VideoDecoder$Callback;

    .line 141
    iget-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->sharedContext:Lcom/discord/org/webrtc/EglBase$Context;

    if-eqz p2, :cond_2

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->createSurfaceTextureHelper()Lcom/discord/org/webrtc/SurfaceTextureHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    .line 145
    new-instance p2, Landroid/view/Surface;

    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    .line 146
    iget-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-virtual {p2, p0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->startListening(Lcom/discord/org/webrtc/VideoSink;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "AndroidVideoDecoder"

    const-string v0, "Error creating SurfaceTextureHelper"

    .line 148
    invoke-static {p2, v0, p1}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    iget-object p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 151
    iput-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->dispose()V

    .line 155
    iput-object p2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    .line 157
    :cond_1
    sget-object p1, Lcom/discord/org/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/discord/org/webrtc/VideoCodecStatus;

    return-object p1

    .line 160
    :cond_2
    :goto_0
    iget p2, p1, Lcom/discord/org/webrtc/VideoDecoder$Settings;->width:I

    iget p1, p1, Lcom/discord/org/webrtc/VideoDecoder$Settings;->height:I

    invoke-direct {p0, p2, p1}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->initDecodeInternal(II)Lcom/discord/org/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public onFrame(Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 6

    .line 448
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lcom/discord/org/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    if-eqz v1, :cond_0

    .line 453
    iget-wide v1, v1, Lcom/discord/org/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;->presentationTimestampUs:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 454
    iget-object v3, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lcom/discord/org/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    iget-object v3, v3, Lcom/discord/org/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;->decodeTimeMs:Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 455
    iput-object v4, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lcom/discord/org/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 456
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    new-instance v0, Lcom/discord/org/webrtc/VideoFrame;

    .line 459
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotation()I

    move-result p1

    invoke-direct {v0, v5, p1, v1, v2}, Lcom/discord/org/webrtc/VideoFrame;-><init>(Lcom/discord/org/webrtc/VideoFrame$Buffer;IJ)V

    .line 460
    iget-object p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->callback:Lcom/discord/org/webrtc/VideoDecoder$Callback;

    invoke-interface {p1, v0, v3, v4}, Lcom/discord/org/webrtc/VideoDecoder$Callback;->onDecodedFrame(Lcom/discord/org/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 450
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Rendered texture metadata was null in onTextureFrameAvailable."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 456
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public release()Lcom/discord/org/webrtc/VideoCodecStatus;
    .locals 3

    const-string v0, "AndroidVideoDecoder"

    const-string v1, "release"

    .line 307
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-direct {p0}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->releaseInternal()Lcom/discord/org/webrtc/VideoCodecStatus;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->releaseSurface()V

    .line 311
    iput-object v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    .line 312
    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-virtual {v1}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->stopListening()V

    .line 313
    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    invoke-virtual {v1}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->dispose()V

    .line 314
    iput-object v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/discord/org/webrtc/SurfaceTextureHelper;

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 317
    :try_start_0
    iput-object v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lcom/discord/org/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 318
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    iput-object v2, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->callback:Lcom/discord/org/webrtc/VideoDecoder$Callback;

    .line 320
    iget-object v1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->clear()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 318
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected releaseSurface()V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    return-void
.end method
