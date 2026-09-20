.class Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory$1;
.super Lcom/discord/org/webrtc/WrappedNativeVideoEncoder;
.source "SoftwareVideoEncoderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;->createEncoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;

.field final synthetic val$info:Lcom/discord/org/webrtc/VideoCodecInfo;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;Lcom/discord/org/webrtc/VideoCodecInfo;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory$1;->this$0:Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;

    iput-object p2, p0, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory$1;->val$info:Lcom/discord/org/webrtc/VideoCodecInfo;

    invoke-direct {p0}, Lcom/discord/org/webrtc/WrappedNativeVideoEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method public createNative(J)J
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory$1;->this$0:Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;

    invoke-static {v0}, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;->-$$Nest$fgetnativeFactory(Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory$1;->val$info:Lcom/discord/org/webrtc/VideoCodecInfo;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/discord/org/webrtc/SoftwareVideoEncoderFactory;->-$$Nest$smnativeCreate(JJLcom/discord/org/webrtc/VideoCodecInfo;)J

    move-result-wide p1

    return-wide p1
.end method

.method public isHardwareEncoder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
