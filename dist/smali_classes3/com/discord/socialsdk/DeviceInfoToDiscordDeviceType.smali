.class public Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType;
.super Ljava/lang/Object;
.source "DeviceInfoToDiscordDeviceType.java"


# static fields
.field public static final mapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/discord/socialsdk/DiscordDeviceType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType$1;

    invoke-direct {v0}, Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType$1;-><init>()V

    sput-object v0, Lcom/discord/socialsdk/DeviceInfoToDiscordDeviceType;->mapping:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
