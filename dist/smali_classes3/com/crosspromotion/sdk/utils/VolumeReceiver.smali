.class public Lcom/crosspromotion/sdk/utils/VolumeReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crosspromotion/sdk/utils/VolumeReceiver$MuteModeListener;
    }
.end annotation


# static fields
.field public static final ACTION_VOLUME_CHANGED:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"


# instance fields
.field private mMuteModeListener:Lcom/crosspromotion/sdk/utils/VolumeReceiver$MuteModeListener;

.field systemVolume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/crosspromotion/sdk/utils/VolumeReceiver;->systemVolume:I

    return-void
.end method

.method private handleSystemVolumeChange(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iput p2, p0, Lcom/crosspromotion/sdk/utils/VolumeReceiver;->systemVolume:I

    iget-object p1, p0, Lcom/crosspromotion/sdk/utils/VolumeReceiver;->mMuteModeListener:Lcom/crosspromotion/sdk/utils/VolumeReceiver$MuteModeListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lcom/crosspromotion/sdk/utils/VolumeReceiver$MuteModeListener;->onMuteMode(Z)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/crosspromotion/sdk/utils/VolumeReceiver;->systemVolume:I

    if-eq v0, p1, :cond_3

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/crosspromotion/sdk/utils/VolumeReceiver;->systemVolume:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "system volume"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/crosspromotion/sdk/utils/VolumeReceiver;->mMuteModeListener:Lcom/crosspromotion/sdk/utils/VolumeReceiver$MuteModeListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Lcom/crosspromotion/sdk/utils/VolumeReceiver$MuteModeListener;->onMuteMode(Z)V

    nop

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/crosspromotion/sdk/utils/VolumeReceiver;->handleSystemVolumeChange(Landroid/content/Context;I)V

    goto :goto_1

    :cond_0
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    const/4 v1, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/crosspromotion/sdk/utils/VolumeReceiver;->handleSystemVolumeChange(Landroid/content/Context;I)V

    const-string p1, "normal mode"

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/crosspromotion/sdk/utils/VolumeReceiver;->handleSystemVolumeChange(Landroid/content/Context;I)V

    const-string/jumbo p1, "vibrate mode"

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/crosspromotion/sdk/utils/VolumeReceiver;->mMuteModeListener:Lcom/crosspromotion/sdk/utils/VolumeReceiver$MuteModeListener;

    if-eqz p1, :cond_4

    invoke-interface {p1, v0}, Lcom/crosspromotion/sdk/utils/VolumeReceiver$MuteModeListener;->onMuteMode(Z)V

    :cond_4
    const-string/jumbo p1, "silent mode"

    :goto_0
    invoke-static {p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setMuteModeListener(Lcom/crosspromotion/sdk/utils/VolumeReceiver$MuteModeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/utils/VolumeReceiver;->mMuteModeListener:Lcom/crosspromotion/sdk/utils/VolumeReceiver$MuteModeListener;

    return-void
.end method

.method public unRegister(Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
