.class public Lcom/discord/org/webrtc/VideoEncoder$EncoderInfo;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncoderInfo"
.end annotation


# instance fields
.field public final applyAlignmentToAllSimulcastLayers:Z

.field public final requestedResolutionAlignment:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput p1, p0, Lcom/discord/org/webrtc/VideoEncoder$EncoderInfo;->requestedResolutionAlignment:I

    .line 280
    iput-boolean p2, p0, Lcom/discord/org/webrtc/VideoEncoder$EncoderInfo;->applyAlignmentToAllSimulcastLayers:Z

    return-void
.end method


# virtual methods
.method public getApplyAlignmentToAllSimulcastLayers()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/discord/org/webrtc/VideoEncoder$EncoderInfo;->applyAlignmentToAllSimulcastLayers:Z

    return v0
.end method

.method public getRequestedResolutionAlignment()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/discord/org/webrtc/VideoEncoder$EncoderInfo;->requestedResolutionAlignment:I

    return v0
.end method
