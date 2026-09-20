.class public Lcom/t4f/utils/AudioRecordManager;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4f/utils/AudioRecordManager$RequestPermissionInterface;,
        Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;,
        Lcom/t4f/utils/AudioRecordManager$AudioPlayInterface;,
        Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;,
        Lcom/t4f/utils/AudioRecordManager$AudioRecordRequestPermissionActivity;
    }
.end annotation


# static fields
.field private static currentAudioPath:Ljava/lang/String; = null

.field private static isRecording:Z = false

.field private static mContext:Landroid/app/Activity;

.field private static mInterface:Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;

.field private static mPlayInterface:Lcom/t4f/utils/AudioRecordManager$AudioPlayInterface;

.field private static mainHandler:Landroid/os/Handler;

.field private static mediaPlayer:Landroid/media/MediaPlayer;

.field private static mediaRecorder:Landroid/media/MediaRecorder;

.field private static permissionInterface:Lcom/t4f/utils/AudioRecordManager$RequestPermissionInterface;

.field private static volumeMonitorTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/t4f/utils/AudioRecordManager;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/t4f/utils/AudioRecordManager$AudioPlayInterface;
    .locals 1

    .line 28
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mPlayInterface:Lcom/t4f/utils/AudioRecordManager$AudioPlayInterface;

    return-object v0
.end method

.method static synthetic access$100()Landroid/media/MediaRecorder;
    .locals 1

    .line 28
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 28
    sget-boolean v0, Lcom/t4f/utils/AudioRecordManager;->isRecording:Z

    return v0
.end method

.method static synthetic access$300()Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;
    .locals 1

    .line 28
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mInterface:Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .line 28
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()V
    .locals 0

    .line 28
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->stopVolumeMonitoring()V

    return-void
.end method

.method static synthetic access$600()Lcom/t4f/utils/AudioRecordManager$RequestPermissionInterface;
    .locals 1

    .line 28
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->permissionInterface:Lcom/t4f/utils/AudioRecordManager$RequestPermissionInterface;

    return-object v0
.end method

.method static synthetic access$700()V
    .locals 0

    .line 28
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->setupAndStartRecording()V

    return-void
.end method

.method private static getAudioDuration(Ljava/lang/String;)F
    .locals 2

    .line 259
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 261
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 263
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float p0, p0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p0, v1

    .line 268
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 265
    :try_start_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 269
    throw p0
.end method

