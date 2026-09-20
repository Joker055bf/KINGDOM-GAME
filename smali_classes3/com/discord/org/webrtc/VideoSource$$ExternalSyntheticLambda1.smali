.class public final synthetic Lcom/discord/org/webrtc/VideoSource$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/discord/org/webrtc/VideoSink;


# instance fields
.field public final synthetic f$0:Lcom/discord/org/webrtc/VideoSource;


# direct methods
.method public synthetic constructor <init>(Lcom/discord/org/webrtc/VideoSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/VideoSource$$ExternalSyntheticLambda1;->f$0:Lcom/discord/org/webrtc/VideoSource;

    return-void
.end method


# virtual methods
.method public final onFrame(Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 1

    iget-object v0, p0, Lcom/discord/org/webrtc/VideoSource$$ExternalSyntheticLambda1;->f$0:Lcom/discord/org/webrtc/VideoSource;

    invoke-static {v0, p1}, Lcom/discord/org/webrtc/VideoSource;->$r8$lambda$oylMV7kRMEmwIrVDkxlK1no0p4U(Lcom/discord/org/webrtc/VideoSource;Lcom/discord/org/webrtc/VideoFrame;)V

    return-void
.end method
