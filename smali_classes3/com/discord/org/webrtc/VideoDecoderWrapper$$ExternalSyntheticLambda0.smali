.class public final synthetic Lcom/discord/org/webrtc/VideoDecoderWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/discord/org/webrtc/VideoDecoder$Callback;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/discord/org/webrtc/VideoDecoderWrapper$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final onDecodedFrame(Lcom/discord/org/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    iget-wide v0, p0, Lcom/discord/org/webrtc/VideoDecoderWrapper$$ExternalSyntheticLambda0;->f$0:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/discord/org/webrtc/VideoDecoderWrapper;->lambda$createDecoderCallback$0(JLcom/discord/org/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
