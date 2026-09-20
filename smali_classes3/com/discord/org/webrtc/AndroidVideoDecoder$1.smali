.class Lcom/discord/org/webrtc/AndroidVideoDecoder$1;
.super Ljava/lang/Thread;
.source "AndroidVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/org/webrtc/AndroidVideoDecoder;->createOutputThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/AndroidVideoDecoder;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/AndroidVideoDecoder;Ljava/lang/String;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder$1;->this$0:Lcom/discord/org/webrtc/AndroidVideoDecoder;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder$1;->this$0:Lcom/discord/org/webrtc/AndroidVideoDecoder;

    new-instance v1, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v1}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->-$$Nest$fputoutputThreadChecker(Lcom/discord/org/webrtc/AndroidVideoDecoder;Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;)V

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder$1;->this$0:Lcom/discord/org/webrtc/AndroidVideoDecoder;

    invoke-static {v0}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->-$$Nest$fgetrunning(Lcom/discord/org/webrtc/AndroidVideoDecoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder$1;->this$0:Lcom/discord/org/webrtc/AndroidVideoDecoder;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->deliverDecodedFrame()V

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/discord/org/webrtc/AndroidVideoDecoder$1;->this$0:Lcom/discord/org/webrtc/AndroidVideoDecoder;

    invoke-static {v0}, Lcom/discord/org/webrtc/AndroidVideoDecoder;->-$$Nest$mreleaseCodecOnOutputThread(Lcom/discord/org/webrtc/AndroidVideoDecoder;)V

    return-void
.end method
