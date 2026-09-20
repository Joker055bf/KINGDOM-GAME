.class public final synthetic Lcom/discord/org/webrtc/TextureBufferImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/discord/org/webrtc/TextureBufferImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/discord/org/webrtc/TextureBufferImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/TextureBufferImpl$$ExternalSyntheticLambda1;->f$0:Lcom/discord/org/webrtc/TextureBufferImpl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/discord/org/webrtc/TextureBufferImpl$$ExternalSyntheticLambda1;->f$0:Lcom/discord/org/webrtc/TextureBufferImpl;

    invoke-static {v0}, Lcom/discord/org/webrtc/TextureBufferImpl;->$r8$lambda$qEWjhtpSOscUXN7hPjJvlS8MlLM(Lcom/discord/org/webrtc/TextureBufferImpl;)Lcom/discord/org/webrtc/VideoFrame$I420Buffer;

    move-result-object v0

    return-object v0
.end method
