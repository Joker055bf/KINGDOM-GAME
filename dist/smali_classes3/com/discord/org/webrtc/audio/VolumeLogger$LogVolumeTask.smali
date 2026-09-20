.class Lcom/discord/org/webrtc/audio/VolumeLogger$LogVolumeTask;
.super Ljava/util/TimerTask;
.source "VolumeLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/audio/VolumeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogVolumeTask"
.end annotation


# instance fields
.field private final maxRingVolume:I

.field private final maxVoiceCallVolume:I

.field final synthetic this$0:Lcom/discord/org/webrtc/audio/VolumeLogger;


# direct methods
.method constructor <init>(Lcom/discord/org/webrtc/audio/VolumeLogger;II)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/discord/org/webrtc/audio/VolumeLogger$LogVolumeTask;->this$0:Lcom/discord/org/webrtc/audio/VolumeLogger;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 56
    iput p2, p0, Lcom/discord/org/webrtc/audio/VolumeLogger$LogVolumeTask;->maxRingVolume:I

    .line 57
    iput p3, p0, Lcom/discord/org/webrtc/audio/VolumeLogger$LogVolumeTask;->maxVoiceCallVolume:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/VolumeLogger$LogVolumeTask;->this$0:Lcom/discord/org/webrtc/audio/VolumeLogger;

    invoke-static {v0}, Lcom/discord/org/webrtc/audio/VolumeLogger;->-$$Nest$fgetaudioManager(Lcom/discord/org/webrtc/audio/VolumeLogger;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ")"

    const-string v3, " (max="

    const-string v4, "VolumeLogger"

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/VolumeLogger$LogVolumeTask;->this$0:Lcom/discord/org/webrtc/audio/VolumeLogger;

    invoke-static {v0}, Lcom/discord/org/webrtc/audio/VolumeLogger;->-$$Nest$fgetaudioManager(Lcom/discord/org/webrtc/audio/VolumeLogger;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    .line 65
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget v1, p0, Lcom/discord/org/webrtc/audio/VolumeLogger$LogVolumeTask;->maxRingVolume:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "STREAM_RING stream volume: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v4, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/VolumeLogger$LogVolumeTask;->this$0:Lcom/discord/org/webrtc/audio/VolumeLogger;

    invoke-static {v0}, Lcom/discord/org/webrtc/audio/VolumeLogger;->-$$Nest$fgetaudioManager(Lcom/discord/org/webrtc/audio/VolumeLogger;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget v1, p0, Lcom/discord/org/webrtc/audio/VolumeLogger$LogVolumeTask;->maxVoiceCallVolume:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VOICE_CALL stream volume: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v4, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
