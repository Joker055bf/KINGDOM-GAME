.class public final enum Lcom/discord/org/webrtc/PeerConnection$AdapterType;
.super Ljava/lang/Enum;
.source "PeerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdapterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/PeerConnection$AdapterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/PeerConnection$AdapterType;

.field public static final enum ADAPTER_TYPE_ANY:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

.field private static final BY_BITMASK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/discord/org/webrtc/PeerConnection$AdapterType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CELLULAR:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

.field public static final enum CELLULAR_2G:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

.field public static final enum CELLULAR_3G:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

.field public static final enum CELLULAR_4G:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

.field public static final enum CELLULAR_5G:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

.field public static final enum ETHERNET:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

.field public static final enum LOOPBACK:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

.field public static final enum UNKNOWN:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

.field public static final enum VPN:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

.field public static final enum WIFI:Lcom/discord/org/webrtc/PeerConnection$AdapterType;


# instance fields
.field public final bitMask:Ljava/lang/Integer;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/PeerConnection$AdapterType;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    const/4 v1, 0x0

    .line 391
    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->UNKNOWN:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->ETHERNET:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->WIFI:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->CELLULAR:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->VPN:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->LOOPBACK:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->ADAPTER_TYPE_ANY:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->CELLULAR_2G:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->CELLULAR_3G:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->CELLULAR_4G:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->CELLULAR_5G:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 392
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/discord/org/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->UNKNOWN:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    .line 393
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ETHERNET"

    invoke-direct {v0, v4, v2, v3}, Lcom/discord/org/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->ETHERNET:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    .line 394
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-direct {v0, v4, v2, v3}, Lcom/discord/org/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->WIFI:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    .line 395
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CELLULAR"

    const/4 v5, 0x3

    invoke-direct {v0, v4, v5, v3}, Lcom/discord/org/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->CELLULAR:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    .line 396
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "VPN"

    invoke-direct {v0, v5, v2, v4}, Lcom/discord/org/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->VPN:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    .line 397
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "LOOPBACK"

    const/4 v5, 0x5

    invoke-direct {v0, v4, v5, v2}, Lcom/discord/org/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->LOOPBACK:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    .line 398
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "ADAPTER_TYPE_ANY"

    const/4 v5, 0x6

    invoke-direct {v0, v4, v5, v2}, Lcom/discord/org/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->ADAPTER_TYPE_ANY:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    .line 399
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "CELLULAR_2G"

    const/4 v5, 0x7

    invoke-direct {v0, v4, v5, v2}, Lcom/discord/org/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->CELLULAR_2G:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    .line 400
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "CELLULAR_3G"

    invoke-direct {v0, v4, v3, v2}, Lcom/discord/org/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->CELLULAR_3G:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    .line 401
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CELLULAR_4G"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v2}, Lcom/discord/org/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->CELLULAR_4G:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    .line 402
    new-instance v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CELLULAR_5G"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v2}, Lcom/discord/org/webrtc/PeerConnection$AdapterType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->CELLULAR_5G:Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    .line 391
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->$values()[Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->BY_BITMASK:Ljava/util/Map;

    .line 410
    invoke-static {}, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->values()[Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 411
    sget-object v4, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->BY_BITMASK:Ljava/util/Map;

    iget-object v5, v3, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->bitMask:Ljava/lang/Integer;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 405
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 406
    iput-object p3, p0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->bitMask:Ljava/lang/Integer;

    return-void
.end method

.method static fromNativeIndex(I)Lcom/discord/org/webrtc/PeerConnection$AdapterType;
    .locals 1

    .line 418
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->BY_BITMASK:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/PeerConnection$AdapterType;
    .locals 1

    .line 391
    const-class v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/PeerConnection$AdapterType;
    .locals 1

    .line 391
    sget-object v0, Lcom/discord/org/webrtc/PeerConnection$AdapterType;->$VALUES:[Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/PeerConnection$AdapterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/PeerConnection$AdapterType;

    return-object v0
.end method
