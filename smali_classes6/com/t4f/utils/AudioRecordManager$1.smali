.class Lcom/t4f/utils/AudioRecordManager$1;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"

# interfaces
.implements Lcom/t4f/utils/AudioRecordManager$RequestPermissionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/utils/AudioRecordManager;->startRecording(Landroid/app/Activity;Ljava/lang/String;Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 89
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$700()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$300()Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 92
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$300()Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;

    move-result-object p1

    sget-object v0, Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;->PermissionDenied:Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;

    invoke-virtual {v0}, Lcom/t4f/utils/AudioRecordManager$TGSAudioRecordResultCode;->getCode()I

    move-result v0

    const-string v1, "Microphone permission denied."

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;->onRecordingFinished(ZILjava/lang/String;F)V

    :cond_1
    :goto_0
    return-void
.end method
