.class public Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;
.super Ljava/lang/Object;
.source "VerifyPurchaseRequestObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;
    }
.end annotation


# instance fields
.field private advertising_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "advertising_id"
    .end annotation
.end field

.field private app_version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_version"
    .end annotation
.end field

.field private appsflyer_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appsflyer_id"
    .end annotation
.end field

.field private device_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_name"
    .end annotation
.end field

.field private device_os:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_os"
    .end annotation
.end field

.field private locale:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locale"
    .end annotation
.end field

.field private method:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "method"
    .end annotation
.end field

.field private network:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "network"
    .end annotation
.end field

.field private order_no:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_no"
    .end annotation
.end field

.field private receipt:Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "receipt"
    .end annotation
.end field

.field private resolution:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resolution"
    .end annotation
.end field

.field private sdk_version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sdk_version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdvertising_id()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->advertising_id:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_version()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->app_version:Ljava/lang/String;

    return-object v0
.end method

.method public getAppsflyer_id()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->appsflyer_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_name()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->device_name:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_os()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->device_os:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_no()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->order_no:Ljava/lang/String;

    return-object v0
.end method

.method public getReceipt()Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->receipt:Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getSdk_version()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->sdk_version:Ljava/lang/String;

    return-object v0
.end method

.method public setAdvertising_id(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->advertising_id:Ljava/lang/String;

    return-void
.end method

.method public setApp_version(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->app_version:Ljava/lang/String;

    return-void
.end method

.method public setAppsflyer_id(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->appsflyer_id:Ljava/lang/String;

    return-void
.end method

.method public setDevice_name(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->device_name:Ljava/lang/String;

    return-void
.end method

.method public setDevice_os(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->device_os:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->locale:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->method:Ljava/lang/String;

    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->network:Ljava/lang/String;

    return-void
.end method

.method public setOrder_no(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->order_no:Ljava/lang/String;

    return-void
.end method

.method public setReceipt(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->receipt:Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->resolution:Ljava/lang/String;

    return-void
.end method

.method public setSdk_version(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->sdk_version:Ljava/lang/String;

    return-void
.end method
