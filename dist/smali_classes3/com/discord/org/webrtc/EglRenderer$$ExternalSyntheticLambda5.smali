.class public final synthetic Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/discord/org/webrtc/EglRenderer;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/discord/org/webrtc/EglRenderer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda5;->f$0:Lcom/discord/org/webrtc/EglRenderer;

    iput-object p2, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda5;->f$0:Lcom/discord/org/webrtc/EglRenderer;

    iget-object v1, p0, Lcom/discord/org/webrtc/EglRenderer$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/EglRenderer;->$r8$lambda$Zs_ok4P8B2OXs7KuDBBVc7okXhI(Lcom/discord/org/webrtc/EglRenderer;Ljava/lang/Runnable;)V

    return-void
.end method
