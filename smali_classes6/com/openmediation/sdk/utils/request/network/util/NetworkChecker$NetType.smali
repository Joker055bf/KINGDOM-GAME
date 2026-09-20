.class public final enum Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

.field public static final enum ETHERNET:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

.field public static final enum MOBILE:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

.field public static final enum MOBILE_2G:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

.field public static final enum MOBILE_3G:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

.field public static final enum MOBILE_4G:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

.field public static final enum MOBILE_5G:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

.field public static final enum MOBILE_6G:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

.field public static final enum UNKNOWN:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

.field public static final enum WIFI:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->UNKNOWN:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    new-instance v1, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    const-string v3, "ETHERNET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->ETHERNET:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    new-instance v3, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    const-string v5, "WIFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->WIFI:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    new-instance v5, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    const-string v7, "MOBILE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->MOBILE:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    new-instance v7, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    const-string v9, "MOBILE_2G"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->MOBILE_2G:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    new-instance v9, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    const-string v11, "MOBILE_3G"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->MOBILE_3G:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    new-instance v11, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    const-string v13, "MOBILE_4G"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->MOBILE_4G:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    new-instance v13, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    const-string v15, "MOBILE_5G"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->MOBILE_5G:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    new-instance v15, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    const-string v14, "MOBILE_6G"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->MOBILE_6G:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->$VALUES:[Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;
    .locals 1

    const-class v0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    return-object p0
.end method

.method public static values()[Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->$VALUES:[Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    invoke-virtual {v0}, [Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->mValue:I

    return v0
.end method
