.class Lcom/discord/org/webrtc/VideoFileRenderer$1;
.super Ljava/lang/Object;
.source "VideoFileRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/org/webrtc/VideoFileRenderer;-><init>(Ljava/lang/String;IILcom/discord/org/webrtc/EglBase$Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/VideoFileRenderer;

.field final synthetic val$sharedContext:Lcom/discord/org/webrtc/EglBase$Context;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/VideoFileRenderer;Lcom/discord/org/webrtc/EglBase$Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/discord/org/webrtc/VideoFileRenderer$1;->this$0:Lcom/discord/org/webrtc/VideoFileRenderer;

    iput-object p2, p0, Lcom/discord/org/webrtc/VideoFileRenderer$1;->val$sharedContext:Lcom/discord/org/webrtc/EglBase$Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer$1;->this$0:Lcom/discord/org/webrtc/VideoFileRenderer;

    iget-object v1, p0, Lcom/discord/org/webrtc/VideoFileRenderer$1;->val$sharedContext:Lcom/discord/org/webrtc/EglBase$Context;

    sget-object v2, Lcom/discord/org/webrtc/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {v1, v2}, Lcom/discord/org/webrtc/EglBase;->create(Lcom/discord/org/webrtc/EglBase$Context;[I)Lcom/discord/org/webrtc/EglBase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/VideoFileRenderer;->-$$Nest$fputeglBase(Lcom/discord/org/webrtc/VideoFileRenderer;Lcom/discord/org/webrtc/EglBase;)V

    .line 71
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer$1;->this$0:Lcom/discord/org/webrtc/VideoFileRenderer;

    invoke-static {v0}, Lcom/discord/org/webrtc/VideoFileRenderer;->-$$Nest$fgeteglBase(Lcom/discord/org/webrtc/VideoFileRenderer;)Lcom/discord/org/webrtc/EglBase;

    move-result-object v0

    invoke-interface {v0}, Lcom/discord/org/webrtc/EglBase;->createDummyPbufferSurface()V

    .line 72
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer$1;->this$0:Lcom/discord/org/webrtc/VideoFileRenderer;

    invoke-static {v0}, Lcom/discord/org/webrtc/VideoFileRenderer;->-$$Nest$fgeteglBase(Lcom/discord/org/webrtc/VideoFileRenderer;)Lcom/discord/org/webrtc/EglBase;

    move-result-object v0

    invoke-interface {v0}, Lcom/discord/org/webrtc/EglBase;->makeCurrent()V

    .line 73
    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer$1;->this$0:Lcom/discord/org/webrtc/VideoFileRenderer;

    new-instance v1, Lcom/discord/org/webrtc/YuvConverter;

    invoke-direct {v1}, Lcom/discord/org/webrtc/YuvConverter;-><init>()V

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/VideoFileRenderer;->-$$Nest$fputyuvConverter(Lcom/discord/org/webrtc/VideoFileRenderer;Lcom/discord/org/webrtc/YuvConverter;)V

    return-void
.end method
