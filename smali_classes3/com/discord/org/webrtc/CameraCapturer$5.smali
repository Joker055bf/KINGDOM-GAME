.class Lcom/discord/org/webrtc/CameraCapturer$5;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/org/webrtc/CameraCapturer;->createSessionInternal(I)V
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

    .line 269
    iput-object p1, p0, Lcom/discord/org/webrtc/CameraCapturer$5;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 272
    iget-object v0, p0, Lcom/discord/org/webrtc/CameraCapturer$5;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v0}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetcreateSessionCallback(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/discord/org/webrtc/CameraCapturer$5;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v2}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetcameraSessionEventsHandler(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/CameraSession$Events;

    move-result-object v2

    iget-object v3, p0, Lcom/discord/org/webrtc/CameraCapturer$5;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v3}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetapplicationContext(Lcom/discord/org/webrtc/CameraCapturer;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/discord/org/webrtc/CameraCapturer$5;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v4}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetsurfaceHelper(Lcom/discord/org/webrtc/CameraCapturer;)Lcom/discord/org/webrtc/SurfaceTextureHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/discord/org/webrtc/CameraCapturer$5;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v5}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetcameraName(Lcom/discord/org/webrtc/CameraCapturer;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/discord/org/webrtc/CameraCapturer$5;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v6}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetwidth(Lcom/discord/org/webrtc/CameraCapturer;)I

    move-result v6

    iget-object v7, p0, Lcom/discord/org/webrtc/CameraCapturer$5;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v7}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetheight(Lcom/discord/org/webrtc/CameraCapturer;)I

    move-result v7

    iget-object v8, p0, Lcom/discord/org/webrtc/CameraCapturer$5;->this$0:Lcom/discord/org/webrtc/CameraCapturer;

    invoke-static {v8}, Lcom/discord/org/webrtc/CameraCapturer;->-$$Nest$fgetframerate(Lcom/discord/org/webrtc/CameraCapturer;)I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/discord/org/webrtc/CameraCapturer;->createCameraSession(Lcom/discord/org/webrtc/CameraSession$CreateSessionCallback;Lcom/discord/org/webrtc/CameraSession$Events;Landroid/content/Context;Lcom/discord/org/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V

    return-void
.end method
