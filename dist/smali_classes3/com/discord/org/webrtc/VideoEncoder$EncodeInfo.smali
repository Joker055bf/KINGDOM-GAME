.class public Lcom/discord/org/webrtc/VideoEncoder$EncodeInfo;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncodeInfo"
.end annotation


# instance fields
.field public final frameTypes:[Lcom/discord/org/webrtc/EncodedImage$FrameType;


# direct methods
.method public constructor <init>([Lcom/discord/org/webrtc/EncodedImage$FrameType;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/discord/org/webrtc/VideoEncoder$EncodeInfo;->frameTypes:[Lcom/discord/org/webrtc/EncodedImage$FrameType;

    return-void
.end method
