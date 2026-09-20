.class public final synthetic Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/discord/org/webrtc/VideoFileRenderer;

.field public final synthetic f$1:Lcom/discord/org/webrtc/VideoFrame;


# direct methods
.method public synthetic constructor <init>(Lcom/discord/org/webrtc/VideoFileRenderer;Lcom/discord/org/webrtc/VideoFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda3;->f$0:Lcom/discord/org/webrtc/VideoFileRenderer;

    iput-object p2, p0, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda3;->f$1:Lcom/discord/org/webrtc/VideoFrame;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda3;->f$0:Lcom/discord/org/webrtc/VideoFileRenderer;

    iget-object v1, p0, Lcom/discord/org/webrtc/VideoFileRenderer$$ExternalSyntheticLambda3;->f$1:Lcom/discord/org/webrtc/VideoFrame;

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/VideoFileRenderer;->$r8$lambda$q5PJHgbwLXSQpA5c719Br6IQloU(Lcom/discord/org/webrtc/VideoFileRenderer;Lcom/discord/org/webrtc/VideoFrame;)V

    return-void
.end method
