.class public final synthetic Lcom/discord/org/webrtc/TextureBufferImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/discord/org/webrtc/TextureBufferImpl;

.field public final synthetic f$1:Lcom/discord/org/webrtc/TextureBufferImpl$RefCountMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/discord/org/webrtc/TextureBufferImpl;Lcom/discord/org/webrtc/TextureBufferImpl$RefCountMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/TextureBufferImpl$$ExternalSyntheticLambda0;->f$0:Lcom/discord/org/webrtc/TextureBufferImpl;

    iput-object p2, p0, Lcom/discord/org/webrtc/TextureBufferImpl$$ExternalSyntheticLambda0;->f$1:Lcom/discord/org/webrtc/TextureBufferImpl$RefCountMonitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/discord/org/webrtc/TextureBufferImpl$$ExternalSyntheticLambda0;->f$0:Lcom/discord/org/webrtc/TextureBufferImpl;

    iget-object v1, p0, Lcom/discord/org/webrtc/TextureBufferImpl$$ExternalSyntheticLambda0;->f$1:Lcom/discord/org/webrtc/TextureBufferImpl$RefCountMonitor;

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/TextureBufferImpl;->$r8$lambda$VXCMAEl319gm7ErI9Z-i-zo-L_w(Lcom/discord/org/webrtc/TextureBufferImpl;Lcom/discord/org/webrtc/TextureBufferImpl$RefCountMonitor;)V

    return-void
.end method
