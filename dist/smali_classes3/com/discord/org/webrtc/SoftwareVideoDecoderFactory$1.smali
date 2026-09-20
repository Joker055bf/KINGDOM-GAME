.class Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory$1;
.super Lcom/discord/org/webrtc/WrappedNativeVideoDecoder;
.source "SoftwareVideoDecoderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory;->createDecoder(Lcom/discord/org/webrtc/VideoCodecInfo;)Lcom/discord/org/webrtc/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory;

.field final synthetic val$info:Lcom/discord/org/webrtc/VideoCodecInfo;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory;Lcom/discord/org/webrtc/VideoCodecInfo;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory$1;->this$0:Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory;

    iput-object p2, p0, Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory$1;->val$info:Lcom/discord/org/webrtc/VideoCodecInfo;

    invoke-direct {p0}, Lcom/discord/org/webrtc/WrappedNativeVideoDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method public createNative(J)J
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory$1;->this$0:Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory;

    invoke-static {v0}, Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory;->-$$Nest$fgetnativeFactory(Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory$1;->val$info:Lcom/discord/org/webrtc/VideoCodecInfo;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/discord/org/webrtc/SoftwareVideoDecoderFactory;->-$$Nest$smnativeCreate(JJLcom/discord/org/webrtc/VideoCodecInfo;)J

    move-result-wide p1

    return-wide p1
.end method
