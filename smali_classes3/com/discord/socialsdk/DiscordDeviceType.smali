.class public final enum Lcom/discord/socialsdk/DiscordDeviceType;
.super Ljava/lang/Enum;
.source "DiscordDeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/socialsdk/DiscordDeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/socialsdk/DiscordDeviceType;

.field public static final enum BLUETOOTH_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

.field public static final enum BUILTIN_SPEAKER:Lcom/discord/socialsdk/DiscordDeviceType;

.field public static final enum INVALID:Lcom/discord/socialsdk/DiscordDeviceType;

.field public static final enum WIRED_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;


# direct methods
.method private static synthetic $values()[Lcom/discord/socialsdk/DiscordDeviceType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/discord/socialsdk/DiscordDeviceType;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/discord/socialsdk/DiscordDeviceType;->INVALID:Lcom/discord/socialsdk/DiscordDeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/socialsdk/DiscordDeviceType;->BLUETOOTH_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/discord/socialsdk/DiscordDeviceType;->BUILTIN_SPEAKER:Lcom/discord/socialsdk/DiscordDeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/discord/socialsdk/DiscordDeviceType;->WIRED_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/discord/socialsdk/DiscordDeviceType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/socialsdk/DiscordDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/socialsdk/DiscordDeviceType;->INVALID:Lcom/discord/socialsdk/DiscordDeviceType;

    .line 5
    new-instance v0, Lcom/discord/socialsdk/DiscordDeviceType;

    const-string v1, "BLUETOOTH_HEADSET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/socialsdk/DiscordDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/socialsdk/DiscordDeviceType;->BLUETOOTH_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    .line 6
    new-instance v0, Lcom/discord/socialsdk/DiscordDeviceType;

    const-string v1, "BUILTIN_SPEAKER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/discord/socialsdk/DiscordDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/socialsdk/DiscordDeviceType;->BUILTIN_SPEAKER:Lcom/discord/socialsdk/DiscordDeviceType;

    .line 7
    new-instance v0, Lcom/discord/socialsdk/DiscordDeviceType;

    const-string v1, "WIRED_HEADSET"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/discord/socialsdk/DiscordDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/socialsdk/DiscordDeviceType;->WIRED_HEADSET:Lcom/discord/socialsdk/DiscordDeviceType;

    .line 3
    invoke-static {}, Lcom/discord/socialsdk/DiscordDeviceType;->$values()[Lcom/discord/socialsdk/DiscordDeviceType;

    move-result-object v0

    sput-object v0, Lcom/discord/socialsdk/DiscordDeviceType;->$VALUES:[Lcom/discord/socialsdk/DiscordDeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/socialsdk/DiscordDeviceType;
    .locals 1

    .line 3
    const-class v0, Lcom/discord/socialsdk/DiscordDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/socialsdk/DiscordDeviceType;

    return-object p0
.end method

.method public static values()[Lcom/discord/socialsdk/DiscordDeviceType;
    .locals 1

    .line 3
    sget-object v0, Lcom/discord/socialsdk/DiscordDeviceType;->$VALUES:[Lcom/discord/socialsdk/DiscordDeviceType;

    invoke-virtual {v0}, [Lcom/discord/socialsdk/DiscordDeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/socialsdk/DiscordDeviceType;

    return-object v0
.end method
