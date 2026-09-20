.class Lcom/t4f/sdkpay/flexion/FlexionSDK$EmptyPurchase;
.super Ljava/lang/Object;
.source "FlexionSDK.java"

# interfaces
.implements Lcom/flexionmobile/fdk/Purchase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/sdkpay/flexion/FlexionSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyPurchase"
.end annotation


# instance fields
.field private final mOrderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/t4f/sdkpay/flexion/FlexionSDK$EmptyPurchase;->mOrderId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem()Lcom/flexionmobile/fdk/Item;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/t4f/sdkpay/flexion/FlexionSDK$EmptyPurchase;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPurchaseJson()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPurchaseTime()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
