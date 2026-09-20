.class public Lcom/discord/socialsdk/DiscordAudioManagerLegacy;
.super Lcom/discord/socialsdk/DiscordAudioManagerInterface;
.source "DiscordAudioManagerLegacy.java"


# static fields
.field private static instance:Lcom/discord/socialsdk/DiscordAudioManagerLegacy;


# instance fields
.field private scoAvailableOffCall:Z

.field private final scoStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->scoAvailableOffCall:Z

    .line 31
    invoke-virtual {p0}, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->updateAudioDevices()V

    .line 32
    new-instance p1, Lcom/discord/socialsdk/DiscordAudioManagerLegacy$1;

    invoke-direct {p1, p0}, Lcom/discord/socialsdk/DiscordAudioManagerLegacy$1;-><init>(Lcom/discord/socialsdk/DiscordAudioManagerLegacy;)V

    iput-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->scoStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/discord/socialsdk/DiscordAudioManagerLegacy;
    .locals 2

    .line 22
    sget-object v0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->instance:Lcom/discord/socialsdk/DiscordAudioManagerLegacy;

    if-nez v0, :cond_0

    const-string v0, "DiscordSocialSdk"

    const-string v1, "Creating new DiscordAudioManagerLegacy instance"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;

    invoke-direct {v0, p0}, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->instance:Lcom/discord/socialsdk/DiscordAudioManagerLegacy;

    .line 26
    :cond_0
    sget-object p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->instance:Lcom/discord/socialsdk/DiscordAudioManagerLegacy;

    return-object p0
.end method


# virtual methods
.method protected androidGetAudioDevices()[Landroid/media/AudioDeviceInfo;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public setActiveCall(Z)V
    .locals 3

    .line 91
    iput-boolean p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->isActiveCall:Z

    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result p1

    iput-boolean p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->scoAvailableOffCall:Z

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->scoStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 100
    invoke-virtual {p0}, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->updateAudioDevices()V

    .line 101
    invoke-virtual {p0}, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->updateAudioModeForCurrentState()V

    .line 102
    invoke-virtual {p0}, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->updateActiveAudioDevice()V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 106
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 108
    :cond_2
    iget-boolean p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->scoAvailableOffCall:Z

    if-eqz p1, :cond_3

    .line 109
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->scoStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 112
    invoke-virtual {p0}, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->updateAudioModeForCurrentState()V

    :goto_0
    return-void
.end method

.method protected setActiveDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setActiveDevice to type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DiscordSocialSdk"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v1, Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType;->mapping:Ljava/util/HashMap;

    .line 60
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v3, Lcom/discord/socialsdk/DiscordDeviceType;->INVALID:Lcom/discord/socialsdk/DiscordDeviceType;

    .line 59
    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/discord/socialsdk/DiscordDeviceType;

    .line 61
    sget-object v1, Lcom/discord/socialsdk/DiscordDeviceType;->WIRED_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 63
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 64
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    return v3

    .line 66
    :cond_1
    sget-object v1, Lcom/discord/socialsdk/DiscordDeviceType;->BLUETOOTH_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    if-ne p1, v1, :cond_3

    .line 67
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 69
    iget-boolean p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->scoAvailableOffCall:Z

    if-nez p1, :cond_2

    const-string p1, "Bluetooth SCO not available off call, can\'t activate SCO device"

    .line 70
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 75
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V

    return v3

    .line 78
    :cond_3
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 79
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 80
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerLegacy;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    return v3
.end method
