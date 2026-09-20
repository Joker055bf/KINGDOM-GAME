.class public abstract Lcom/discord/socialsdk/DiscordAudioManagerInterface;
.super Ljava/lang/Object;
.source "DiscordAudioManagerInterface.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "DiscordSocialSdk"


# instance fields
.field protected final audioDeviceCallback:Landroid/media/AudioDeviceCallback;

.field protected final audioDevices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final audioManager:Landroid/media/AudioManager;

.field protected final context:Landroid/content/Context;

.field protected expectedMode:I

.field protected isActiveCall:Z

.field protected preventCommsForBluetooth:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->audioDevices:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->preventCommsForBluetooth:Z

    .line 18
    iput-boolean v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->isActiveCall:Z

    .line 19
    iput v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->expectedMode:I

    .line 22
    iput-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->context:Landroid/content/Context;

    const-string v0, "audio"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->audioManager:Landroid/media/AudioManager;

    .line 25
    new-instance p1, Lcom/discord/socialsdk/DiscordAudioManagerInterface$1;

    invoke-direct {p1, p0}, Lcom/discord/socialsdk/DiscordAudioManagerInterface$1;-><init>(Lcom/discord/socialsdk/DiscordAudioManagerInterface;)V

    iput-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    return-void
.end method


# virtual methods
.method protected abstract androidGetAudioDevices()[Landroid/media/AudioDeviceInfo;
.end method

.method protected findDeviceOfType(Lcom/discord/socialsdk/DiscordDeviceType;)Landroid/media/AudioDeviceInfo;
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->audioDevices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceInfo;

    .line 56
    sget-object v2, Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType;->mapping:Ljava/util/HashMap;

    .line 57
    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/discord/socialsdk/DiscordDeviceType;->INVALID:Lcom/discord/socialsdk/DiscordDeviceType;

    .line 56
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/discord/socialsdk/DiscordDeviceType;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected isBluetoothConnected()Z
    .locals 1

    .line 107
    sget-object v0, Lcom/discord/socialsdk/DiscordDeviceType;->BLUETOOTH_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    invoke-virtual {p0, v0}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->findDeviceOfType(Lcom/discord/socialsdk/DiscordDeviceType;)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract setActiveCall(Z)V
.end method

.method protected abstract setActiveDevice(Landroid/media/AudioDeviceInfo;)Z
.end method

.method public setPreventCommsForBluetooth(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->preventCommsForBluetooth:Z

    return-void
.end method

.method protected updateActiveAudioDevice()V
    .locals 2

    .line 66
    iget v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->expectedMode:I

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/discord/socialsdk/DiscordDeviceType;->WIRED_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    invoke-virtual {p0, v0}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->findDeviceOfType(Lcom/discord/socialsdk/DiscordDeviceType;)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0, v0}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->setActiveDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 75
    :cond_1
    sget-object v0, Lcom/discord/socialsdk/DiscordDeviceType;->BLUETOOTH_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    invoke-virtual {p0, v0}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->findDeviceOfType(Lcom/discord/socialsdk/DiscordDeviceType;)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0, v0}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->setActiveDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 80
    :cond_2
    sget-object v0, Lcom/discord/socialsdk/DiscordDeviceType;->BUILTIN_SPEAKER:Lcom/discord/socialsdk/DiscordDeviceType;

    invoke-virtual {p0, v0}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->findDeviceOfType(Lcom/discord/socialsdk/DiscordDeviceType;)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 81
    invoke-virtual {p0, v0}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->setActiveDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const-string v0, "DiscordSocialSdk"

    const-string v1, "Unable to set active device"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected updateAudioDevices()V
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->audioDevices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 90
    invoke-virtual {p0}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->androidGetAudioDevices()[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 91
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 92
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->audioDevices:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected updateAudioModeForCurrentState()V
    .locals 5

    .line 111
    iget-boolean v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->isActiveCall:Z

    const/4 v1, 0x0

    const-string v2, "DiscordSocialSdk"

    if-eqz v0, :cond_3

    .line 112
    iget-boolean v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->preventCommsForBluetooth:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->isBluetoothConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x3

    if-eqz v0, :cond_2

    .line 114
    iget v4, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->expectedMode:I

    if-eq v4, v3, :cond_2

    const-string v0, "Bluetooth not connected, switching to communication mode"

    .line 115
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput v3, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->expectedMode:I

    .line 117
    iget-object v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_2

    :cond_2
    if-nez v0, :cond_4

    .line 118
    iget v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->expectedMode:I

    if-ne v0, v3, :cond_4

    const-string v0, "Bluetooth connected and preventCommsForBluetooth=true, switching to normal mode"

    .line 119
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput v1, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->expectedMode:I

    .line 122
    iget-object v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_2

    .line 125
    :cond_3
    iget v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->expectedMode:I

    if-eqz v0, :cond_4

    const-string v0, "Active call ended, switching to normal mode"

    .line 126
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput v1, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->expectedMode:I

    .line 128
    iget-object v0, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    :cond_4
    :goto_2
    return-void
.end method
