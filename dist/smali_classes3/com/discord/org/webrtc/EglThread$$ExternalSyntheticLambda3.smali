.class public final synthetic Lcom/discord/org/webrtc/EglThread$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/discord/org/webrtc/EglBase$EglConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/discord/org/webrtc/EglBase$EglConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/EglThread$$ExternalSyntheticLambda3;->f$0:Lcom/discord/org/webrtc/EglBase$EglConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/discord/org/webrtc/EglThread$$ExternalSyntheticLambda3;->f$0:Lcom/discord/org/webrtc/EglBase$EglConnection;

    invoke-interface {v0}, Lcom/discord/org/webrtc/RefCounted;->release()V

    return-void
.end method
