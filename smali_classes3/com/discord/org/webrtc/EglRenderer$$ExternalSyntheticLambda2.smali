.class public final synthetic Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/discord/org/webrtc/EglRenderer;

.field public final synthetic f$1:Lcom/discord/org/webrtc/RendererCommon$GlDrawer;

.field public final synthetic f$2:Lcom/discord/org/webrtc/EglRenderer$FrameListener;

.field public final synthetic f$3:F

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/discord/org/webrtc/EglRenderer;Lcom/discord/org/webrtc/RendererCommon$GlDrawer;Lcom/discord/org/webrtc/EglRenderer$FrameListener;FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda2;->f$0:Lcom/discord/org/webrtc/EglRenderer;

    iput-object p2, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda2;->f$1:Lcom/discord/org/webrtc/RendererCommon$GlDrawer;

    iput-object p3, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda2;->f$2:Lcom/discord/org/webrtc/EglRenderer$FrameListener;

    iput p4, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda2;->f$3:F

    iput-boolean p5, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda2;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda2;->f$0:Lcom/discord/org/webrtc/EglRenderer;

    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda2;->f$1:Lcom/discord/org/webrtc/RendererCommon$GlDrawer;

    iget-object v2, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda2;->f$2:Lcom/discord/org/webrtc/EglRenderer$FrameListener;

    iget v3, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda2;->f$3:F

    iget-boolean v4, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda2;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/discord/org/webrtc/EglRenderer;->$r8$lambda$1Oxo9FJ52ocM5qi6Jg7rQn5gRLA(Lcom/discord/org/webrtc/EglRenderer;Lcom/discord/org/webrtc/RendererCommon$GlDrawer;Lcom/discord/org/webrtc/EglRenderer$FrameListener;FZ)V

    return-void
.end method
