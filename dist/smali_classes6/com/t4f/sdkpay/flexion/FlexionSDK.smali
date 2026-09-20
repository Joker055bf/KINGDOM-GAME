.class public Lcom/t4f/sdkpay/flexion/FlexionSDK;
.super Ljava/lang/Object;
.source "FlexionSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4f/sdkpay/flexion/FlexionSDK$FlexionPurchaseListener;,
        Lcom/t4f/sdkpay/flexion/FlexionSDK$EmptyPurchase;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final IAS_ERROR_CANCEL_ORDER_FAILURE:I = 0x7

.field public static final IAS_ERROR_CREATE_ORDER_FAILURE:I = 0x8

.field public static final IAS_ERROR_JSON_ERROR:I = 0x6

.field public static final IAS_ERROR_NO_ERROR:I = 0x0

.field public static final IAS_ERROR_PAYMENT_IS_CANCEL:I = 0x2

.field public static final IAS_ERROR_PAYMENT_IS_PAYING:I = 0x1

.field public static final IAS_ERROR_UNKNOWN_ERROR:I = -0x1

.field public static final PAY_CP_CHANNEL_NOT_EXIST:I = 0xb

.field public static final PAY_CP_PRODUCT_NOT_EXIST:I = 0xa

.field private static final PERIOD:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "T4F.FlexionSDK"

.field private static billingService:Lcom/flexionmobile/fdk/BillingService;

.field private static flexionListener:Lcom/t4f/sdkpay/flexion/FlexionListener;

.field private static isBuying:Z

.field private static isInit:Z

.field private static isSetUpSDKSuccess:Z

.field private static mActivity:Landroid/app/Activity;

.field private static final mSkuDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->mSkuDetailsList:Ljava/util/List;

    const/4 v0, 0x0

    .line 44
    sput-boolean v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->isSetUpSDKSuccess:Z

    .line 45
    sput-boolean v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->isBuying:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 22
    sput-boolean p0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->isBuying:Z

    return p0
.end method

