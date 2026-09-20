.class public final synthetic Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/discord/org/webrtc/EglRenderer;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/discord/org/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/discord/org/webrtc/EglRenderer;

    iput-object p2, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda0;->f$0:Lcom/discord/org/webrtc/EglRenderer;

    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/EglRenderer;->$r8$lambda$EVjXDp2oprUJPTbWdv_nYShVSfU(Lcom/discord/org/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