.method public static isRecording()Z
    .locals 1

    .line 214
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/t4f/utils/AudioRecordManager;->isRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$startRecording$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 85
    new-instance p1, Lcom/t4f/utils/AudioRecordManager$1;

    invoke-direct {p1}, Lcom/t4f/utils/AudioRecordManager$1;-><init>()V

    sput-object p1, Lcom/t4f/utils/AudioRecordManager;->permissionInterface:Lcom/t4f/utils/AudioRecordManager$RequestPermissionInterface;

    .line 98
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/t4f/utils/AudioRecordManager$AudioRecordRequestPermissionActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static playRecording(Ljava/lang/String;Lcom/t4f/utils/AudioRecordManager$AudioPlayInterface;)V
    .locals 2

    const-string v0, "AudioRecordManager"

    .line 167
    sput-object p1, Lcom/t4f/utils/AudioRecordManager;->mPlayInterface:Lcom/t4f/utils/AudioRecordManager$AudioPlayInterface;

    .line 168
    sget-object p1, Lcom/t4f/utils/AudioRecordManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 169
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->stopPlaying()V

    .line 172
    :cond_0
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object p1, Lcom/t4f/utils/AudioRecordManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 174
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 175
    sget-object p0, Lcom/t4f/utils/AudioRecordManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 176
    sget-object p0, Lcom/t4f/utils/AudioRecordManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    .line 177
    sget-object p0, Lcom/t4f/utils/AudioRecordManager;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance p1, Lcom/t4f/utils/AudioRecordManager$2;

    invoke-direct {p1}, Lcom/t4f/utils/AudioRecordManager$2;-><init>()V

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 186
    sget-object p0, Lcom/t4f/utils/AudioRecordManager;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance p1, Lcom/t4f/utils/AudioRecordManager$3;

    invoke-direct {p1}, Lcom/t4f/utils/AudioRecordManager$3;-><init>()V

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    const-string p0, "Playback started"

    .line 197
    invoke-static {v0, p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to play audio: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static setupAndStartRecording()V
    .locals 5

    .line 105
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    sput-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    .line 109
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 110
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 111
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 112
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    const/16 v2, 0x3e80

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 113
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    const/16 v2, 0x7d00

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 114
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    sget-object v2, Lcom/t4f/utils/AudioRecordManager;->currentAudioPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 116
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 117
    sput-boolean v1, Lcom/t4f/utils/AudioRecordManager;->isRecording:Z

    .line 119
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->startVolumeMonitoring()V

    const-string v0, "AudioRecordManager"

    const-string v1, "Recording started"

    .line 121
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 125
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->stopRecording()V

    .line 126
    sget-object v1, Lcom/t4f/utils/AudioRecordManager;->mInterface:Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;

    if-eqz v1, :cond_0

    .line 127
    sget-object v2, Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;->RecorderInitFailed:Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;

    invoke-virtual {v2}, Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;->getCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Recorder initialization failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 127
    invoke-interface {v1, v4, v2, v0, v3}, Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;->onRecordingFinished(ZILjava/lang/String;F)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static startRecording(Landroid/app/Activity;Ljava/lang/String;Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;)V
    .locals 2

    .line 64
    sput-object p2, Lcom/t4f/utils/AudioRecordManager;->mInterface:Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;

    .line 65
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->isRecording()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "AudioRecordManager"

    const-string p1, "Recording is already active"

    .line 66
    invoke-static {p0, p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object p0, Lcom/t4f/utils/AudioRecordManager;->mInterface:Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;

    if-eqz p0, :cond_0

    .line 68
    sget-object p1, Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;->RecorderInitFailed:Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;

    invoke-virtual {p1}, Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;->getCode()I

    move-result p1

    const-string p2, "Recorder initialization failed: Recording is already active"

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1, p2, v0}, Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;->onRecordingFinished(ZILjava/lang/String;F)V

    :cond_0
    return-void

    .line 73
    :cond_1
    sput-object p0, Lcom/t4f/utils/AudioRecordManager;->mContext:Landroid/app/Activity;

    .line 74
    sput-object p1, Lcom/t4f/utils/AudioRecordManager;->currentAudioPath:Ljava/lang/String;

    const-string p1, "android.permission.RECORD_AUDIO"

    .line 76
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 77
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->setupAndStartRecording()V

    return-void

    .line 82
    :cond_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    sget-object p2, Lcom/t4f/utils/AudioRecordManager;->mContext:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lcom/t4f/android/R$string;->tgs_audio_permission_request:I

    .line 83
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/t4f/android/R$string;->t4f_str_sure:I

    new-instance v0, Lcom/t4f/utils/AudioRecordManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/t4f/utils/AudioRecordManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    .line 84
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/t4f/android/R$string;->t4f_str_cancel:I

    const/4 p2, 0x0

    .line 100
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static startVolumeMonitoring()V
    .locals 2

    .line 218
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mInterface:Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    new-instance v0, Lcom/t4f/utils/AudioRecordManager$4;

    invoke-direct {v0}, Lcom/t4f/utils/AudioRecordManager$4;-><init>()V

    sput-object v0, Lcom/t4f/utils/AudioRecordManager;->volumeMonitorTask:Ljava/lang/Runnable;

    .line 248
    sget-object v1, Lcom/t4f/utils/AudioRecordManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static stopPlaying()V
    .locals 2

    .line 204
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 206
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 207
    sput-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const-string v0, "AudioRecordManager"

    const-string v1, "Playback stopped"

    .line 209
    invoke-static {v0, v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static stopRecording()V
    .locals 7

    .line 134
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    const-string v1, "AudioRecordManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 136
    :try_start_0
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->stopVolumeMonitoring()V

    .line 138
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 139
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 140
    sput-object v0, Lcom/t4f/utils/AudioRecordManager;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 141
    sput-boolean v2, Lcom/t4f/utils/AudioRecordManager;->isRecording:Z

    .line 144
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->currentAudioPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/t4f/utils/AudioRecordManager;->getAudioDuration(Ljava/lang/String;)F

    move-result v0

    .line 146
    sget-object v3, Lcom/t4f/utils/AudioRecordManager;->mInterface:Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;

    if-eqz v3, :cond_0

    .line 147
    sget-object v4, Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;->Success:Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;

    invoke-virtual {v4}, Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;->getCode()I

    move-result v4

    const-string v5, "Recording completed"

    const/4 v6, 0x1

    invoke-interface {v3, v6, v4, v5, v0}, Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;->onRecordingFinished(ZILjava/lang/String;F)V

    :cond_0
    const-string v0, "Recording stopped"

    .line 151
    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 153
    sput-boolean v2, Lcom/t4f/utils/AudioRecordManager;->isRecording:Z

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stopRecording: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v1, Lcom/t4f/utils/AudioRecordManager;->mInterface:Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;

    if-eqz v1, :cond_2

    .line 156
    sget-object v3, Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;->RecordFailed:Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;

    invoke-virtual {v3}, Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;->getCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to stop recording: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 156
    invoke-interface {v1, v2, v3, v0, v4}, Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;->onRecordingFinished(ZILjava/lang/String;F)V

    goto :goto_0

    .line 161
    :cond_1
    sput-boolean v2, Lcom/t4f/utils/AudioRecordManager;->isRecording:Z

    const-string v0, "Recording is not active or MediaRecorder is null"

    .line 162
    invoke-static {v1, v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static stopVolumeMonitoring()V
    .locals 2

    .line 252
    sget-object v0, Lcom/t4f/utils/AudioRecordManager;->volumeMonitorTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/t4f/utils/AudioRecordManager;->mainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 254
    sput-object v0, Lcom/t4f/utils/AudioRecordManager;->volumeMonitorTask:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