.method static synthetic access$200(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V
    .locals 0

    .line 22
    invoke-static {p0, p1, p2}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->buyItemListCallback(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V

    return-void
.end method

.method public static buyItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "buyItem"

    const-string v1, "T4F.FlexionSDK"

    .line 190
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->mSkuDetailsList:Ljava/util/List;

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 197
    :cond_0
    sget-object v4, Lcom/t4f/sdkpay/flexion/FlexionSDK;->billingService:Lcom/flexionmobile/fdk/BillingService;

    if-nez v4, :cond_1

    const/4 p0, -0x1

    const-string p1, "billingService is null!"

    .line 198
    invoke-static {p0, p1, v3}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->buyItemListCallback(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V

    return-void

    .line 202
    :cond_1
    sget-boolean v4, Lcom/t4f/sdkpay/flexion/FlexionSDK;->isBuying:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    const-string p0, "isBuying is true!"

    .line 203
    invoke-static {v5, p0, v3}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->buyItemListCallback(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V

    return-void

    .line 208
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "buyItem ProductId: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v3

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flexionmobile/fdk/Item;

    .line 211
    invoke-interface {v6}, Lcom/flexionmobile/fdk/Item;->getId()Ljava/lang/String;

    move-result-object v7

    .line 212
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "currentProductId: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v4, v6

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "productId: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " not exist!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v3}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->buyItemListCallback(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V

    return-void

    .line 223
    :cond_5
    sput-boolean v5, Lcom/t4f/sdkpay/flexion/FlexionSDK;->isBuying:Z

    .line 224
    sget-object v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->billingService:Lcom/flexionmobile/fdk/BillingService;

    sget-object v1, Lcom/flexionmobile/fdk/ItemType;->IN_APP:Lcom/flexionmobile/fdk/ItemType;

    invoke-static {v1, p0}, Lcom/flexionmobile/fdk/ItemDefinition;->of(Lcom/flexionmobile/fdk/ItemType;Ljava/lang/String;)Lcom/flexionmobile/fdk/ItemDefinition;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/flexionmobile/fdk/BillingService;->purchase(Lcom/flexionmobile/fdk/ItemDefinition;)Lcom/flexionmobile/fdk/step/PurchaseDeveloperPayloadStep;

    move-result-object p0

    .line 225
    invoke-interface {p0, p1}, Lcom/flexionmobile/fdk/step/PurchaseDeveloperPayloadStep;->developerPayload(Ljava/lang/String;)Lcom/flexionmobile/fdk/step/PurchaseSuccessStep;

    move-result-object p0

    new-instance v0, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda2;-><init>()V

    .line 226
    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/step/PurchaseSuccessStep;->onSuccess(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/PurchaseErrorStep;

    move-result-object p0

    new-instance v0, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/step/PurchaseErrorStep;->onError(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/StartStep;

    move-result-object p0

    .line 245
    invoke-interface {p0}, Lcom/flexionmobile/fdk/step/StartStep;->start()V

    return-void

    :cond_6
    :goto_1
    const-string p0, "mSkuDetailsList is empty!"

    .line 193
    invoke-static {v2, p0, v3}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->buyItemListCallback(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V

    return-void
.end method

.method private static buyItemListCallback(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T4F.FlexionSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget-object v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->flexionListener:Lcom/t4f/sdkpay/flexion/FlexionListener;

    if-nez v0, :cond_0

    const-string p0, "Null FlexionListener"

    .line 304
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 308
    :cond_0
    sget-object v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string p0, "Null Activity"

    .line 309
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 312
    :cond_1
    new-instance v1, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda9;-><init>(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static consumePurchase(Ljava/lang/String;)V
    .locals 2

    const-string v0, "T4F.FlexionSDK"

    const-string v1, "consumePurchase"

    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->billingService:Lcom/flexionmobile/fdk/BillingService;

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-interface {v0}, Lcom/flexionmobile/fdk/BillingService;->queryIncompletePurchases()Lcom/flexionmobile/fdk/step/QueryIncompletePurchasesSuccessStep;

    move-result-object v0

    new-instance v1, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-interface {v0, v1}, Lcom/flexionmobile/fdk/step/QueryIncompletePurchasesSuccessStep;->onSuccess(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/QueryIncompletePurchasesErrorStep;

    move-result-object p0

    new-instance v0, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda4;-><init>()V

    .line 268
    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/step/QueryIncompletePurchasesErrorStep;->onError(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/StartStep;

    return-void
.end method

.method public static getPaymentChannel(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "T4F.FlexionSDK"

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "Fail get flexion pay payment channel while activity null."

    .line 318
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 321
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x80

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 322
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "CHANNEL"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception get flexion pay payment channel. e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getProductList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getProductList\uff0c"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T4F.FlexionSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 95
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    sget-object v3, Lcom/flexionmobile/fdk/ItemType;->IN_APP:Lcom/flexionmobile/fdk/ItemType;

    invoke-static {v3, v2}, Lcom/flexionmobile/fdk/ItemDefinition;->of(Lcom/flexionmobile/fdk/ItemType;Ljava/lang/String;)Lcom/flexionmobile/fdk/ItemDefinition;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    sget-object p0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->billingService:Lcom/flexionmobile/fdk/BillingService;

    if-eqz p0, :cond_2

    .line 108
    invoke-interface {p0, v1}, Lcom/flexionmobile/fdk/BillingService;->refreshItemDefinitions(Ljava/util/List;)Lcom/flexionmobile/fdk/step/RefreshItemDefinitionsSuccessStep;

    move-result-object p0

    new-instance v0, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda10;-><init>()V

    .line 109
    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/step/RefreshItemDefinitionsSuccessStep;->onSuccess(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/RefreshItemDefinitionsErrorStep;

    move-result-object p0

    new-instance v0, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda11;-><init>()V

    .line 130
    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/step/RefreshItemDefinitionsErrorStep;->onError(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/StartStep;

    move-result-object p0

    .line 134
    invoke-interface {p0}, Lcom/flexionmobile/fdk/step/StartStep;->start()V

    return-void

    .line 139
    :cond_2
    sget-object p0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/flexionmobile/fdk/FLX;->createBillingService(Landroid/app/Activity;)Lcom/flexionmobile/fdk/step/ItemDefinitionsStep;

    move-result-object p0

    .line 140
    invoke-interface {p0, v1}, Lcom/flexionmobile/fdk/step/ItemDefinitionsStep;->itemDefinitions(Ljava/util/List;)Lcom/flexionmobile/fdk/step/PurchaseListenerStep;

    move-result-object p0

    new-instance v1, Lcom/t4f/sdkpay/flexion/FlexionSDK$FlexionPurchaseListener;

    invoke-direct {v1, v0}, Lcom/t4f/sdkpay/flexion/FlexionSDK$FlexionPurchaseListener;-><init>(Lcom/t4f/sdkpay/flexion/FlexionSDK$1;)V

    .line 141
    invoke-interface {p0, v1}, Lcom/flexionmobile/fdk/step/PurchaseListenerStep;->purchaseListener(Lcom/flexionmobile/fdk/PurchaseListener;)Lcom/flexionmobile/fdk/step/BillingServiceInitSuccessStep;

    move-result-object p0

    new-instance v0, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda12;-><init>()V

    .line 142
    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/step/BillingServiceInitSuccessStep;->onSuccess(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/BillingServiceInitErrorStep;

    move-result-object p0

    new-instance v0, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda1;-><init>()V

    .line 176
    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/step/BillingServiceInitErrorStep;->onError(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/StartStep;

    move-result-object p0

    .line 180
    invoke-interface {p0}, Lcom/flexionmobile/fdk/step/StartStep;->start()V

    return-void

    :cond_3
    :goto_1
    const/4 p0, -0x1

    const-string v1, ""

    .line 96
    invoke-static {p0, v1, v0}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->getProductListCallback(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static getProductListCallback(ILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/Item;",
            ">;)V"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T4F.FlexionSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-object v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->flexionListener:Lcom/t4f/sdkpay/flexion/FlexionListener;

    if-nez v0, :cond_0

    const-string p0, "Null FlexionListener"

    .line 290
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 294
    :cond_0
    sget-object v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string p0, "Null Activity"

    .line 295
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 298
    :cond_1
    new-instance v1, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda6;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static initAndSetUp(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "T4F.FlexionSDK"

    const-string v1, "initAndSetUp: "

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/flexionmobile/fdk/FLX;->initStartupFlow()Lcom/flexionmobile/fdk/step/InitStartupFlowContextStep;

    move-result-object v0

    .line 75
    invoke-interface {v0, p0}, Lcom/flexionmobile/fdk/step/InitStartupFlowContextStep;->activity(Landroid/app/Activity;)Lcom/flexionmobile/fdk/step/InitStartupFlowSuccessStep;

    move-result-object v0

    new-instance v1, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda7;-><init>()V

    .line 76
    invoke-interface {v0, v1}, Lcom/flexionmobile/fdk/step/InitStartupFlowSuccessStep;->onSuccess(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/InitStartupFlowErrorStep;

    move-result-object v0

    new-instance v1, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda8;-><init>(Landroid/app/Activity;)V

    .line 80
    invoke-interface {v0, v1}, Lcom/flexionmobile/fdk/step/InitStartupFlowErrorStep;->onError(Lcom/flexionmobile/fdk/ResultHandler;)Lcom/flexionmobile/fdk/step/StartStep;

    move-result-object p0

    .line 84
    invoke-interface {p0}, Lcom/flexionmobile/fdk/step/StartStep;->start()V

    return-void
.end method

.method private static initCallback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T4F.FlexionSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-object v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->flexionListener:Lcom/t4f/sdkpay/flexion/FlexionListener;

    if-nez v0, :cond_0

    const-string p0, "Null FlexionListener"

    .line 276
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 280
    :cond_0
    sget-object v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string p0, "Null Activity"

    .line 281
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 284
    :cond_1
    new-instance v1, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/t4f/sdkpay/flexion/FlexionSDK$$ExternalSyntheticLambda5;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static initialize(Landroid/app/Activity;Lcom/t4f/sdkpay/flexion/FlexionListener;)V
    .locals 2

    const-string v0, "T4F.FlexionSDK"

    const-string v1, "initialize"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 50
    sput-object p1, Lcom/t4f/sdkpay/flexion/FlexionSDK;->flexionListener:Lcom/t4f/sdkpay/flexion/FlexionListener;

    :cond_0
    if-eqz p0, :cond_1

    .line 53
    sput-object p0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->mActivity:Landroid/app/Activity;

    .line 55
    :cond_1
    sget-boolean p0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->isInit:Z

    const-string p1, ""

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string p0, "Native Already Initialized! Start QueryPurchase!"

    .line 56
    invoke-static {v0, p0, p1}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->initCallback(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p0, 0x1

    .line 59
    sput-boolean p0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->isInit:Z

    .line 60
    sput-boolean v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->isBuying:Z

    .line 64
    sget-boolean p0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->isSetUpSDKSuccess:Z

    if-eqz p0, :cond_3

    const-string p0, "initStartupFlow success"

    .line 65
    invoke-static {v0, p0, p1}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->initCallback(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    const-string v0, "initStartupFlow failed."

    .line 67
    invoke-static {p0, v0, p1}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->initCallback(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$buyItem$6(Lcom/flexionmobile/fdk/PurchaseSuccessResult;)V
    .locals 4

    const-string v0, "\u652f\u4ed8\u56de\u8c03,\u542f\u52a8\u6210\u529f."

    const-string v1, "T4F.FlexionSDK"

    .line 227
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/flexionmobile/fdk/PurchaseSuccessResult;->getPurchases()Ljava/util/List;

    move-result-object p0

    .line 232
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flexionmobile/fdk/PurchaseResult;

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672a\u5b8c\u6210\u8ba2\u5355: purchaseResult: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/flexionmobile/fdk/PurchaseResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v0}, Lcom/flexionmobile/fdk/PurchaseResult;->finishTransaction()V

    .line 235
    invoke-virtual {v0}, Lcom/flexionmobile/fdk/PurchaseResult;->getResultCode()Lcom/flexionmobile/fdk/PurchaseResultCode;

    move-result-object v2

    sget-object v3, Lcom/flexionmobile/fdk/PurchaseResultCode;->SUCCESS:Lcom/flexionmobile/fdk/PurchaseResultCode;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/flexionmobile/fdk/PurchaseResult;->getResultCode()Lcom/flexionmobile/fdk/PurchaseResultCode;

    move-result-object v2

    sget-object v3, Lcom/flexionmobile/fdk/PurchaseResultCode;->INCOMPLETE:Lcom/flexionmobile/fdk/PurchaseResultCode;

    if-ne v2, v3, :cond_0

    :cond_1
    const-string v2, "Flexion queryUnConsumeItem success"

    .line 236
    invoke-virtual {v0}, Lcom/flexionmobile/fdk/PurchaseResult;->getPurchase()Lcom/flexionmobile/fdk/Purchase;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3, v2, v0}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->buyItemListCallback(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic lambda$buyItem$7(Ljava/lang/String;Lcom/flexionmobile/fdk/PurchaseErrorResult;)V
    .locals 2

    const/4 v0, 0x0

    .line 241
    sput-boolean v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->isBuying:Z

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError: \u652f\u4ed8\u56de\u8c03, \u652f\u4ed8\u5931\u8d25: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flexionmobile/fdk/PurchaseErrorResult;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T4F.FlexionSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p1}, Lcom/flexionmobile/fdk/PurchaseErrorResult;->message()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/t4f/sdkpay/flexion/FlexionSDK$EmptyPurchase;

    invoke-direct {v0, p0}, Lcom/t4f/sdkpay/flexion/FlexionSDK$EmptyPurchase;-><init>(Ljava/lang/String;)V

    const/4 p0, -0x1

    invoke-static {p0, p1, v0}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->buyItemListCallback(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V

    return-void
.end method

.method static synthetic lambda$buyItemListCallback$12(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V
    .locals 1

    .line 312
    sget-object v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->flexionListener:Lcom/t4f/sdkpay/flexion/FlexionListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/t4f/sdkpay/flexion/FlexionListener;->onBuyItemCallBack(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V

    return-void
.end method

.method static synthetic lambda$consumePurchase$8(Ljava/lang/String;Lcom/flexionmobile/fdk/QueryIncompletePurchasesSuccessResult;)V
    .locals 2

    .line 261
    invoke-virtual {p1}, Lcom/flexionmobile/fdk/QueryIncompletePurchasesSuccessResult;->getPurchases()Ljava/util/List;

    move-result-object p1

    .line 262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flexionmobile/fdk/PurchaseResult;

    .line 263
    invoke-virtual {v0}, Lcom/flexionmobile/fdk/PurchaseResult;->getItemDefinition()Lcom/flexionmobile/fdk/ItemDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flexionmobile/fdk/ItemDefinition;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v0}, Lcom/flexionmobile/fdk/PurchaseResult;->finishTransaction()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$consumePurchase$9(Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult;)V
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "consumePurchase: error"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flexionmobile/fdk/QueryIncompletePurchasesErrorResult;->message()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "T4F.FlexionSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$getProductList$2(Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;)V
    .locals 7

    const-string v0, "getProductList: success"

    const-string v1, "T4F.FlexionSDK"

    .line 110
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/flexionmobile/fdk/RefreshItemDefinitionsSuccessResult;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flexionmobile/fdk/Item;

    if-eqz v0, :cond_1

    const-string v2, "item != null"

    .line 114
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v2, Lcom/t4f/sdkpay/flexion/FlexionSDK;->mSkuDetailsList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 116
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    invoke-interface {v0}, Lcom/flexionmobile/fdk/Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-interface {v0}, Lcom/flexionmobile/fdk/Item;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-interface {v0}, Lcom/flexionmobile/fdk/Item;->getPrice()Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-interface {v0}, Lcom/flexionmobile/fdk/Item;->getPriceAmountMicros()Ljava/lang/Long;

    move-result-object v5

    .line 122
    invoke-interface {v0}, Lcom/flexionmobile/fdk/Item;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "item == null"

    .line 125
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "Get Product List Success"

    .line 128
    sget-object v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->mSkuDetailsList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->getProductListCallback(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$getProductList$3(Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getProductList: failed with"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T4F.FlexionSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get Product List Failed, responseCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;->responseCode()Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult$ResponseCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",desc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flexionmobile/fdk/RefreshItemDefinitionsErrorResult;->message()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v1, p0, v0}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->getProductListCallback(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$getProductList$4(Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;)V
    .locals 8

    const-string v0, "getProductList: success"

    const-string v1, "T4F.FlexionSDK"

    .line 143
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;->getBillingService()Lcom/flexionmobile/fdk/BillingService;

    move-result-object v0

    sput-object v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->billingService:Lcom/flexionmobile/fdk/BillingService;

    .line 148
    invoke-virtual {p0}, Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flexionmobile/fdk/Item;

    if-eqz v2, :cond_1

    const-string v3, "item != null"

    .line 150
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v3, Lcom/t4f/sdkpay/flexion/FlexionSDK;->mSkuDetailsList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 152
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    invoke-interface {v2}, Lcom/flexionmobile/fdk/Item;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-interface {v2}, Lcom/flexionmobile/fdk/Item;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-interface {v2}, Lcom/flexionmobile/fdk/Item;->getPrice()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-interface {v2}, Lcom/flexionmobile/fdk/Item;->getPriceAmountMicros()Ljava/lang/Long;

    move-result-object v6

    .line 158
    invoke-interface {v2}, Lcom/flexionmobile/fdk/Item;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "item == null"

    .line 161
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "Get Product List Success"

    .line 164
    sget-object v2, Lcom/t4f/sdkpay/flexion/FlexionSDK;->mSkuDetailsList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->getProductListCallback(ILjava/lang/String;Ljava/util/List;)V

    .line 167
    invoke-virtual {p0}, Lcom/flexionmobile/fdk/BillingServiceInitSuccessResult;->getPurchases()Ljava/util/List;

    move-result-object p0

    .line 168
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flexionmobile/fdk/PurchaseResult;

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u672a\u5b8c\u6210\u8ba2\u5355: purchaseResult: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/flexionmobile/fdk/PurchaseResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v0}, Lcom/flexionmobile/fdk/PurchaseResult;->finishTransaction()V

    .line 171
    invoke-virtual {v0}, Lcom/flexionmobile/fdk/PurchaseResult;->getResultCode()Lcom/flexionmobile/fdk/PurchaseResultCode;

    move-result-object v2

    sget-object v4, Lcom/flexionmobile/fdk/PurchaseResultCode;->SUCCESS:Lcom/flexionmobile/fdk/PurchaseResultCode;

    if-eq v2, v4, :cond_4

    invoke-virtual {v0}, Lcom/flexionmobile/fdk/PurchaseResult;->getResultCode()Lcom/flexionmobile/fdk/PurchaseResultCode;

    move-result-object v2

    sget-object v4, Lcom/flexionmobile/fdk/PurchaseResultCode;->INCOMPLETE:Lcom/flexionmobile/fdk/PurchaseResultCode;

    if-ne v2, v4, :cond_3

    :cond_4
    const-string v2, "Flexion queryUnConsumeItem success"

    .line 172
    invoke-virtual {v0}, Lcom/flexionmobile/fdk/PurchaseResult;->getPurchase()Lcom/flexionmobile/fdk/Purchase;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->buyItemListCallback(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method static synthetic lambda$getProductList$5(Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;)V
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getProductList: failed with"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T4F.FlexionSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get Product List Failed. responseCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;->responseCode()Lcom/flexionmobile/fdk/BillingServiceInitErrorResult$ResponseCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",desc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flexionmobile/fdk/BillingServiceInitErrorResult;->message()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v1, p0, v0}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->getProductListCallback(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$getProductListCallback$11(ILjava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 298
    sget-object v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->flexionListener:Lcom/t4f/sdkpay/flexion/FlexionListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/t4f/sdkpay/flexion/FlexionListener;->onGetProductListCallBack(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$initAndSetUp$0(Lcom/flexionmobile/fdk/InitStartupFlowSuccessResult;)V
    .locals 1

    const-string p0, "T4F.FlexionSDK"

    const-string v0, "initAndSetUp:  success"

    .line 77
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 78
    sput-boolean p0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->isSetUpSDKSuccess:Z

    return-void
.end method

.method static synthetic lambda$initAndSetUp$1(Landroid/app/Activity;Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;)V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initAndSetUp failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "T4F.FlexionSDK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {p0}, Lcom/t4f/sdkpay/flexion/FlexionSDK;->initAndSetUp(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$initCallback$10(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 284
    sget-object v0, Lcom/t4f/sdkpay/flexion/FlexionSDK;->flexionListener:Lcom/t4f/sdkpay/flexion/FlexionListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/t4f/sdkpay/flexion/FlexionListener;->onInitCallBack(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
