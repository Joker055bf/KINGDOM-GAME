.class public Lcom/game/sdk/comon/utils/PurchaseUtils;
.super Ljava/lang/Object;
.source "PurchaseUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertJsonToObject(Ljava/lang/String;)Lcom/game/sdk/comon/object/PurchaseHistoryRecordObj;
    .locals 2

    .line 57
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/game/sdk/comon/object/PurchaseHistoryRecordObj;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/game/sdk/comon/object/PurchaseHistoryRecordObj;

    return-object p0
.end method

.method public static getLastPurchaseGGSuccess(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getLastPurchaseGGSuccess(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isPurchaseTokenRequested(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-static {p0, p1, v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static markPurchaseToken(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0

    .line 49
    invoke-static {p0, p1, p2}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static removeSuccessPurchase(Lcom/game/sdk/comon/object/PurchaseHistoryObj;Landroid/app/Activity;)V
    .locals 4

    .line 18
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getAccount_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getHistoryPurchase(Landroid/content/Context;Ljava/lang/String;)Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 20
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {v2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getAccount_id()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveUsePurchaseHistory(Landroid/content/Context;Ljava/lang/String;Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;)V

    return-void
.end method

.method public static removeSuccessPurchase(Lcom/game/sdk/comon/object/PurchaseHistoryObj;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4

    .line 30
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getAccount_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getHistoryPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;

    move-result-object v0

    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    invoke-virtual {v2}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getAccount_id()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1, v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveUsePurchaseHistory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;)V

    return-void
.end method

.method public static saveLastPurchaseGGSuccess(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveLastPurchaseGGSuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
