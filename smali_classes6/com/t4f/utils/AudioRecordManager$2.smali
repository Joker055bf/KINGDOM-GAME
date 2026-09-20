.class Lcom/t4f/utils/AudioRecordManager$2;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/utils/AudioRecordManager;->playRecording(Ljava/lang/String;Lcom/t4f/utils/AudioRecordManager$AudioPlayInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 181
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$000()Lcom/t4f/utils/AudioRecordManager$AudioPlayInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$000()Lcom/t4f/utils/AudioRecordManager$AudioPlayInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/t4f/utils/AudioRecordManager$AudioPlayInterface;->onPlayFinish()V

    :cond_0
    return-void
.end method
