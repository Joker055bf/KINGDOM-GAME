.class Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType$1;
.super Ljava/util/HashMap;
.source "DeviceInfoToDiscordDeviceType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/discord/socialsdk/DiscordDeviceType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x2

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/discord/socialsdk/DiscordDeviceType;->BUILTIN_SPEAKER:Lcom/discord/socialsdk/DiscordDeviceType;

    invoke-virtual {p0, v0, v1}, Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1b

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/discord/socialsdk/DiscordDeviceType;->BLUETOOTH_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    invoke-virtual {p0, v0, v1}, Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1a

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/discord/socialsdk/DiscordDeviceType;->BLUETOOTH_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    invoke-virtual {p0, v0, v1}, Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/discord/socialsdk/DiscordDeviceType;->BLUETOOTH_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    invoke-virtual {p0, v0, v1}, Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x17

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/discord/socialsdk/DiscordDeviceType;->BLUETOOTH_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    invoke-virtual {p0, v0, v1}, Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x16

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/discord/socialsdk/DiscordDeviceType;->WIRED_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    invoke-virtual {p0, v0, v1}, Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/discord/socialsdk/DiscordDeviceType;->WIRED_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    invoke-virtual {p0, v0, v1}, Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/discord/socialsdk/DiscordDeviceType;->WIRED_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    invoke-virtual {p0, v0, v1}, Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/discord/socialsdk/DiscordDeviceType;->WIRED_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    invoke-virtual {p0, v0, v1}, Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
