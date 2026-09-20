.class Lcom/t4f/utils/AudioRecordManager$4;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/utils/AudioRecordManager;->startVolumeMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 226
    :try_start_0
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$100()Landroid/media/MediaRecorder;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :try_start_1
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$100()Landroid/media/MediaRecorder;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$100()Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v1

    if-lez v1, :cond_1

    int-to-float v1, v1

    const v2, 0x46fffe00    # 32767.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    move v1, v2

    .line 233
    :cond_0
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$300()Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;

    move-result-object v2

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;->onVolumeChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$300()Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;

    move-result-object v1

    const-string v2, "0.00"

    invoke-interface {v1, v2}, Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;->onVolumeChanged(Ljava/lang/String;)V

    .line 237
    :goto_0
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$400()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 239
    :cond_2
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$500()V

    .line 241
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 243
    :catch_0
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$500()V

    :goto_2
    return-void
.end method
