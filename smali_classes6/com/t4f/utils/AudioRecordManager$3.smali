.class Lcom/t4f/utils/AudioRecordManager$3;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 190
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$000()Lcom/t4f/utils/AudioRecordManager$AudioPlayInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    invoke-static {}, Lcom/t4f/utils/AudioRecordManager;->access$000()Lcom/t4f/utils/AudioRecordManager$AudioPlayInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/t4f/utils/AudioRecordManager$AudioPlayInterface;->onPlayFinish()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
