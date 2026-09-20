.class public Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;
.super Lcom/tgs/aics/ui/activity/BaseActivity;
.source "RedemptionCodeActivity.java"


# instance fields
.field private closeBtn:Landroid/widget/ImageView;

.field private contentBgImgView:Landroid/widget/ImageView;

.field private exchangeBgImgView:Landroid/widget/ImageView;

.field private exchangeBtn:Landroid/widget/TextView;

.field private instructionsView:Landroid/widget/TextView;

.field private redemptionCodeInput:Landroid/widget/EditText;

.field private redemptionCodeLabel:Landroid/widget/TextView;

.field private titleBgImgView:Landroid/widget/ImageView;

.field private titleView:Landroid/widget/TextView;

.field private viewContainer:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$cK6HH95ulSyICRy_pezyzuNmn-A(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->requestPageData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)Landroid/widget/EditText;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->redemptionCodeInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->doExchange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Lcom/tgs/aics/bean/RedemptionCodePageBean;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->refreshUI(Lcom/tgs/aics/bean/RedemptionCodePageBean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->titleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Landroid/widget/TextView;Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->refreshTextView(Landroid/widget/TextView;Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->redemptionCodeLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->instructionsView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->exchangeBtn:Landroid/widget/TextView;

    return-object p0
.end method

.method private doExchange(Ljava/lang/String;)V
    .locals 10

    .line 235
    new-instance v0, Lcom/tgs/aics/ui/dialog/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->show()V

    .line 238
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "server_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 239
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "player_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 240
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "config_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 241
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v3

    new-instance v9, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;

    invoke-direct {v9, p0, v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$7;-><init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Lcom/tgs/aics/ui/dialog/LoadingDialog;)V

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v3 .. v9}, Lcom/tgs/aics/http/HttpApi;->commitRedemptionCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IHttpRspDataListener;)V

    return-void
.end method

.method private initData()V
    .locals 1

    .line 96
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->aicsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)V

    invoke-static {v0}, Lcom/tgs/aics/utils/CommonUtil;->getAicsServerAddress(Lcom/tgs/aics/listener/IBaseBeanListener;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->requestPageData()V

    :goto_0
    return-void
.end method

.method private refreshContentView(Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;)V
    .locals 4

    .line 166
    iget-object v0, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;->backgroundImg:Ljava/lang/String;

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "drawable"

    if-nez v1, :cond_0

    const-string v1, "tgs_aics_redemption_code_bg"

    .line 168
    invoke-static {p0, v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 169
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->contentBgImgView:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$5;-><init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->contentBgImgView:Landroid/widget/ImageView;

    .line 196
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 200
    :cond_0
    iget-object p1, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;->redeemButton:Lcom/tgs/aics/bean/RedemptionCodePageBean$RedeemButtonBean;

    if-eqz p1, :cond_1

    .line 202
    iget-object v0, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean$RedeemButtonBean;->backgroundImg:Ljava/lang/String;

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "tgs_aics_form_btn_submit_style"

    .line 204
    invoke-static {p0, v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 205
    iget-object v2, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->exchangeBgImgView:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$6;-><init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Lcom/tgs/aics/bean/RedemptionCodePageBean$RedeemButtonBean;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->exchangeBgImgView:Landroid/widget/ImageView;

    .line 216
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_1
    return-void
.end method

.method private refreshTextView(Landroid/widget/TextView;Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 223
    invoke-virtual {p2}, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;->convertFontSize()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 225
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 227
    :cond_0
    invoke-virtual {p2}, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;->convertTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    invoke-virtual {p2}, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;->convertTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 229
    iget-object p2, p2, Lcom/tgs/aics/bean/RedemptionCodePageBean$TextConfigBean;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private refreshTitleView(Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;)V
    .locals 3

    .line 134
    iget-object v0, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;->backgroundImg:Ljava/lang/String;

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tgs_aics_redemption_code_bg"

    const-string v2, "drawable"

    .line 136
    invoke-static {p0, v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 137
    iget-object v2, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->titleBgImgView:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$4;-><init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->titleBgImgView:Landroid/widget/ImageView;

    .line 149
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 153
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;->cancelImg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->closeBtn:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;->cancelImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->closeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_1
    const-string v0, "left"

    .line 156
    iget-object p1, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;->cancelPosition:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 158
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->closeBtn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const v0, 0x800013

    .line 159
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 160
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->closeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private refreshUI(Lcom/tgs/aics/bean/RedemptionCodePageBean;)V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->hideLoading()V

    .line 124
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->viewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean;->titleConfig:Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;

    invoke-direct {p0, v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->refreshTitleView(Lcom/tgs/aics/bean/RedemptionCodePageBean$TitleConfig;)V

    .line 128
    iget-object p1, p1, Lcom/tgs/aics/bean/RedemptionCodePageBean;->contentConfig:Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;

    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->refreshContentView(Lcom/tgs/aics/bean/RedemptionCodePageBean$ContentConfig;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private requestPageData()V
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "config_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$3;-><init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/tgs/aics/http/HttpApi;->getRedemptionCodePageData(Ljava/lang/String;Lcom/tgs/aics/listener/IHttpRspDataListener;)V

    return-void
.end method


# virtual methods
.method protected getViewName()Ljava/lang/String;
    .locals 1

    const-string v0, "tgs_aics_activity_redemption_code"

    return-object v0
.end method

.method protected initView()V
    .locals 2

    const-string v0, "redemptionCodeContainer"

    .line 58
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->viewContainer:Landroid/view/View;

    const-string v0, "titleBgImgView"

    .line 59
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->titleBgImgView:Landroid/widget/ImageView;

    const-string v0, "contentBgImgView"

    .line 60
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->contentBgImgView:Landroid/widget/ImageView;

    const-string v0, "exchangeBgImgView"

    .line 61
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->exchangeBgImgView:Landroid/widget/ImageView;

    const-string v0, "titleView"

    .line 64
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->titleView:Landroid/widget/TextView;

    const-string v0, "closeBtn"

    .line 65
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->closeBtn:Landroid/widget/ImageView;

    const-string v0, "redemptionCodeLabel"

    .line 66
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->redemptionCodeLabel:Landroid/widget/TextView;

    const-string v0, "redemptionCodeInput"

    .line 67
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->redemptionCodeInput:Landroid/widget/EditText;

    const-string v0, "redemptionCodeTip"

    .line 68
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->instructionsView:Landroid/widget/TextView;

    const-string v0, "exchangeBtn"

    .line 69
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->exchangeBtn:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->closeBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$1;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$1;-><init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->exchangeBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$2;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$2;-><init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->initData()V

    return-void
.end method

.method synthetic lambda$initData$0$com-tgs-aics-ui-activity-RedemptionCodeActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 0

    .line 97
    new-instance p1, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;)V

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
