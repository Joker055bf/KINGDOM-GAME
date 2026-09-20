.class public Lcom/discord/org/webrtc/VideoEncoder$Settings;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public final automaticResizeOn:Z

.field public final capabilities:Lcom/discord/org/webrtc/VideoEncoder$Capabilities;

.field public final height:I

.field public final maxFramerate:I

.field public final numberOfCores:I

.field public final numberOfSimulcastStreams:I

.field public final startBitrate:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIIIIZ)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    new-instance v8, Lcom/discord/org/webrtc/VideoEncoder$Capabilities;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/discord/org/webrtc/VideoEncoder$Capabilities;-><init>(Z)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/discord/org/webrtc/VideoEncoder$Settings;-><init>(IIIIIIZLcom/discord/org/webrtc/VideoEncoder$Capabilities;)V

    return-void
.end method

.method public constructor <init>(IIIIIIZLcom/discord/org/webrtc/VideoEncoder$Capabilities;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/discord/org/webrtc/VideoEncoder$Settings;->numberOfCores:I

    .line 45
    iput p2, p0, Lcom/discord/org/webrtc/VideoEncoder$Settings;->width:I

    .line 46
    iput p3, p0, Lcom/discord/org/webrtc/VideoEncoder$Settings;->height:I

    .line 47
    iput p4, p0, Lcom/discord/org/webrtc/VideoEncoder$Settings;->startBitrate:I

    .line 48
    iput p5, p0, Lcom/discord/org/webrtc/VideoEncoder$Settings;->maxFramerate:I

    .line 49
    iput p6, p0, Lcom/discord/org/webrtc/VideoEncoder$Settings;->numberOfSimulcastStreams:I

    .line 50
    iput-boolean p7, p0, Lcom/discord/org/webrtc/VideoEncoder$Settings;->automaticResizeOn:Z

    .line 51
    iput-object p8, p0, Lcom/discord/org/webrtc/VideoEncoder$Settings;->capabilities:Lcom/discord/org/webrtc/VideoEncoder$Capabilities;

    return-void
.end method
