.class public interface abstract Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;
.super Ljava/lang/Object;
.source "VideoFrame.java"

# interfaces
.implements Lcom/discord/org/webrtc/VideoFrame$Buffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/VideoFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextureBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/VideoFrame$TextureBuffer$Type;
    }
.end annotation


# virtual methods
.method public applyTransformMatrix(Landroid/graphics/Matrix;II)Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;
    .locals 0

    .line 147
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getTextureId()I
.end method

.method public abstract getTransformMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getType()Lcom/discord/org/webrtc/VideoFrame$TextureBuffer$Type;
.end method

.method public getUnscaledHeight()I
    .locals 1

    .line 163
    invoke-interface {p0}, Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getUnscaledWidth()I
    .locals 1

    .line 155
    invoke-interface {p0}, Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;->getWidth()I

    move-result v0

    return v0
.end method
