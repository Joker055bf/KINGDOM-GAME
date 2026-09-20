.class public final synthetic Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/discord/org/webrtc/VideoSink;


# instance fields
.field public final synthetic f$0:Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticLambda0;->f$0:Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;

    return-void
.end method


# virtual methods
.method public final onFrame(Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 1

    iget-object v0, p0, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticLambda0;->f$0:Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;

    invoke-static {v0, p1}, Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;->$r8$lambda$jzezdZ4MRKcYgNuQZ7_4hq8gwtw(Lcom/discord/org/webrtc/Camera2Session$CaptureSessionCallback;Lcom/discord/org/webrtc/VideoFrame;)V

    return-void
.end method
