.class public final synthetic Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/discord/org/webrtc/VideoFileRenderer;

.field public final synthetic f$1:Lcom/discord/org/webrtc/VideoFrame$I420Buffer;

.field public final synthetic f$2:Lcom/discord/org/webrtc/VideoFrame;


# direct methods
.method public synthetic constructor <init>(Lcom/discord/org/webrtc/VideoFileRenderer;Lcom/discord/org/webrtc/VideoFrame$I420Buffer;Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/discord/org/webrtc/VideoFileRenderer;

    iput-object p2, p0, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda0;->f$1:Lcom/discord/org/webrtc/VideoFrame$I420Buffer;

    iput-object p3, p0, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda0;->f$2:Lcom/discord/org/webrtc/VideoFrame;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/discord/org/webrtc/VideoFileRenderer;

    iget-object v1, p0, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda0;->f$1:Lcom/discord/org/webrtc/VideoFrame$I420Buffer;

    iget-object v2, p0, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda0;->f$2:Lcom/discord/org/webrtc/VideoFrame;

    invoke-static {v0, v1, v2}, Lcom/discord/org/webrtc/VideoFileRenderer;->$r8$lambda$Wlelza5-O3g7GA0cPxj2anysJxs(Lcom/discord/org/webrtc/VideoFileRenderer;Lcom/discord/org/webrtc/VideoFrame$I420Buffer;Lcom/discord/org/webrtc/VideoFrame;)V

    return-void
.end method
