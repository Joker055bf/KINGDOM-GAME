.class Lcom/discord/org/webrtc/CameraCapturer$8;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/org/webrtc/CameraCapturer;->switchCamera(Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/CameraCapturer;

.field final synthetic val$cameraName:Ljava/lang/String;

.field final synthetic val$switchEventsHandler:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$8;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    iput-object p2, p0, Lcom/discord/org/webrtc/CameraCapturer$8;->val$switchEventsHandler:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    iput-object p3, p0, Lcom/discord/org/webrtc/CameraCapturer$8;->val$cameraName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer$8;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    iget-object v1, p0, Lcom/discord/org/webrtc/CameraCapturer$8;->val$switchEventsHandler:Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    iget-object v2, p0, Lcom/discord/org/webrtc/CameraCapturer$8;->val$cameraName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$mswitchCameraInternal(Lcom/discord/org/webrtc/CameraCapturer;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V

    return-void
.end method
