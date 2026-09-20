.class Lcom/discord/org/webrtc/ScreenCapturerAndroid$1;
.super Ljava/lang/Object;
.source "ScreenCapturerAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/org/webrtc/ScreenCapturerAndroid;->stopCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/ScreenCapturerAndroid;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/ScreenCapturerAndroid;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid$1;->this$0:Lcom/discord/org/webrtc/ScreenCapturerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid$1;->this$0:Lcom/discord/org/webrtc/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->-$$Nest$fgetsurfaceTextureHelper(Lcom/discord/org/webrtc/ScreenCapturerAndroid;)Lcom/discord/org/webrtc/SurfaceTextureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/discord/org/webrtc/SurfaceTextureHelper;->stopListening()V

    .line 132
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid$1;->this$0:Lcom/discord/org/webrtc/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->-$$Nest$fgetcapturerObserver(Lcom/discord/org/webrtc/ScreenCapturerAndroid;)Lcom/discord/org/webrtc/CapturerObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/discord/org/webrtc/CapturerObserver;->onCapturerStopped()V

    .line 134
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid$1;->this$0:Lcom/discord/org/webrtc/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->-$$Nest$fgetvirtualDisplay(Lcom/discord/org/webrtc/ScreenCapturerAndroid;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid$1;->this$0:Lcom/discord/org/webrtc/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->-$$Nest$fgetvirtualDisplay(Lcom/discord/org/webrtc/ScreenCapturerAndroid;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 136
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid$1;->this$0:Lcom/discord/org/webrtc/ScreenCapturerAndroid;

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->-$$Nest$fputvirtualDisplay(Lcom/discord/org/webrtc/ScreenCapturerAndroid;Landroid/hardware/display/VirtualDisplay;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid$1;->this$0:Lcom/discord/org/webrtc/ScreenCapturerAndroid;

    iget-object v0, v0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid$1;->this$0:Lcom/discord/org/webrtc/ScreenCapturerAndroid;

    iget-object v0, v0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v2, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid$1;->this$0:Lcom/discord/org/webrtc/ScreenCapturerAndroid;

    invoke-static {v2}, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->-$$Nest$fgetmediaProjectionCallback(Lcom/discord/org/webrtc/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection$Callback;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 143
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid$1;->this$0:Lcom/discord/org/webrtc/ScreenCapturerAndroid;

    iget-object v0, v0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 144
    iget-object v0, p0, Lcom/discord/org/webrtc/ScreenCapturerAndroid$1;->this$0:Lcom/discord/org/webrtc/ScreenCapturerAndroid;

    iput-object v1, v0, Lcom/discord/org/webrtc/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;

    :cond_1
    return-void
.end method
