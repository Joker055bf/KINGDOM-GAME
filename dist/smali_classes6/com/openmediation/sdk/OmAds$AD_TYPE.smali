.class public final enum Lcom/openmediation/sdk/OmAds$AD_TYPE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/OmAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AD_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/openmediation/sdk/OmAds$AD_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openmediation/sdk/OmAds$AD_TYPE;

.field public static final enum INTERSTITIAL:Lcom/openmediation/sdk/OmAds$AD_TYPE;

.field public static final enum NONE:Lcom/openmediation/sdk/OmAds$AD_TYPE;

.field public static final enum PROMOTION:Lcom/openmediation/sdk/OmAds$AD_TYPE;

.field public static final enum REWARDED_VIDEO:Lcom/openmediation/sdk/OmAds$AD_TYPE;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/openmediation/sdk/OmAds$AD_TYPE;

    const-string v1, "rewardedVideo"

    const-string v2, "REWARDED_VIDEO"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/openmediation/sdk/OmAds$AD_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/openmediation/sdk/OmAds$AD_TYPE;->REWARDED_VIDEO:Lcom/openmediation/sdk/OmAds$AD_TYPE;

    new-instance v1, Lcom/openmediation/sdk/OmAds$AD_TYPE;

    const-string v2, "interstitial"

    const-string v4, "INTERSTITIAL"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/openmediation/sdk/OmAds$AD_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/openmediation/sdk/OmAds$AD_TYPE;->INTERSTITIAL:Lcom/openmediation/sdk/OmAds$AD_TYPE;

    new-instance v2, Lcom/openmediation/sdk/OmAds$AD_TYPE;

    const-string v4, "promotion"

    const-string v6, "PROMOTION"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/openmediation/sdk/OmAds$AD_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/openmediation/sdk/OmAds$AD_TYPE;->PROMOTION:Lcom/openmediation/sdk/OmAds$AD_TYPE;

    new-instance v4, Lcom/openmediation/sdk/OmAds$AD_TYPE;

    const-string v6, "none"

    const-string v8, "NONE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/openmediation/sdk/OmAds$AD_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/openmediation/sdk/OmAds$AD_TYPE;->NONE:Lcom/openmediation/sdk/OmAds$AD_TYPE;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/openmediation/sdk/OmAds$AD_TYPE;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/openmediation/sdk/OmAds$AD_TYPE;->$VALUES:[Lcom/openmediation/sdk/OmAds$AD_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/openmediation/sdk/OmAds$AD_TYPE;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openmediation/sdk/OmAds$AD_TYPE;
    .locals 1

    const-class v0, Lcom/openmediation/sdk/OmAds$AD_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/openmediation/sdk/OmAds$AD_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/openmediation/sdk/OmAds$AD_TYPE;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/OmAds$AD_TYPE;->$VALUES:[Lcom/openmediation/sdk/OmAds$AD_TYPE;

    invoke-virtual {v0}, [Lcom/openmediation/sdk/OmAds$AD_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openmediation/sdk/OmAds$AD_TYPE;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/OmAds$AD_TYPE;->mValue:Ljava/lang/String;

    return-object v0
.end method
