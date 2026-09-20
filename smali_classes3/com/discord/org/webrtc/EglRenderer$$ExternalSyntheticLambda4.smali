.class public final synthetic Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/discord/org/webrtc/EglThread$RenderUpdate;


# instance fields
.field public final synthetic f$0:Lcom/discord/org/webrtc/EglRenderer;

.field public final synthetic f$1:Lcom/discord/org/webrtc/VideoFrame;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/discord/org/webrtc/EglRenderer;Lcom/discord/org/webrtc/VideoFrame;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda4;->f$0:Lcom/discord/org/webrtc/EglRenderer;

    iput-object p2, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda4;->f$1:Lcom/discord/org/webrtc/VideoFrame;

    iput-wide p3, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda4;->f$2:J

    return-void
.end method


# virtual methods
.method public final update(Z)V
    .locals 4

    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda4;->f$0:Lcom/discord/org/webrtc/EglRenderer;

    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda4;->f$1:Lcom/discord/org/webrtc/VideoFrame;

    iget-wide v2, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda4;->f$2:J

    invoke-static {v0, v1, v2, v3, p1}, Lcom/discord/org/webrtc/EglRenderer;->$r8$lambda$aY92OGVCbWYq3gMRKqc6mgcHVSg(Lcom/discord/org/webrtc/EglRenderer;Lcom/discord/org/webrtc/VideoFrame;JZ)V

    return-void
.end method
