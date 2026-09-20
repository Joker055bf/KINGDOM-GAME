.class public Lcom/discord/org/webrtc/VideoFrame;
.super Ljava/lang/Object;
.source "VideoFrame.java"

# interfaces
.implements Lcom/discord/org/webrtc/RefCounted;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/VideoFrame$Buffer;,
        Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;,
        Lcom/discord/org/webrtc/VideoFrame$I420Buffer;
    }
.end annotation


# instance fields
.field private final buffer:Lcom/discord/org/webrtc/VideoFrame$Buffer;

.field private final rotation:I

.field private final timestampNs:J


# direct methods
.method public constructor <init>(Lcom/discord/org/webrtc/VideoFrame$Buffer;IJ)V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 181
    rem-int/lit8 v0, p2, 0x5a

    if-nez v0, :cond_0

    .line 184
    iput-object p1, p0, Lcom/discord/org/webrtc/VideoFrame;->buffer:Lcom/discord/org/webrtc/VideoFrame$Buffer;

    .line 185
    iput p2, p0, Lcom/discord/org/webrtc/VideoFrame;->rotation:I

    .line 186
    iput-wide p3, p0, Lcom/discord/org/webrtc/VideoFrame;->timestampNs:J

    return-void

    .line 182
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rotation must be a multiple of 90"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer not allowed to be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBuffer()Lcom/discord/org/webrtc/VideoFrame$Buffer;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFrame;->buffer:Lcom/discord/org/webrtc/VideoFrame$Buffer;

    return-object v0
.end method

.method public getRotatedHeight()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/discord/org/webrtc/VideoFrame;->rotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFrame;->buffer:Lcom/discord/org/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v0

    return v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFrame;->buffer:Lcom/discord/org/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v0

    return v0
.end method

.method public getRotatedWidth()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/discord/org/webrtc/VideoFrame;->rotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFrame;->buffer:Lcom/discord/org/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v0

    return v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFrame;->buffer:Lcom/discord/org/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRotation()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/discord/org/webrtc/VideoFrame;->rotation:I

    return v0
.end method

.method public getTimestampNs()J
    .locals 2

    .line 207
    iget-wide v0, p0, Lcom/discord/org/webrtc/VideoFrame;->timestampNs:J

    return-wide v0
.end method

.method public release()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFrame;->buffer:Lcom/discord/org/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->release()V

    return-void
.end method

.method public retain()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFrame;->buffer:Lcom/discord/org/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lcom/discord/org/webrtc/VideoFrame$Buffer;->retain()V

    return-void
.end method
