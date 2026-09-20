.class public Lcom/discord/socialsdk/DiscordAudioManager;
.super Lcom/discord/socialsdk/DiscordAudioManagerInterface;
.source "DiscordAudioManager.java"


# static fields
.field private static instance:Lcom/discord/socialsdk/DiscordAudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/discord/socialsdk/DiscordAudioManager;
    .locals 2

    .line 16
    sget-object v0, Lcom/discord/socialsdk/DiscordAudioManager;->instance:Lcom/discord/socialsdk/DiscordAudioManager;

    if-nez v0, :cond_0

    const-string v0, "DiscordSocialSdk"

    const-string v1, "Creating new DiscordAudioManager instance"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v0, Lcom/discord/socialsdk/DiscordAudioManager;

    invoke-direct {v0, p0}, Lcom/discord/socialsdk/DiscordAudioManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/discord/socialsdk/DiscordAudioManager;->instance:Lcom/discord/socialsdk/DiscordAudioManager;

    .line 20
    :cond_0
    sget-object p0, Lcom/discord/socialsdk/DiscordAudioManager;->instance:Lcom/discord/socialsdk/DiscordAudioManager;

    return-object p0
.end method


# virtual methods
.method protected androidGetAudioDevices()[Landroid/media/AudioDeviceInfo;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/discord/socialsdk/DiscordAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getAvailableCommunicationDevices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/media/AudioDeviceInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/AudioDeviceInfo;

    return-object v0
.end method

.method public setActiveCall(Z)V
    .locals 2

    .line 43
    iput-boolean p1, p0, Lcom/discord/socialsdk/DiscordAudioManager;->isActiveCall:Z

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManager;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/discord/socialsdk/DiscordAudioManager;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 47
    invoke-virtual {p0}, Lcom/discord/socialsdk/DiscordAudioManager;->updateAudioDevices()V

    .line 48
    invoke-virtual {p0}, Lcom/discord/socialsdk/DiscordAudioManager;->updateAudioModeForCurrentState()V

    .line 49
    invoke-virtual {p0}, Lcom/discord/socialsdk/DiscordAudioManager;->updateActiveAudioDevice()V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManager;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/discord/socialsdk/DiscordAudioManager;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 52
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->clearCommunicationDevice()V

    .line 53
    invoke-virtual {p0}, Lcom/discord/socialsdk/DiscordAudioManager;->updateAudioModeForCurrentState()V

    :goto_0
    return-void
.end method

.method protected setActiveDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setActiveDevice to type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiscordSocialSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/discord/socialsdk/DiscordAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result p1

    return p1
.end method
