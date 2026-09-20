.class public final synthetic Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/discord/org/webrtc/EglRenderer;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$2:Lcom/discord/org/webrtc/EglRenderer$RenderListener;


# direct methods
.method public synthetic constructor <init>(Lcom/discord/org/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lcom/discord/org/webrtc/EglRenderer$RenderListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda3;->f$0:Lcom/discord/org/webrtc/EglRenderer;

    iput-object p2, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda3;->f$2:Lcom/discord/org/webrtc/EglRenderer$RenderListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda3;->f$0:Lcom/discord/org/webrtc/EglRenderer;

    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda3;->f$2:Lcom/discord/org/webrtc/EglRenderer$RenderListener;

    invoke-static {v0, v1, v2}, Lcom/discord/org/webrtc/EglRenderer;->$r8$lambda$bCcZW4hwVtOKI9erUbbuqN_MKsI(Lcom/discord/org/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lcom/discord/org/webrtc/EglRenderer$RenderListener;)V

    return-void
.end method
