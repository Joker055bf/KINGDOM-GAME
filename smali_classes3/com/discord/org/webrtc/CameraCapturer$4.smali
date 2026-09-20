.class Lcom/discord/org/webrtc/CameraCapturer$4;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/org/webrtc/CameraCapturer;-><init>(Ljava/lang/String;Lcom/discord/org/webrtc/CameraVideoCapturer$CameraEventsHandler;Lcom/discord/org/webrtc/CameraEnumerator;)V
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

    .line 204
    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$4;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 0

    return-void
.end method

.method public onCameraDisconnected()V
    .locals 0

    return-void
.end method

.method public onCameraError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCameraFreezed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCameraOpening(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFirstFrameAvailable()V
    .locals 0

    return-void
.end method
