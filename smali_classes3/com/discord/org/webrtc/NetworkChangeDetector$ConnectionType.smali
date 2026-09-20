.class public final enum Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;
.super Ljava/lang/Enum;
.source "NetworkChangeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/NetworkChangeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

.field public static final enum CONNECTION_2G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

.field public static final enum CONNECTION_3G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

.field public static final enum CONNECTION_4G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

.field public static final enum CONNECTION_5G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

.field public static final enum CONNECTION_BLUETOOTH:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

.field public static final enum CONNECTION_ETHERNET:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

.field public static final enum CONNECTION_NONE:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

.field public static final enum CONNECTION_UNKNOWN:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

.field public static final enum CONNECTION_UNKNOWN_CELLULAR:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

.field public static final enum CONNECTION_VPN:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

.field public static final enum CONNECTION_WIFI:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    const/4 v1, 0x0

    .line 19
    sget-object v2, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_ETHERNET:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_WIFI:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_5G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_4G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_3G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_2G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_BLUETOOTH:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_VPN:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_NONE:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    const-string v1, "CONNECTION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 21
    new-instance v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    const-string v1, "CONNECTION_ETHERNET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_ETHERNET:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 22
    new-instance v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    const-string v1, "CONNECTION_WIFI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_WIFI:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 23
    new-instance v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    const-string v1, "CONNECTION_5G"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_5G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 24
    new-instance v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    const-string v1, "CONNECTION_4G"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_4G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 25
    new-instance v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    const-string v1, "CONNECTION_3G"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_3G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 26
    new-instance v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    const-string v1, "CONNECTION_2G"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_2G:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 27
    new-instance v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    const-string v1, "CONNECTION_UNKNOWN_CELLULAR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 28
    new-instance v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    const-string v1, "CONNECTION_BLUETOOTH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_BLUETOOTH:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 29
    new-instance v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    const-string v1, "CONNECTION_VPN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_VPN:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 30
    new-instance v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    const-string v1, "CONNECTION_NONE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->CONNECTION_NONE:Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    .line 19
    invoke-static {}, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->$values()[Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->$VALUES:[Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 1

    .line 19
    const-class v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;
    .locals 1

    .line 19
    sget-object v0, Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->$VALUES:[Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/NetworkChangeDetector$ConnectionType;

    return-object v0
.end method
