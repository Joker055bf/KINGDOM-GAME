.class Lcom/discord/org/webrtc/CameraCapturer$3;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/CameraCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/CameraCapturer;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/CameraCapturer;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$3;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer$3;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v0}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgeteventsHandler(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v0

    const-string v1, "Camera failed to start within timeout."

    invoke-interface {v0, v1}, Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;->onCameraError(Ljava/lang/String;)V

    return-void
.end method
