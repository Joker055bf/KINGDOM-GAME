.class Lcom/discord/org/webrtc/HardwareVideoEncoder$1;
.super Ljava/lang/Thread;
.source "HardwareVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/org/webrtc/HardwareVideoEncoder;->createOutputThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/HardwareVideoEncoder;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/HardwareVideoEncoder;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder$1;->this$0:Lcom/discord/org/webrtc/HardwareVideoEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 568
    :goto_0
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder$1;->this$0:Lcom/discord/org/webrtc/HardwareVideoEncoder;

    invoke-static {v0}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->-$$Nest$fgetrunning(Lcom/discord/org/webrtc/HardwareVideoEncoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder$1;->this$0:Lcom/discord/org/webrtc/HardwareVideoEncoder;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->deliverEncodedImage()V

    goto :goto_0

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/HardwareVideoEncoder$1;->this$0:Lcom/discord/org/webrtc/HardwareVideoEncoder;

    invoke-static {v0}, Lcom/discord/org/webrtc/HardwareVideoEncoder;->-$$Nest$mreleaseCodecOnOutputThread(Lcom/discord/org/webrtc/HardwareVideoEncoder;)V

    return-void
.end method
