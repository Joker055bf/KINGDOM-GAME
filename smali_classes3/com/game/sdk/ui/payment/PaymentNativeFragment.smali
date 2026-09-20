.class public Lcom/game/sdk/ui/payment/PaymentNativeFragment;
.super Lcom/game/sdk/comon/game/BaseDialogFragment;
.source "PaymentNativeFragment.java"

# interfaces
.implements Lcom/game/sdk/ui/payment/PaymentAdapter$OnClickItemPaymentListener;
.implements Lcom/game/sdk/comon/presenter/BaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/payment/PaymentNativeFragment$PaymentSuccess;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PaymentNativeFragment"


# instance fields
.field account_id:Ljava/lang/String;

.field current:I

.field currentPurchase:Lcom/game/sdk/comon/object/PurchaseHistoryObj;

.field private gridView:Landroidx/recyclerview/widget/RecyclerView;

.field initalizePuchaseObj:Lcom/game/sdk/comon/object/InitalizePurchaseObj;

.field itemPayObj:Lcom/game/sdk/comon/object/ItemPayObj;

.field listPresenter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/ui/payment/IPaymentPresenter;",
            ">;"
        }
    .end annotation
.end field

.field mActivity:Landroid/app/Activity;

.field paymentAdapter:Lcom/game/sdk/ui/payment/PaymentAdapter;

.field paymentPresenter:Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

.field paymentSuccess:Lcom/game/sdk/ui/payment/PaymentNativeFragment$PaymentSuccess;

.field purchase:Lcom/android/billingclient/api/Purchase;

.field skuDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final skuDetailsResponseListener:Lcom/android/billingclient/api/SkuDetailsResponseListener;

.field private state:Ljava/lang/String;

.field tv_title:Landroid/widget/TextView;

