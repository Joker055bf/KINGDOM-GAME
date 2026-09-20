.class public Lcom/discord/org/webrtc/VideoEncoder$Capabilities;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Capabilities"
.end annotation


# instance fields
.field public final lossNotification:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean p1, p0, Lcom/discord/org/webrtc/VideoEncoder$Capabilities;->lossNotification:Z

    return-void
.end method
