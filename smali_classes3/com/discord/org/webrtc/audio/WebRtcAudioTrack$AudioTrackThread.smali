.class Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;
.super Ljava/lang/Thread;
.source "WebRtcAudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioTrackThread"
.end annotation


# instance fields
.field private bufferManager:Lcom/discord/org/webrtc/audio/LowLatencyAudioBufferManager;

.field private volatile keepAlive:Z

.field final synthetic this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;


# direct methods
.method public constructor <init>(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    .line 91
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 92
    new-instance p1, Lcom/discord/org/webrtc/audio/LowLatencyAudioBufferManager;

    invoke-direct {p1}, Lcom/discord/org/webrtc/audio/LowLatencyAudioBufferManager;-><init>()V

    iput-object p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->bufferManager:Lcom/discord/org/webrtc/audio/LowLatencyAudioBufferManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/16 v0, -0x13

    .line 97
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 98
    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioTrackThread"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$fgetaudioTrack(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-static {v0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$smassertTrue(Z)V

    .line 102
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v0, v4}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$mdoAudioTrackStateCallback(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;I)V

    .line 106
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 108
    :goto_1
    iget-boolean v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    if-eqz v2, :cond_5

    .line 112
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$fgetnativeAudioTrack(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)J

    move-result-wide v5

    invoke-static {v5, v6, v0}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$smnativeGetPlayoutData(JI)V

    .line 116
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gt v0, v2, :cond_1

    move v2, v3

    goto :goto_2

    :cond_1
    move v2, v4

    :goto_2
    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$smassertTrue(Z)V

    .line 117
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$fgetspeakerMute(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 119
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v5, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v5}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$fgetemptyBytes(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 120
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$fgetaudioTrack(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v2

    iget-object v5, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v5}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v2, v5, v0, v4}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AudioTrack.write played invalid number of bytes: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v2, :cond_3

    .line 128
    iput-boolean v4, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 129
    iget-object v5, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AudioTrack.write failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$mreportWebRtcAudioTrackError(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;Ljava/lang/String;)V

    .line 132
    :cond_3
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$fgetuseLowLatency(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->bufferManager:Lcom/discord/org/webrtc/audio/LowLatencyAudioBufferManager;

    iget-object v5, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v5}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$fgetaudioTrack(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/discord/org/webrtc/audio/LowLatencyAudioBufferManager;->maybeAdjustBufferSize(Landroid/media/AudioTrack;)V

    .line 138
    :cond_4
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public stopThread()V
    .locals 2

    const-string v0, "WebRtcAudioTrackExternal"

    const-string/jumbo v1, "stopThread"

    .line 149
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    return-void
.end method
