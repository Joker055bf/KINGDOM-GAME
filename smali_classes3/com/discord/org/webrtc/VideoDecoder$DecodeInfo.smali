.class public Lcom/discord/org/webrtc/VideoDecoder$DecodeInfo;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeInfo"
.end annotation


# instance fields
.field public final isMissingFrames:Z

.field public final renderTimeMs:J


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean p1, p0, Lcom/discord/org/webrtc/VideoDecoder$DecodeInfo;->isMissingFrames:Z

    .line 39
    iput-wide p2, p0, Lcom/discord/org/webrtc/VideoDecoder$DecodeInfo;->renderTimeMs:J

    return-void
.end method
