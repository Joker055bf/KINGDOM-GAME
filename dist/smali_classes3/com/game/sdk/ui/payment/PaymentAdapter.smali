.class public Lcom/game/sdk/ui/payment/PaymentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PaymentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/payment/PaymentAdapter$OnClickItemPaymentListener;,
        Lcom/game/sdk/ui/payment/PaymentAdapter$PaymentViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/game/sdk/ui/payment/PaymentAdapter$PaymentViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field height:I

.field heightItem:I

.field itemPayObj:Lcom/game/sdk/comon/object/ItemPayObj;

.field onClickItemPaymentListener:Lcom/game/sdk/ui/payment/PaymentAdapter$OnClickItemPaymentListener;

.field width:I

.field widthItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/game/sdk/comon/object/ItemPayObj;Lcom/game/sdk/ui/payment/PaymentAdapter$OnClickItemPaymentListener;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->itemPayObj:Lcom/game/sdk/comon/object/ItemPayObj;

    .line 41
    iput-object p3, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->onClickItemPaymentListener:Lcom/game/sdk/ui/payment/PaymentAdapter$OnClickItemPaymentListener;

    .line 42
    invoke-virtual {p0}, Lcom/game/sdk/ui/payment/PaymentAdapter;->getScreenWidthInPixel()I

    move-result p1

    iput p1, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->width:I

    .line 43
    invoke-virtual {p0}, Lcom/game/sdk/ui/payment/PaymentAdapter;->getScreenHeightInPixel()I

    move-result p1

    iput p1, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->height:I

    .line 44
    iget p1, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->width:I

    invoke-virtual {p2}, Lcom/game/sdk/comon/object/ItemPayObj;->getConfig()Lcom/game/sdk/comon/object/ItemPayObj$Config;

    move-result-object p3

    invoke-virtual {p3}, Lcom/game/sdk/comon/object/ItemPayObj$Config;->getColumns()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    div-int/2addr p1, p3

    iput p1, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->widthItem:I

    .line 45
    iget p1, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->height:I

    invoke-virtual {p2}, Lcom/game/sdk/comon/object/ItemPayObj;->getConfig()Lcom/game/sdk/comon/object/ItemPayObj$Config;

    move-result-object p2

    invoke-virtual {p2}, Lcom/game/sdk/comon/object/ItemPayObj$Config;->getRows()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->heightItem:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->itemPayObj:Lcom/game/sdk/comon/object/ItemPayObj;

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ItemPayObj;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->itemPayObj:Lcom/game/sdk/comon/object/ItemPayObj;

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ItemPayObj;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getScreenHeightInPixel()I
    .locals 3

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDensity(Landroid/content/Context;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getScreenWidthInPixel()I
    .locals 1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 32
    check-cast p1, Lcom/game/sdk/ui/payment/PaymentAdapter$PaymentViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/game/sdk/ui/payment/PaymentAdapter;->onBindViewHolder(Lcom/game/sdk/ui/payment/PaymentAdapter$PaymentViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/game/sdk/ui/payment/PaymentAdapter$PaymentViewHolder;I)V
    .locals 7

    .line 57
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->itemPayObj:Lcom/game/sdk/comon/object/ItemPayObj;

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/ItemPayObj;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/game/sdk/comon/object/ItemPayObj$Item;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "widthItem: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->widthItem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , heightItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->heightItem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, -0x2

    if-ne v0, v1, :cond_0

    .line 63
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->widthItem:I

    int-to-double v3, v1

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    double-to-int v1, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 64
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 65
    iget-object v1, p1, Lcom/game/sdk/ui/payment/PaymentAdapter$PaymentViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/game/sdk/ui/payment/PaymentAdapter;->widthItem:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    iget-object v1, p1, Lcom/game/sdk/ui/payment/PaymentAdapter$PaymentViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    :goto_0
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {p2}, Lcom/game/sdk/comon/object/ItemPayObj$Item;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 75
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 76
    invoke-virtual {v1}, Lcom/bumptech/glide/request/RequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/ui/payment/PaymentAdapter$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/payment/PaymentAdapter$1;-><init>(Lcom/game/sdk/ui/payment/PaymentAdapter;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/game/sdk/ui/payment/PaymentAdapter$PaymentViewHolder;->imageView:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 90
    iget-object p1, p1, Lcom/game/sdk/ui/payment/PaymentAdapter$PaymentViewHolder;->imageView:Landroid/widget/ImageView;

    new-instance v0, Lcom/game/sdk/ui/payment/PaymentAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/game/sdk/ui/payment/PaymentAdapter$2;-><init>(Lcom/game/sdk/ui/payment/PaymentAdapter;Lcom/game/sdk/comon/object/ItemPayObj$Item;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/game/sdk/ui/payment/PaymentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/game/sdk/ui/payment/PaymentAdapter$PaymentViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/game/sdk/ui/payment/PaymentAdapter$PaymentViewHolder;
    .locals 2

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mobgame/R$layout;->item_payment:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/game/sdk/ui/payment/PaymentAdapter$PaymentViewHolder;

    invoke-direct {p2, p1}, Lcom/game/sdk/ui/payment/PaymentAdapter$PaymentViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
