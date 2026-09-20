.class public Lcom/discord/org/webrtc/VideoFileRenderer;
.super Ljava/lang/Object;
.source "VideoFileRenderer.java"

# interfaces
.implements Lcom/discord/org/webrtc/VideoSink;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoFileRenderer"


# instance fields
.field private eglBase:Lcom/discord/org/webrtc/EglBase;

.field private final fileThread:Landroid/os/HandlerThread;

.field private final fileThreadHandler:Landroid/os/Handler;

.field private frameCount:I

.field private final outputFileHeight:I

.field private final outputFileName:Ljava/lang/String;

.field private final outputFileWidth:I

.field private final outputFrameBuffer:Ljava/nio/ByteBuffer;

.field private final outputFrameSize:I

.field private final renderThread:Landroid/os/HandlerThread;

.field private final renderThreadHandler:Landroid/os/Handler;

.field private final videoOutFile:Ljava/io/FileOutputStream;

.field private yuvConverter:Lcom/discord/org/webrtc/YuvConverter;


# direct methods
.method public static synthetic $r8$lambda$TZ-RlERCXZnoTlIIWIeFMNLgqFM(Lcom/discord/org/webrtc/VideoFileRenderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/VideoFileRenderer;->lambda$release$2(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wlelza5-O3g7GA0cPxj2anysJxs(Lcom/discord/org/webrtc/VideoFileRenderer;Lcom/discord/org/webrtc/VideoFrame$I420Buffer;Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/discord/org/webrtc/VideoFileRenderer;->lambda$renderFrameOnRenderThread$1(Lcom/discord/org/webrtc/VideoFrame$I420Buffer;Lcom/discord/org/webrtc/VideoFrame;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hE-pICLBP5ZZyrAUm5rK1Z77ryQ(Lcom/discord/org/webrtc/VideoFileRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/VideoFileRenderer;->lambda$release$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$q5PJHgbwLXSQpA5c719Br6IQloU(Lcom/discord/org/webrtc/VideoFileRenderer;Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/VideoFileRenderer;->lambda$onFrame$0(Lcom/discord/org/webrtc/VideoFrame;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgeteglBase(Lcom/discord/org/webrtc/VideoFileRenderer;)Lcom/discord/org/webrtc/EglBase;
    .locals 0

    iget-object p0, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputeglBase(Lcom/discord/org/webrtc/VideoFileRenderer;Lcom/discord/org/webrtc/EglBase;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputyuvConverter(Lcom/discord/org/webrtc/VideoFileRenderer;Lcom/discord/org/webrtc/YuvConverter;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->yuvConverter:Lcom/discord/org/webrtc/YuvConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/discord/org/webrtc/EglBase$Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    rem-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    rem-int/lit8 v0, p3, 0x2

    if-eq v0, v1, :cond_0

    .line 47
    iput-object p1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFileName:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFileWidth:I

    .line 49
    iput p3, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFileHeight:I

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x3

    .line 51
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFrameSize:I

    .line 52
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFrameBuffer:Ljava/nio/ByteBuffer;

    .line 54
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->videoOutFile:Ljava/io/FileOutputStream;

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "YUV4MPEG2 C420 W"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " H"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " Ip F30:1 A1:1\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "US-ASCII"

    .line 57
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 59
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "VideoFileRendererRenderThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->renderThread:Landroid/os/HandlerThread;

    .line 60
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 63
    new-instance p1, Landroid/os/HandlerThread;

    const-string p3, "VideoFileRendererFileThread"

    invoke-direct {p1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->fileThread:Landroid/os/HandlerThread;

    .line 64
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->fileThreadHandler:Landroid/os/Handler;

    .line 67
    new-instance p1, Lcom/discord/org/webrtc/VideoFileRenderer$1;

    invoke-direct {p1, p0, p4}, Lcom/discord/org/webrtc/VideoFileRenderer$1;-><init>(Lcom/discord/org/webrtc/VideoFileRenderer;Lcom/discord/org/webrtc/EglBase$Context;)V

    invoke-static {p2, p1}, Lcom/discord/org/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Does not support uneven width or height"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic lambda$onFrame$0(Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/VideoFileRenderer;->renderFrameOnRenderThread(Lcom/discord/org/webrtc/VideoFrame;)V

    return-void
.end method

.method private synthetic lambda$release$2(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->yuvConverter:Lcom/discord/org/webrtc/YuvConverter;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/YuvConverter;->release()V

    .line 138
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->eglBase:Lcom/discord/org/webrtc/EglBase;

    invoke-interface {v0}, Lcom/discord/org/webrtc/EglBase;->release()V

    .line 139
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->renderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 140
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$release$3()V
    .locals 7

    const-string v0, "Video written to disk as "

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->videoOutFile:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const-string v1, "VideoFileRenderer"

    .line 146
    iget-object v2, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFileName:Ljava/lang/String;

    iget v3, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->frameCount:I

    iget v4, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFileWidth:I

    iget v5, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFileHeight:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". The number of frames is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and the dimensions of the frames are "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->fileThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error closing output file"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private synthetic lambda$renderFrameOnRenderThread$1(Lcom/discord/org/webrtc/VideoFrame$I420Buffer;Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 10

    .line 115
    invoke-interface {p1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v1

    invoke-interface {p1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {p1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v3

    .line 116
    invoke-interface {p1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {p1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v5

    iget-object v6, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getWidth()I

    move-result v7

    invoke-interface {p1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result v8

    .line 117
    invoke-virtual {p2}, Lcom/discord/org/webrtc/VideoFrame;->getRotation()I

    move-result v9

    .line 115
    invoke-static/range {v0 .. v9}, Lcom/discord/org/webrtc/YuvHelper;->I420Rotate(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 118
    invoke-interface {p1}, Lcom/discord/org/webrtc/VideoFrame$I420Buffer;->release()V

    .line 121
    :try_start_0
    iget-object p1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->videoOutFile:Ljava/io/FileOutputStream;

    const-string p2, "FRAME\n"

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 122
    iget-object p1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->videoOutFile:Ljava/io/FileOutputStream;

    iget-object p2, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFrameBuffer:Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFrameBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iget v1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFrameSize:I

    .line 122
    invoke-virtual {p1, p2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    iget p1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->frameCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->frameCount:I

    return-void

    :catch_0
    move-exception p1

    .line 125
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Error writing video to disk"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private renderFrameOnRenderThread(Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 8

    .line 85
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotation()I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFileWidth:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFileHeight:I

    :goto_0
    move v5, v1

    .line 90
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->getRotation()I

    move-result v1

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFileHeight:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->outputFileWidth:I

    :goto_1
    move v6, v1

    .line 92
    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v5

    int-to-float v3, v6

    div-float/2addr v2, v3

    .line 96
    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v3

    .line 97
    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v4

    cmpl-float v7, v2, v1

    if-lez v7, :cond_2

    int-to-float v4, v4

    div-float/2addr v1, v2

    mul-float/2addr v4, v1

    float-to-int v1, v4

    move v4, v1

    goto :goto_2

    :cond_2
    int-to-float v3, v3

    div-float/2addr v2, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    move v3, v1

    .line 104
    :goto_2
    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 105
    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v2

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 108
    invoke-interface/range {v0 .. v6}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->cropAndScale(IIIIII)Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->release()V

    .line 111
    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->toI420()Lcom/discord/org/webrtc/VideoFrame$I420Buffer;

    move-result-object v1

    .line 112
    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->release()V

    .line 114
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->fileThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/discord/org/webrtc/VideoFileRenderer;Lcom/discord/org/webrtc/VideoFrame$I420Buffer;Lcom/discord/org/webrtc/VideoFrame;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onFrame(Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 2

    .line 80
    invoke-virtual {p1}, Lcom/discord/org/webrtc/VideoFrame;->retain()V

    .line 81
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda3;-><init>(Lcom/discord/org/webrtc/VideoFileRenderer;Lcom/discord/org/webrtc/VideoFrame;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .locals 3

    .line 135
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 136
    iget-object v1, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/discord/org/webrtc/VideoFileRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    invoke-static {v0}, Lcom/discord/org/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 143
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->fileThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda2;-><init>(Lcom/discord/org/webrtc/VideoFileRenderer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer;->fileThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const-string v1, "VideoFileRenderer"

    const-string v2, "Interrupted while waiting for the write to disk to complete."

    .line 159
    invoke-static {v1, v2, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
