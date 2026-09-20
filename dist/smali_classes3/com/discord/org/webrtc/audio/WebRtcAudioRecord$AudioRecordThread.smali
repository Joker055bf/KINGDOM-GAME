.class Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;
.super Ljava/lang/Thread;
.source "WebRtcAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordThread"
.end annotation


# instance fields
.field private volatile keepAlive:Z

.field final synthetic this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;


# direct methods
.method public constructor <init>(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    .line 121
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/16 v0, -0x13

    .line 126
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 127
    invoke-static {}, Lcom/discord/org/webrtc/audio/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioRecordThread"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecordExternal"

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v0}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetaudioRecord(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

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
    invoke-static {v0}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$smassertTrue(Z)V

    .line 131
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v0, v4}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$mdoAudioRecordStateCallback(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;I)V

    .line 133
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 136
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    .line 138
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    if-eqz v2, :cond_6

    .line 139
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetaudioRecord(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v2

    iget-object v5, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v5}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v6}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v10

    .line 140
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ne v10, v2, :cond_5

    .line 141
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetmicrophoneMute(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 143
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v5, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v5}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetemptyBytes(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 148
    :cond_2
    iget-boolean v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    if-eqz v2, :cond_4

    .line 151
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetaudioRecord(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/media/AudioRecord;->getTimestamp(Landroid/media/AudioTimestamp;I)I

    move-result v2

    if-nez v2, :cond_3

    .line 153
    iget-wide v5, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x0

    :goto_2
    move-wide v11, v5

    .line 156
    iget-object v7, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v7}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetnativeAudioRecord(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)J

    move-result-wide v8

    invoke-static/range {v7 .. v12}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$mnativeDataIsRecorded(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;JIJ)V

    .line 158
    :cond_4
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetaudioSamplesReadyCallback(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v5, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v5}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    iget-object v6, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v6}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 162
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    iget-object v7, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v7}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetbyteBuffer(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    add-int/2addr v6, v7

    .line 161
    invoke-static {v2, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 163
    iget-object v5, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v5}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetaudioSamplesReadyCallback(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;

    move-result-object v5

    new-instance v6, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioSamples;

    iget-object v7, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v7}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetaudioRecord(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v7

    .line 164
    invoke-virtual {v7}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v7

    iget-object v8, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v8}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetaudioRecord(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v8

    .line 165
    invoke-virtual {v8}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v8

    iget-object v9, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v9}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetaudioRecord(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v9

    invoke-direct {v6, v7, v8, v9, v2}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioSamples;-><init>(III[B)V

    .line 163
    invoke-interface {v5, v6}, Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;->onWebRtcAudioRecordSamplesReady(Lcom/discord/org/webrtc/audio/JavaAudioDeviceModule$AudioSamples;)V

    goto/16 :goto_1

    .line 168
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "AudioRecord.read failed: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {v1, v2}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x3

    if-ne v10, v5, :cond_1

    .line 171
    iput-boolean v4, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 172
    iget-object v5, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v5, v2}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$mreportWebRtcAudioRecordError(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 178
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v0}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetaudioRecord(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 179
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v0}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$fgetaudioRecord(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 180
    iget-object v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;

    invoke-static {v0, v3}, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;->-$$Nest$mdoAudioRecordStateCallback(Lcom/discord/org/webrtc/audio/WebRtcAudioRecord;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AudioRecord.stop failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/discord/org/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public stopThread()V
    .locals 2

    const-string v0, "WebRtcAudioRecordExternal"

    const-string/jumbo v1, "stopThread"

    .line 190
    invoke-static {v0, v1}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/discord/org/webrtc/audio/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    return-void
.end method
