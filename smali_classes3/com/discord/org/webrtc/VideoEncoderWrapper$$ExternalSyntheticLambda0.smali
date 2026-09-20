.class public final synthetic Lcom/discord/org/webrtc/VideoEncoderWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/discord/org/webrtc/VideoEncoder$Callback;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/discord/org/webrtc/VideoEncoderWrapper$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final onEncodedFrame(Lcom/discord/org/webrtc/EncodedImage;Lcom/discord/org/webrtc/VideoEncoder$CodecSpecificInfo;)V
    .locals 2

    iget-wide v0, p0, Lcom/discord/org/webrtc/VideoEncoderWrapper$$ExternalSyntheticLambda0;->f$0:J

    invoke-static {v0, v1, p1, p2}, Lcom/discord/org/webrtc/VideoEncoderWrapper;->lambda$createEncoderCallback$0(JLcom/discord/org/webrtc/EncodedImage;Lcom/discord/org/webrtc/VideoEncoder$CodecSpecificInfo;)V

    return-void
.end method
