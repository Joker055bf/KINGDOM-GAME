.class public final synthetic Lcom/discord/org/webrtc/EglThread$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/discord/org/webrtc/EglThread$ReleaseMonitor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRelease(Lcom/discord/org/webrtc/EglThread;)Z
    .locals 0

    invoke-static {p1}, Lcom/discord/org/webrtc/EglThread;->lambda$create$1(Lcom/discord/org/webrtc/EglThread;)Z

    move-result p1

    return p1
.end method
