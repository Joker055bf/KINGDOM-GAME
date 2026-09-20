.class public final enum Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;
.super Ljava/lang/Enum;
.source "Endpoints.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/heliumsdk/network/Endpoints$Sdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$Companion;,
        Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0015\u0008\u0087\u0001\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u0019\u001aB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;",
        "",
        "version",
        "Lcom/chartboost/heliumsdk/network/Endpoints$Version;",
        "(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V",
        "endpoint",
        "",
        "getEndpoint",
        "()Ljava/lang/String;",
        "getVersion",
        "()Lcom/chartboost/heliumsdk/network/Endpoints$Version;",
        "BANNER_SIZE",
        "ADLOAD",
        "CLICK",
        "EXPIRATION",
        "HELIUM_IMPRESSION",
        "INITIALIZATION",
        "LOAD",
        "PARTNER_IMPRESSION",
        "PREBID",
        "REWARD",
        "START_QUEUE",
        "END_QUEUE",
        "SHOW",
        "WINNER",
        "Companion",
        "EventEnumSetSerializer",
        "Helium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum ADLOAD:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

.field public static final enum BANNER_SIZE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

.field public static final enum CLICK:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

.field public static final Companion:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$Companion;

.field public static final enum END_QUEUE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

.field public static final enum EXPIRATION:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

.field public static final enum HELIUM_IMPRESSION:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

.field public static final enum INITIALIZATION:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

.field public static final enum LOAD:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

.field public static final enum PARTNER_IMPRESSION:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

.field public static final enum PREBID:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

.field public static final enum REWARD:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

.field public static final enum SHOW:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

.field public static final enum START_QUEUE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

.field public static final enum WINNER:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;


# instance fields
.field private final version:Lcom/chartboost/heliumsdk/network/Endpoints$Version;


# direct methods
.method private static final synthetic $values()[Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/4 v1, 0x0

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->BANNER_SIZE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->ADLOAD:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->CLICK:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->EXPIRATION:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->HELIUM_IMPRESSION:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->INITIALIZATION:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->LOAD:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->PARTNER_IMPRESSION:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->PREBID:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->REWARD:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->START_QUEUE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->END_QUEUE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->SHOW:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->WINNER:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 103
    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/4 v1, 0x0

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Version;->V1:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    const-string v3, "BANNER_SIZE"

    invoke-direct {v0, v3, v1, v2}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;-><init>(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->BANNER_SIZE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 104
    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/4 v1, 0x1

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Version;->V2:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    const-string v3, "ADLOAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;-><init>(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->ADLOAD:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 105
    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/4 v1, 0x2

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Version;->V2:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    const-string v3, "CLICK"

    invoke-direct {v0, v3, v1, v2}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;-><init>(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->CLICK:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 106
    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/4 v1, 0x3

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Version;->V1:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    const-string v3, "EXPIRATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;-><init>(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->EXPIRATION:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 107
    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/4 v1, 0x4

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Version;->V1:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    const-string v3, "HELIUM_IMPRESSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;-><init>(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->HELIUM_IMPRESSION:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 108
    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/4 v1, 0x5

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Version;->V1:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    const-string v3, "INITIALIZATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;-><init>(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->INITIALIZATION:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 109
    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/4 v1, 0x6

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Version;->V2:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    const-string v3, "LOAD"

    invoke-direct {v0, v3, v1, v2}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;-><init>(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->LOAD:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 110
    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/4 v1, 0x7

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Version;->V1:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    const-string v3, "PARTNER_IMPRESSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;-><init>(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->PARTNER_IMPRESSION:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 111
    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/16 v1, 0x8

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Version;->V1:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    const-string v3, "PREBID"

    invoke-direct {v0, v3, v1, v2}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;-><init>(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->PREBID:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 112
    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/16 v1, 0x9

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Version;->V2:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    const-string v3, "REWARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;-><init>(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->REWARD:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 113
    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/16 v1, 0xa

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Version;->V1:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    const-string v3, "START_QUEUE"

    invoke-direct {v0, v3, v1, v2}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;-><init>(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->START_QUEUE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 114
    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/16 v1, 0xb

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Version;->V1:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    const-string v3, "END_QUEUE"

    invoke-direct {v0, v3, v1, v2}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;-><init>(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->END_QUEUE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 115
    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/16 v1, 0xc

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Version;->V1:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    const-string v3, "SHOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;-><init>(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->SHOW:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 116
    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/16 v1, 0xd

    sget-object v2, Lcom/chartboost/heliumsdk/network/Endpoints$Version;->V3:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    const-string v3, "WINNER"

    invoke-direct {v0, v3, v1, v2}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;-><init>(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->WINNER:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    invoke-static {}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->$values()[Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    move-result-object v0

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->$VALUES:[Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    new-instance v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->Companion:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$Companion;

    .line 101
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/chartboost/heliumsdk/network/Endpoints$Version;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/heliumsdk/network/Endpoints$Version;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-object p3, p0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->version:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    return-void
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 101
    sget-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;
    .locals 1

    const-class v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;
    .locals 1

    sget-object v0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->$VALUES:[Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    return-object v0
.end method


# virtual methods
.method public final getEndpoint()Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/chartboost/heliumsdk/network/Endpoints;->INSTANCE:Lcom/chartboost/heliumsdk/network/Endpoints;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/network/Endpoints;->getSDK_DOMAIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->version:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/event/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVersion()Lcom/chartboost/heliumsdk/network/Endpoints$Version;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->version:Lcom/chartboost/heliumsdk/network/Endpoints$Version;

    return-object v0
.end method
