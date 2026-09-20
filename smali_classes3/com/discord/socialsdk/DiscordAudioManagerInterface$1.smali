.class Lcom/discord/socialsdk/DiscordAudioManagerInterface$1;
.super Landroid/media/AudioDeviceCallback;
.source "DiscordAudioManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/socialsdk/DiscordAudioManagerInterface;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/discord/socialsdk/DiscordAudioManagerInterface;


# direct methods
.method constructor <init>(Lcom/discord/socialsdk/DiscordAudioManagerInterface;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface$1;->this$0:Lcom/discord/socialsdk/DiscordAudioManagerInterface;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 28
    array-length v0, p1

    if-lez v0, :cond_2

    .line 29
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 30
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    iget-object v3, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface$1;->this$0:Lcom/discord/socialsdk/DiscordAudioManagerInterface;

    iget-object v3, v3, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->audioDevices:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface$1;->this$0:Lcom/discord/socialsdk/DiscordAudioManagerInterface;

    invoke-virtual {p1}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->updateAudioModeForCurrentState()V

    .line 35
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface$1;->this$0:Lcom/discord/socialsdk/DiscordAudioManagerInterface;

    invoke-virtual {p1}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->updateActiveAudioDevice()V

    :cond_2
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 41
    array-length v0, p1

    if-lez v0, :cond_2

    .line 42
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 43
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    iget-object v3, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface$1;->this$0:Lcom/discord/socialsdk/DiscordAudioManagerInterface;

    iget-object v3, v3, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->audioDevices:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface$1;->this$0:Lcom/discord/socialsdk/DiscordAudioManagerInterface;

    invoke-virtual {p1}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->updateAudioModeForCurrentState()V

    .line 48
    iget-object p1, p0, Lcom/discord/socialsdk/DiscordAudioManagerInterface$1;->this$0:Lcom/discord/socialsdk/DiscordAudioManagerInterface;

    invoke-virtual {p1}, Lcom/discord/socialsdk/DiscordAudioManagerInterface;->updateActiveAudioDevice()V

    :cond_2
    return-void
.end method