.field private viewConnectionLost:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/game/sdk/comon/game/BaseDialogFragment;-><init>()V

    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->state:Ljava/lang/String;

    .line 308
    new-instance v0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$5;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment$5;-><init>(Lcom/game/sdk/ui/payment/PaymentNativeFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->skuDetailsResponseListener:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/game/sdk/ui/payment/PaymentNativeFragment;Ljava/util/List;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->processPurchases(Ljava/util/List;)V

    return-void
.end method

.method private handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    .locals 3

    .line 365
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlePurchase: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "PURCHASE IS PURCHASED "

    .line 368
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->purchase:Lcom/android/billingclient/api/Purchase;

    .line 370
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/game/sdk/ui/payment/PaymentNativeFragment$6;-><init>(Lcom/game/sdk/ui/payment/PaymentNativeFragment;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v0, p1, v1}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->consumeAsyncPurchase(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const-string p1, "PURCHASE IS PENDING "

    .line 416
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private initGridView(I)V
    .locals 3

    .line 174
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 175
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->itemPayObj:Lcom/game/sdk/comon/object/ItemPayObj;

    if-eqz p1, :cond_0

    .line 176
    new-instance p1, Lcom/game/sdk/ui/payment/PaymentAdapter;

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->itemPayObj:Lcom/game/sdk/comon/object/ItemPayObj;

    invoke-direct {p1, v1, v2, p0}, Lcom/game/sdk/ui/payment/PaymentAdapter;-><init>(Landroid/content/Context;Lcom/game/sdk/comon/object/ItemPayObj;Lcom/game/sdk/ui/payment/PaymentAdapter$OnClickItemPaymentListener;)V

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->paymentAdapter:Lcom/game/sdk/ui/payment/PaymentAdapter;

    .line 177
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->gridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 178
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->gridView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->paymentAdapter:Lcom/game/sdk/ui/payment/PaymentAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method private initIAP()V
    .locals 4

    .line 232
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/game/sdk/ui/payment/PaymentNativeFragment$3;

    invoke-direct {v2, p0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment$3;-><init>(Lcom/game/sdk/ui/payment/PaymentNativeFragment;)V

    new-instance v3, Lcom/game/sdk/ui/payment/PaymentNativeFragment$4;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment$4;-><init>(Lcom/game/sdk/ui/payment/PaymentNativeFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->initIABv3(Landroid/content/Context;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    .line 148
    sget v0, Lcom/mobgame/R$id;->btn_close_pay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 149
    sget v1, Lcom/mobgame/R$id;->grid_view_pay:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->gridView:Landroidx/recyclerview/widget/RecyclerView;

    .line 150
    sget v1, Lcom/mobgame/R$id;->layout_connection_lost:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->viewConnectionLost:Landroid/view/View;

    .line 151
    sget v1, Lcom/mobgame/R$id;->btn_reload:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 152
    sget v2, Lcom/mobgame/R$id;->tv_title:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->tv_title:Landroid/widget/TextView;

    .line 153
    iget-object v2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/mobgame/R$string;->txt_title_payment:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->viewConnectionLost:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    new-instance p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment$1;

    invoke-direct {p1, p0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment$1;-><init>(Lcom/game/sdk/ui/payment/PaymentNativeFragment;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment$2;

    invoke-direct {p1, p0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment$2;-><init>(Lcom/game/sdk/ui/payment/PaymentNativeFragment;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/game/sdk/ui/payment/PaymentNativeFragment$PaymentSuccess;)Lcom/game/sdk/ui/payment/PaymentNativeFragment;
    .locals 1

    .line 94
    new-instance v0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;-><init>()V

    .line 95
    invoke-virtual {v0, p0, p1}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->setPaymentSuccess(Ljava/lang/String;Lcom/game/sdk/ui/payment/PaymentNativeFragment$PaymentSuccess;)V

    return-object v0
.end method

.method private processPurchases(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 348
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processPurchases: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " purchase(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 350
    invoke-direct {p0, v0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_0

    .line 354
    :cond_0
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->TAG:Ljava/lang/String;

    const-string v0, "processPurchases: with no purchases"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onPurchasesUpdated: null purchase list"

    .line 355
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public checkPurchaseHistory()V
    .locals 3

    .line 477
    iget v0, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->current:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->current:I

    .line 478
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->account_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getHistoryPurchase(Landroid/content/Context;Ljava/lang/String;)Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->getData()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->current:I

    if-gt v1, v2, :cond_0

    if-ltz v2, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ListPurchaseHistoryObj;->getData()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->current:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/comon/object/PurchaseHistoryObj;

    .line 482
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->sendHistory(Lcom/game/sdk/comon/object/PurchaseHistoryObj;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 1

    .line 455
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/GetListPurchaseErrObj;

    if-eqz v0, :cond_0

    .line 456
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/mobgame/R$string;->err_and_try_again_late:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->dismiss()V

    goto :goto_0

    .line 458
    :cond_0
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/InitialPurchaseErrObj;

    if-eqz v0, :cond_1

    .line 459
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/mobgame/R$string;->err_and_try_again_late:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_1
    instance-of p1, p1, Lcom/game/sdk/comon/object/err/VerifyPurchaseErrObj;

    if-eqz p1, :cond_2

    .line 461
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/mobgame/R$string;->err_and_try_again_late:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected getLayoutResource()I
    .locals 1

    .line 117
    sget v0, Lcom/mobgame/R$layout;->payment_dialog_fragment:I

    return v0
.end method

.method public hideProgress()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/game/sdk/comon/game/BaseDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 111
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onClickItem(Landroid/view/View;Lcom/game/sdk/comon/object/ItemPayObj$Item;)V
    .locals 5

    .line 185
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPaymentStartIAP clicked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/game/sdk/comon/object/ItemPayObj$Item;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "MOB_ROLE_ID"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "MOB_AREA_ID"

    invoke-static {v0, v2, v1}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    iget-object v3, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->state:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    :cond_0
    iput-object v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->state:Ljava/lang/String;

    .line 193
    :cond_1
    new-instance v3, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;

    invoke-direct {v3}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;-><init>()V

    .line 194
    iget-object v4, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/game/sdk/comon/sharePref/PrefManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setRequest(Ljava/lang/String;)V

    .line 195
    iget-object v4, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/game/sdk/comon/utils/DeviceUtils;->getUniqueDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setDevice_id(Ljava/lang/String;)V

    const-string v4, "2"

    .line 196
    invoke-virtual {v3, v4}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setMethod(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v3, v1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setCharacter_name(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v3, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setCharacter_id(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v3, v0}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setArea_id(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v3, v1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setArea_name(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Lcom/game/sdk/comon/object/ItemPayObj$Item;->getItemNo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setItem_no(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Lcom/game/sdk/comon/object/ItemPayObj$Item;->getProductId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setProduct_id(Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->state:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setPayload(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v3, v2}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setInvoice_no(Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setApp_version(Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setSdk_version(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setDevice_name(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setDevice_os(Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setNetwork(Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setAdvertising_id(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/game/GameSdk;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string p2, "APP_LANG"

    const-string v0, "en"

    invoke-static {p1, p2, v0}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setLocale(Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;->setResolution(Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->paymentPresenter:Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->initialPurchase(Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Lcom/game/sdk/comon/game/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 123
    sget v0, Lcom/mobgame/R$style;->DialogTheme:I

    invoke-virtual {p0, p1, v0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->setStyle(II)V

    .line 124
    invoke-direct {p0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->initIAP()V

    .line 125
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/config/GameConfigs;->getUser()Lcom/game/sdk/comon/object/UserObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/UserObj;->getAccount()Lcom/game/sdk/comon/object/UserObj$Account;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/UserObj$Account;->getAccountId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->account_id:Ljava/lang/String;

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->listPresenter:Ljava/util/ArrayList;

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->skuDetails:Ljava/util/List;

    const/4 p1, -0x1

    .line 128
    iput p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->current:I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 227
    invoke-super {p0}, Lcom/game/sdk/comon/game/BaseDialogFragment;->onDestroy()V

    .line 228
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->billingEndConnection()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 222
    invoke-super {p0}, Lcom/game/sdk/comon/game/BaseDialogFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 142
    invoke-super {p0}, Lcom/game/sdk/comon/game/BaseDialogFragment;->onResume()V

    .line 143
    invoke-virtual {p0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->checkPurchaseHistory()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 102
    invoke-super {p0}, Lcom/game/sdk/comon/game/BaseDialogFragment;->onStart()V

    .line 103
    invoke-virtual {p0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 104
    invoke-virtual {p0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {p0}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    return-void
.end method

.method public onVerifyPurchase(Lcom/game/sdk/ui/payment/IPaymentPresenter;Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;Ljava/lang/String;)V
    .locals 1

    .line 528
    new-instance v0, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;

    invoke-direct {v0}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;-><init>()V

    .line 529
    invoke-virtual {v0, p3}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setOrder_no(Ljava/lang/String;)V

    const-string p3, "2"

    .line 530
    invoke-virtual {v0, p3}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setMethod(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setReceipt(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;)V

    .line 532
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setApp_version(Ljava/lang/String;)V

    .line 533
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setSdk_version(Ljava/lang/String;)V

    .line 534
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setDevice_name(Ljava/lang/String;)V

    .line 535
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setDevice_os(Ljava/lang/String;)V

    .line 536
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setResolution(Ljava/lang/String;)V

    .line 537
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setNetwork(Ljava/lang/String;)V

    .line 538
    iget-object p2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setAdvertising_id(Ljava/lang/String;)V

    .line 539
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/game/sdk/comon/config/GameConfigs;->getLang()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;->setLocale(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 541
    invoke-interface {p1, v0}, Lcom/game/sdk/ui/payment/IPaymentPresenter;->verifyPurchase(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2}, Lcom/game/sdk/comon/game/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->initView(Landroid/view/View;)V

    .line 135
    new-instance p1, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

    invoke-direct {p1, p0}, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->paymentPresenter:Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

    .line 136
    invoke-virtual {p1}, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;->getItemList()V

    return-void
.end method

.method public retryGooglePayment(Lcom/android/billingclient/api/PurchaseHistoryRecord;)V
    .locals 10

    .line 545
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/PurchaseUtils;->isPurchaseTokenRequested(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->TAG:Ljava/lang/String;

    const-string v0, "check History : t\u1ea5t c\u1ea3 giao d\u1ecbch \u0111\u00e3 \u0111\u01b0\u1ee3c x\u1eed l\u00fd"

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :cond_0
    sget-object v0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPurchaseToken"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    new-instance v2, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

    new-instance v0, Lcom/game/sdk/ui/payment/PaymentNativeFragment$8;

    invoke-direct {v0, p0, p1}, Lcom/game/sdk/ui/payment/PaymentNativeFragment$8;-><init>(Lcom/game/sdk/ui/payment/PaymentNativeFragment;Lcom/android/billingclient/api/PurchaseHistoryRecord;)V

    invoke-direct {v2, v0}, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    .line 582
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getAppKey()Ljava/lang/String;

    move-result-object v3

    .line 583
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->getUser()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/UserObj;->getId()I

    move-result v0

    .line 584
    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    const-string v4, "MOB_ROLE_ID"

    const-string v5, ""

    invoke-static {v1, v4, v5}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    iget-object v4, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    const-string v6, "MOB_AREA_ID"

    invoke-static {v4, v6, v5}, Lcom/game/sdk/comon/sharePref/PrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 586
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getSkus()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    move-object v5, v1

    invoke-interface/range {v2 .. v9}, Lcom/game/sdk/ui/payment/IPaymentPresenter;->retryPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendHistory(Lcom/game/sdk/comon/object/PurchaseHistoryObj;)V
    .locals 2

    .line 486
    new-instance v0, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;

    new-instance v1, Lcom/game/sdk/ui/payment/PaymentNativeFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/game/sdk/ui/payment/PaymentNativeFragment$7;-><init>(Lcom/game/sdk/ui/payment/PaymentNativeFragment;Lcom/game/sdk/comon/object/PurchaseHistoryObj;)V

    invoke-direct {v0, v1}, Lcom/game/sdk/ui/payment/PaymentPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    .line 523
    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->listPresenter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getReceipt()Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;

    move-result-object v1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/PurchaseHistoryObj;->getOrder_no()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->onVerifyPurchase(Lcom/game/sdk/ui/payment/IPaymentPresenter;Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj$Receipt;Ljava/lang/String;)V

    return-void
.end method

.method public setPaymentSuccess(Ljava/lang/String;Lcom/game/sdk/ui/payment/PaymentNativeFragment$PaymentSuccess;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->state:Ljava/lang/String;

    .line 473
    iput-object p2, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->paymentSuccess:Lcom/game/sdk/ui/payment/PaymentNativeFragment$PaymentSuccess;

    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    .line 422
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2

    .line 432
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/ItemPayResponseObj;

    if-eqz v0, :cond_0

    .line 433
    check-cast p1, Lcom/game/sdk/comon/object/response/ItemPayResponseObj;

    .line 434
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/ItemPayResponseObj;->getStatus()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/ItemPayResponseObj;->getData()Lcom/game/sdk/comon/object/ItemPayObj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 435
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/ItemPayResponseObj;->getData()Lcom/game/sdk/comon/object/ItemPayObj;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->itemPayObj:Lcom/game/sdk/comon/object/ItemPayObj;

    .line 436
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/ItemPayResponseObj;->getData()Lcom/game/sdk/comon/object/ItemPayObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/ItemPayObj;->getConfig()Lcom/game/sdk/comon/object/ItemPayObj$Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/ItemPayObj$Config;->getColumns()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->initGridView(I)V

    goto :goto_0

    .line 438
    :cond_0
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/InitialPurchaseResponseObj;

    if-eqz v0, :cond_2

    .line 439
    check-cast p1, Lcom/game/sdk/comon/object/response/InitialPurchaseResponseObj;

    .line 440
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/InitialPurchaseResponseObj;->getStatus()I

    move-result v0

    if-nez v0, :cond_2

    .line 441
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/InitialPurchaseResponseObj;->getData()Lcom/game/sdk/comon/object/InitalizePurchaseObj;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->initalizePuchaseObj:Lcom/game/sdk/comon/object/InitalizePurchaseObj;

    .line 442
    sget-object p1, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPaymentStartIAP response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->initalizePuchaseObj:Lcom/game/sdk/comon/object/InitalizePurchaseObj;

    invoke-virtual {v1}, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->getProduct_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->initalizePuchaseObj:Lcom/game/sdk/comon/object/InitalizePurchaseObj;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->getOrder_no()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 445
    iget-object p1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/mobgame/R$string;->err_and_try_again_late:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 448
    :cond_1
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->initalizePuchaseObj:Lcom/game/sdk/comon/object/InitalizePurchaseObj;

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/InitalizePurchaseObj;->getProduct_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentNativeFragment;->skuDetailsResponseListener:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->querySkuDetails(Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    :cond_2
    :goto_0
    return-void
.end method
