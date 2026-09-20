.class Lcom/discord/org/webrtc/BaseBitrateAdjuster;
.super Ljava/lang/Object;
.source "BaseBitrateAdjuster.java"

# interfaces
.implements Lcom/discord/org/webrtc/BitrateAdjuster;


# instance fields
.field protected targetBitrateBps:I

.field protected targetFramerateFps:D


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdjustedBitrateBps()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/discord/org/webrtc/BaseBitrateAdjuster;->targetBitrateBps:I

    return v0
.end method

.method public getAdjustedFramerateFps()D
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/discord/org/webrtc/BaseBitrateAdjuster;->targetFramerateFps:D

    return-wide v0
.end method

.method public reportEncodedFrame(I)V
    .locals 0

    return-void
.end method

.method public setTargets(ID)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/discord/org/webrtc/BaseBitrateAdjuster;->targetBitrateBps:I

    .line 21
    iput-wide p2, p0, Lcom/discord/org/webrtc/BaseBitrateAdjuster;->targetFramerateFps:D

    return-void
.end method
