.class Lcom/discord/org/webrtc/TextureBufferImpl$2;
.super Ljava/lang/Object;
.source "TextureBufferImpl.java"

# interfaces
.implements Lcom/discord/org/webrtc/TextureBufferImpl$RefCountMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/org/webrtc/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;IIII)Lcom/discord/org/webrtc/TextureBufferImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/org/webrtc/TextureBufferImpl;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/TextureBufferImpl;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/discord/org/webrtc/TextureBufferImpl$2;->this$0:Lcom/discord/org/webrtc/TextureBufferImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy(Lcom/discord/org/webrtc/TextureBufferImpl;)V
    .locals 0

    .line 193
    iget-object p1, p0, Lcom/discord/org/webrtc/TextureBufferImpl$2;->this$0:Lcom/discord/org/webrtc/TextureBufferImpl;

    invoke-virtual {p1}, Lcom/discord/org/webrtc/TextureBufferImpl;->release()V

    return-void
.end method

.method public onRelease(Lcom/discord/org/webrtc/TextureBufferImpl;)V
    .locals 1

    .line 188
    iget-object p1, p0, Lcom/discord/org/webrtc/TextureBufferImpl$2;->this$0:Lcom/discord/org/webrtc/TextureBufferImpl;

    invoke-static {p1}, Lcom/discord/org/webrtc/TextureBufferImpl;->-$$Nest$fgetrefCountMonitor(Lcom/discord/org/webrtc/TextureBufferImpl;)Lcom/discord/org/webrtc/TextureBufferImpl$RefCountMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/discord/org/webrtc/TextureBufferImpl$2;->this$0:Lcom/discord/org/webrtc/TextureBufferImpl;

    invoke-interface {p1, v0}, Lcom/discord/org/webrtc/TextureBufferImpl$RefCountMonitor;->onRelease(Lcom/discord/org/webrtc/TextureBufferImpl;)V

    return-void
.end method

.method public onRetain(Lcom/discord/org/webrtc/TextureBufferImpl;)V
    .locals 1

    .line 183
    iget-object p1, p0, Lcom/discord/org/webrtc/TextureBufferImpl$2;->this$0:Lcom/discord/org/webrtc/TextureBufferImpl;

    invoke-static {p1}, Lcom/discord/org/webrtc/TextureBufferImpl;->-$$Nest$fgetrefCountMonitor(Lcom/discord/org/webrtc/TextureBufferImpl;)Lcom/discord/org/webrtc/TextureBufferImpl$RefCountMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/discord/org/webrtc/TextureBufferImpl$2;->this$0:Lcom/discord/org/webrtc/TextureBufferImpl;

    invoke-interface {p1, v0}, Lcom/discord/org/webrtc/TextureBufferImpl$RefCountMonitor;->onRetain(Lcom/discord/org/webrtc/TextureBufferImpl;)V

    return-void
.end method
