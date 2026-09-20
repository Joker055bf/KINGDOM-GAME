.class public Lcom/game/sdk/ui/login/AccountFragment;
.super Lcom/game/sdk/comon/game/BaseDialogFragment;
.source "AccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/game/sdk/comon/presenter/BaseView;
.implements Lcom/game/sdk/comon/utils/KeyboardHeightObserver;


# instance fields
.field btnClose:Landroid/widget/ImageButton;

.field btnLogin:Landroid/widget/TextView;

.field contentIv18:Landroid/widget/LinearLayout;

.field contentPanel:Landroidx/cardview/widget/CardView;

.field edtLoginAccount:Lcom/google/android/material/textfield/TextInputEditText;

.field edtLoginPassword:Lcom/google/android/material/textfield/TextInputEditText;

.field errEmailCount:I

.field iv18Plus:Landroid/widget/ImageView;

.field private keyboardProvider:Lcom/game/sdk/comon/utils/KeyboardHeightProvider;

.field layoutKeyboardSpace:Landroid/widget/LinearLayout;

.field leftContent:Landroid/widget/LinearLayout;

.field listener:Lcom/game/sdk/comon/listener/ILoginListener;

.field loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

.field mHandler:Landroid/os/Handler;

.field mRunable:Ljava/lang/Runnable;

.field private networkChangeReceiver:Landroid/content/BroadcastReceiver;

.field newFragment:Landroid/app/DialogFragment;

.field registerListener:Lcom/game/sdk/comon/listener/ILoginListener;

.field status:Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;

.field termContent:Landroid/widget/LinearLayout;

.field tvErrPass:Landroid/widget/TextView;

.field tvErrUser:Landroid/widget/TextView;

.field tvForgotPass:Landroid/widget/TextView;

.field tvHeaderLoginSocial:Landroid/widget/TextView;

.field tvPlayTimeNoti:Landroid/widget/TextView;

.field tvRegister:Landroid/widget/TextView;

.field tvTerm:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/game/sdk/comon/game/BaseDialogFragment;-><init>()V

    .line 226
    new-instance v0, Lcom/game/sdk/ui/login/AccountFragment$4;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/login/AccountFragment$4;-><init>(Lcom/game/sdk/ui/login/AccountFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->registerListener:Lcom/game/sdk/comon/listener/ILoginListener;

    .line 565
    new-instance v0, Lcom/game/sdk/ui/login/AccountFragment$9;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/login/AccountFragment$9;-><init>(Lcom/game/sdk/ui/login/AccountFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/game/sdk/ui/login/AccountFragment;)Landroid/app/Activity;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/game/sdk/ui/login/AccountFragment;)Landroid/app/Activity;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/game/sdk/ui/login/AccountFragment;)Landroid/app/Activity;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/game/sdk/ui/login/AccountFragment;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/game/sdk/ui/login/AccountFragment;->onLoginEmail()V

    return-void
.end method

.method static synthetic access$400(Lcom/game/sdk/ui/login/AccountFragment;)Landroid/app/Activity;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/game/sdk/ui/login/AccountFragment;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/game/sdk/ui/login/AccountFragment;->onLoginPlayNow()V

    return-void
.end method

.method static synthetic access$600(Lcom/game/sdk/ui/login/AccountFragment;)Landroid/app/Activity;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/game/sdk/ui/login/AccountFragment;)Landroid/app/Activity;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private changeKeyboardHeight(I)V
    .locals 2

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 582
    :try_start_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 583
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->layoutKeyboardSpace:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->layoutKeyboardSpace:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 588
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->layoutKeyboardSpace:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 590
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static newInstance(Lcom/game/sdk/comon/listener/ILoginListener;)Lcom/game/sdk/ui/login/AccountFragment;
    .locals 1

    .line 98
    new-instance v0, Lcom/game/sdk/ui/login/AccountFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/login/AccountFragment;-><init>()V

    .line 99
    invoke-virtual {v0, p0}, Lcom/game/sdk/ui/login/AccountFragment;->setListener(Lcom/game/sdk/comon/listener/ILoginListener;)V

    .line 100
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 101
    invoke-virtual {v0, p0}, Lcom/game/sdk/ui/login/AccountFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onLoginEmail()V
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/game/sdk/comon/utils/NetworkUtils;->checkNetwork(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/mobgame/R$string;->error_network:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 287
    :cond_0
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 290
    :cond_1
    iget v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->errEmailCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 291
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/mobgame/R$string;->err_input_more_than_5:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/game/sdk/ui/login/AccountFragment$5;

    invoke-direct {v2, p0}, Lcom/game/sdk/ui/login/AccountFragment$5;-><init>(Lcom/game/sdk/ui/login/AccountFragment;)V

    new-instance v3, Lcom/game/sdk/ui/login/AccountFragment$6;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/login/AccountFragment$6;-><init>(Lcom/game/sdk/ui/login/AccountFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorInputDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/utils/DialogUtils$DlgCloseListener;Lcom/game/sdk/comon/utils/DialogUtils$DlgCloseListener;)V

    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->edtLoginAccount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment;->edtLoginPassword:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    iget-object v2, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/game/sdk/comon/utils/StringUtils;->validateUser(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 311
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvErrUser:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvErrUser:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->edtLoginAccount:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mobgame/R$drawable;->slt_input_text_login_err:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->edtLoginAccount:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    .line 315
    iget v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->errEmailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->errEmailCount:I

    return-void

    .line 318
    :cond_3
    iget-object v2, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/game/sdk/comon/utils/StringUtils;->validatePassword(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 320
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvErrPass:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvErrPass:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->edtLoginPassword:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mobgame/R$drawable;->slt_input_text_login_err:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->edtLoginPassword:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    .line 324
    iget v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->errEmailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->errEmailCount:I

    return-void

    .line 328
    :cond_4
    iget-object v2, p0, Lcom/game/sdk/ui/login/AccountFragment;->loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

    invoke-interface {v2, v0, v1}, Lcom/game/sdk/ui/login/ILoginPresenter;->loginEmail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onLoginPlayNow()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/game/sdk/comon/utils/NetworkUtils;->checkNetwork(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/mobgame/R$string;->error_network:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 336
    :cond_0
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/config/GameConfigs;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

    invoke-interface {v0}, Lcom/game/sdk/ui/login/ILoginPresenter;->loginPlayNow()V

    return-void
.end method


# virtual methods
.method public applyConfig(Lcom/game/sdk/comon/object/AuthenConfigObj;)V
    .locals 5

    .line 392
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/AuthenConfigObj;->getLoginConfig()Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 395
    :cond_0
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_google()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_facebook()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    and-int/2addr v1, v4

    const/16 v4, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getPlay_now()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_email()I

    move-result v1

    if-nez v1, :cond_3

    .line 396
    invoke-virtual {p0}, Lcom/game/sdk/ui/login/AccountFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 397
    invoke-direct {p0}, Lcom/game/sdk/ui/login/AccountFragment;->onLoginPlayNow()V

    .line 399
    :cond_3
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->getLogin_email()I

    move-result v0

    if-nez v0, :cond_4

    .line 400
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->leftContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    :cond_4
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->btnClose:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/AuthenConfigObj;->getCanClose()I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvRegister:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/AuthenConfigObj;->getRegisterConfig()I

    move-result v1

    if-ne v1, v2, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/AuthenConfigObj;->getLogoOlder()Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/AuthenConfigObj;->getLogoOlder()Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/AuthenConfigObj;->getLogoOlder()Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 407
    :cond_7
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->contentIv18:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 409
    :cond_8
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/AuthenConfigObj;->getLogoOlder()Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/AuthenConfigObj;->getLogoOlder()Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 410
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 411
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget v1, Lcom/mobgame/R$drawable;->logotuoi:I

    .line 412
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget v1, Lcom/mobgame/R$drawable;->logotuoi:I

    .line 413
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 414
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 415
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 416
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/AuthenConfigObj;->getLogoOlder()Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 417
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment;->iv18Plus:Landroid/widget/ImageView;

    .line 418
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_4

    .line 420
    :cond_9
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->iv18Plus:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    :goto_4
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/AuthenConfigObj;->getLogoOlder()Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/AuthenConfigObj;->getLogoOlder()Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 423
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvPlayTimeNoti:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/AuthenConfigObj;->getLogoOlder()Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/AuthenConfigObj$logoOlder;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 3

    .line 512
    move-object v0, p1

    check-cast v0, Lcom/game/sdk/comon/object/BaseObj;

    .line 513
    invoke-virtual {v0}, Lcom/game/sdk/comon/object/BaseObj;->getStatus()I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 514
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/mobgame/R$string;->error_network:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 517
    :cond_0
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/LoginPlayNowErrObj;

    if-eqz v0, :cond_1

    .line 518
    check-cast p1, Lcom/game/sdk/comon/object/err/LoginPlayNowErrObj;

    .line 519
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/LoginPlayNowErrObj;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    :cond_1
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/LoginEmailErrObj;

    if-eqz v0, :cond_2

    .line 521
    check-cast p1, Lcom/game/sdk/comon/object/err/LoginEmailErrObj;

    .line 522
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/LoginEmailErrObj;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :cond_2
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/LoginFacebookErrObj;

    if-eqz v0, :cond_3

    .line 525
    check-cast p1, Lcom/game/sdk/comon/object/err/LoginFacebookErrObj;

    .line 526
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/LoginFacebookErrObj;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 527
    :cond_3
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/LoginGGErrObj;

    if-eqz v0, :cond_4

    .line 528
    check-cast p1, Lcom/game/sdk/comon/object/err/LoginGGErrObj;

    .line 529
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/LoginGGErrObj;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/game/sdk/comon/utils/DialogUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 530
    :cond_4
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/AuthenConfigErrObj;

    if-eqz v0, :cond_5

    .line 531
    new-instance p1, Lcom/game/sdk/comon/object/AuthenConfigObj;

    invoke-direct {p1}, Lcom/game/sdk/comon/object/AuthenConfigObj;-><init>()V

    .line 532
    new-instance v0, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;

    invoke-direct {v0}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;-><init>()V

    const/4 v1, 0x1

    .line 533
    invoke-virtual {p1, v1}, Lcom/game/sdk/comon/object/AuthenConfigObj;->setRegisterConfig(I)V

    .line 534
    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->setLogin_apple(I)V

    .line 535
    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->setLogin_email(I)V

    const/4 v2, 0x0

    .line 536
    invoke-virtual {v0, v2}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->setLogin_facebook(I)V

    .line 537
    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->setPlay_now(I)V

    .line 538
    invoke-virtual {v0, v2}, Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;->setLogin_google(I)V

    .line 539
    invoke-virtual {p1, v0}, Lcom/game/sdk/comon/object/AuthenConfigObj;->setLoginConfig(Lcom/game/sdk/comon/object/AuthenConfigObj$LoginConfig;)V

    .line 540
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/login/AccountFragment;->applyConfig(Lcom/game/sdk/comon/object/AuthenConfigObj;)V

    goto :goto_0

    .line 541
    :cond_5
    instance-of v0, p1, Lcom/game/sdk/comon/object/err/SdkConfigErrObj;

    if-eqz v0, :cond_7

    .line 542
    check-cast p1, Lcom/game/sdk/comon/object/err/SdkConfigErrObj;

    .line 543
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/SdkConfigErrObj;->getStatus()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_6

    .line 544
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/game/sdk/comon/utils/DialogUtils;->showExpireDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 546
    :cond_6
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/err/SdkConfigErrObj;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/game/sdk/ui/login/AccountFragment$8;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/login/AccountFragment$8;-><init>(Lcom/game/sdk/ui/login/AccountFragment;)V

    invoke-static {v0, p1, v1}, Lcom/game/sdk/comon/utils/DialogUtils;->showRetryDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/utils/DialogUtils$Listener;)V

    :cond_7
    :goto_0
    return-void
.end method

.method protected getLayoutResource()I
    .locals 1

    .line 118
    sget v0, Lcom/mobgame/R$layout;->fragment_account_container:I

    return v0
.end method

.method public hideProgress()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 436
    invoke-virtual {p0, v0, v1}, Lcom/game/sdk/ui/login/AccountFragment;->showPregressDialog(ZLjava/lang/String;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mHandler:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/game/sdk/ui/login/LoginPresenterImpl;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/login/LoginPresenterImpl;-><init>(Lcom/game/sdk/comon/presenter/BaseView;)V

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

    .line 148
    sget v0, Lcom/mobgame/R$id;->iv18Plus:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->iv18Plus:Landroid/widget/ImageView;

    .line 149
    sget v0, Lcom/mobgame/R$id;->layout_keyboard_space:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->layoutKeyboardSpace:Landroid/widget/LinearLayout;

    .line 150
    sget v0, Lcom/mobgame/R$id;->edtLoginAccount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->edtLoginAccount:Lcom/google/android/material/textfield/TextInputEditText;

    .line 151
    sget v0, Lcom/mobgame/R$id;->edtLoginPassword:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->edtLoginPassword:Lcom/google/android/material/textfield/TextInputEditText;

    .line 152
    sget v0, Lcom/mobgame/R$id;->tvTerm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvTerm:Landroid/widget/TextView;

    .line 153
    sget v0, Lcom/mobgame/R$id;->tvPlayTimeNoti:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvPlayTimeNoti:Landroid/widget/TextView;

    .line 154
    sget v0, Lcom/mobgame/R$id;->leftContent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->leftContent:Landroid/widget/LinearLayout;

    .line 155
    sget v0, Lcom/mobgame/R$id;->termContent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->termContent:Landroid/widget/LinearLayout;

    .line 156
    sget v0, Lcom/mobgame/R$id;->contentIv18:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->contentIv18:Landroid/widget/LinearLayout;

    .line 157
    sget v0, Lcom/mobgame/R$id;->btnLogin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->btnLogin:Landroid/widget/TextView;

    .line 158
    sget v0, Lcom/mobgame/R$id;->tvRegister:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvRegister:Landroid/widget/TextView;

    .line 159
    sget v0, Lcom/mobgame/R$id;->btnClose:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->btnClose:Landroid/widget/ImageButton;

    .line 160
    sget v0, Lcom/mobgame/R$id;->tvErrUser:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvErrUser:Landroid/widget/TextView;

    .line 161
    sget v0, Lcom/mobgame/R$id;->tvErrPass:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvErrPass:Landroid/widget/TextView;

    .line 162
    sget v0, Lcom/mobgame/R$id;->tvForgotPass:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvForgotPass:Landroid/widget/TextView;

    .line 163
    sget v0, Lcom/mobgame/R$id;->contentPanel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->contentPanel:Landroidx/cardview/widget/CardView;

    .line 165
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvTerm:Landroid/widget/TextView;

    sget v0, Lcom/mobgame/R$string;->lbl_term:I

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/login/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->edtLoginAccount:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lcom/game/sdk/ui/login/AccountFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/login/AccountFragment$1;-><init>(Lcom/game/sdk/ui/login/AccountFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->edtLoginPassword:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lcom/game/sdk/ui/login/AccountFragment$2;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/login/AccountFragment$2;-><init>(Lcom/game/sdk/ui/login/AccountFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 200
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->edtLoginPassword:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lcom/game/sdk/ui/login/AccountFragment$3;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/login/AccountFragment$3;-><init>(Lcom/game/sdk/ui/login/AccountFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 214
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->btnLogin:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->btnClose:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvTerm:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvRegister:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->tvForgotPass:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 219
    iput p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->errEmailCount:I

    .line 220
    new-instance p1, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;

    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->keyboardProvider:Lcom/game/sdk/comon/utils/KeyboardHeightProvider;

    .line 221
    invoke-virtual {p1}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->start()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment;->mRunable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 355
    :cond_0
    new-instance v0, Lcom/game/sdk/ui/login/AccountFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/game/sdk/ui/login/AccountFragment$7;-><init>(Lcom/game/sdk/ui/login/AccountFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mRunable:Ljava/lang/Runnable;

    .line 378
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_1

    .line 379
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->mHandler:Landroid/os/Handler;

    .line 380
    :cond_1
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mRunable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/game/sdk/comon/game/BaseDialogFragment;->onDetach()V

    .line 142
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->keyboardProvider:Lcom/game/sdk/comon/utils/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->close()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 608
    invoke-super {p0, p1}, Lcom/game/sdk/comon/game/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 609
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->listener:Lcom/game/sdk/comon/listener/ILoginListener;

    if-eqz p1, :cond_0

    .line 610
    invoke-interface {p1}, Lcom/game/sdk/comon/listener/ILoginListener;->onClose()V

    :cond_0
    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .locals 0

    .line 576
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/login/AccountFragment;->changeKeyboardHeight(I)V

    return-void
.end method

.method public onLoginSuccess(Lcom/game/sdk/comon/object/UserObj;Ljava/lang/String;)V
    .locals 1

    .line 504
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/game/sdk/comon/config/GameConfigs;->setUser(Lcom/game/sdk/comon/object/UserObj;)V

    .line 505
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/config/AuthenConfigs;->setAccessToken(Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/game/sdk/comon/api/RetrofitClient;->clearInstant()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 596
    invoke-super {p0}, Lcom/game/sdk/comon/game/BaseDialogFragment;->onPause()V

    .line 597
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->keyboardProvider:Lcom/game/sdk/comon/utils/KeyboardHeightProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/game/sdk/comon/utils/KeyboardHeightObserver;)V

    .line 598
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 130
    invoke-super {p0}, Lcom/game/sdk/comon/game/BaseDialogFragment;->onResume()V

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/game/sdk/ui/login/AccountFragment;->networkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Lcom/game/sdk/ui/login/AccountFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 135
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

    invoke-interface {v0}, Lcom/game/sdk/ui/login/ILoginPresenter;->getAuthenConfig()V

    .line 136
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->keyboardProvider:Lcom/game/sdk/comon/utils/KeyboardHeightProvider;

    invoke-virtual {v0, p0}, Lcom/game/sdk/comon/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/game/sdk/comon/utils/KeyboardHeightObserver;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 107
    invoke-super {p0}, Lcom/game/sdk/comon/game/BaseDialogFragment;->onStart()V

    .line 108
    invoke-virtual {p0}, Lcom/game/sdk/ui/login/AccountFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 124
    invoke-super {p0, p1, p2}, Lcom/game/sdk/comon/game/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/login/AccountFragment;->initView(Landroid/view/View;)V

    return-void
.end method

.method public setListener(Lcom/game/sdk/comon/listener/ILoginListener;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->listener:Lcom/game/sdk/comon/listener/ILoginListener;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 388
    invoke-super {p0, p1, p2}, Lcom/game/sdk/comon/game/BaseDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 431
    invoke-virtual {p0, v0, p1}, Lcom/game/sdk/ui/login/AccountFragment;->showPregressDialog(ZLjava/lang/String;)V

    return-void
.end method

.method public showRegisterDialog()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/game/sdk/ui/register/RegistryFragmentV2;

    const-string v1, "RegistryFragmentV2"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->newFragment:Landroid/app/DialogFragment;

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->registerListener:Lcom/game/sdk/comon/listener/ILoginListener;

    invoke-static {v0}, Lcom/game/sdk/ui/register/RegistryFragmentV2;->newInstance(Lcom/game/sdk/comon/listener/ILoginListener;)Lcom/game/sdk/ui/register/RegistryFragmentV2;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->newFragment:Landroid/app/DialogFragment;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->newFragment:Landroid/app/DialogFragment;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 263
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->newFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->newFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->newFragment:Landroid/app/DialogFragment;

    iget-object v2, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/game/sdk/ui/register/RegistryFragmentV2;

    invoke-virtual {v0, v2, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showTermDialog()V
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/game/sdk/ui/login/term/TermDialogFragment;

    const-string v1, "TermDialogFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/game/sdk/comon/api/ApiUtils;->getUrlTerm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/ui/login/term/TermDialogFragment;->newInstance(Ljava/lang/String;)Lcom/game/sdk/ui/login/term/TermDialogFragment;

    move-result-object v0

    :cond_0
    const/4 v2, 0x1

    .line 272
    invoke-virtual {v0, v2}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 273
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/game/sdk/ui/login/term/TermDialogFragment;

    invoke-virtual {v0, v2, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2

    .line 441
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/AuthenConfigResponseObj;

    if-eqz v0, :cond_0

    .line 442
    check-cast p1, Lcom/game/sdk/comon/object/response/AuthenConfigResponseObj;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/AuthenConfigResponseObj;->getData()Lcom/game/sdk/comon/object/AuthenConfigObj;

    move-result-object p1

    .line 443
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/game/sdk/comon/config/AuthenConfigs;->setAuthenConfigObj(Lcom/game/sdk/comon/object/AuthenConfigObj;)V

    .line 444
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/login/AccountFragment;->applyConfig(Lcom/game/sdk/comon/object/AuthenConfigObj;)V

    goto/16 :goto_1

    .line 445
    :cond_0
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/LoginPlayNowResponseObj;

    if-eqz v0, :cond_1

    .line 447
    check-cast p1, Lcom/game/sdk/comon/object/response/LoginPlayNowResponseObj;

    .line 448
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginPlayNowResponseObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    const-string v1, "PlayNow"

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/UserObj;->setLoginType(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginPlayNowResponseObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginPlayNowResponseObj;->getIsRegister()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/UserObj;->setLoginOrRegister(I)V

    .line 450
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginPlayNowResponseObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginPlayNowResponseObj;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/game/sdk/ui/login/AccountFragment;->onLoginSuccess(Lcom/game/sdk/comon/object/UserObj;Ljava/lang/String;)V

    .line 453
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

    invoke-interface {p1}, Lcom/game/sdk/ui/login/ILoginPresenter;->getSdkConfig()V

    goto/16 :goto_1

    .line 455
    :cond_1
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/LoginEmailResponseObj;

    if-eqz v0, :cond_2

    .line 457
    check-cast p1, Lcom/game/sdk/comon/object/response/LoginEmailResponseObj;

    .line 458
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginEmailResponseObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    const-string v1, "Email"

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/UserObj;->setLoginType(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginEmailResponseObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginEmailResponseObj;->getIsRegister()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/UserObj;->setLoginOrRegister(I)V

    .line 460
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginEmailResponseObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginEmailResponseObj;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/game/sdk/ui/login/AccountFragment;->onLoginSuccess(Lcom/game/sdk/comon/object/UserObj;Ljava/lang/String;)V

    .line 463
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

    invoke-interface {p1}, Lcom/game/sdk/ui/login/ILoginPresenter;->getSdkConfig()V

    goto/16 :goto_1

    .line 465
    :cond_2
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;

    if-eqz v0, :cond_3

    .line 467
    check-cast p1, Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;

    .line 468
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    const-string v1, "Facebook"

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/UserObj;->setLoginType(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;->getIsRegister()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/UserObj;->setLoginOrRegister(I)V

    .line 470
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginFacebookResponseObj;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/game/sdk/ui/login/AccountFragment;->onLoginSuccess(Lcom/game/sdk/comon/object/UserObj;Ljava/lang/String;)V

    .line 473
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

    invoke-interface {p1}, Lcom/game/sdk/ui/login/ILoginPresenter;->getSdkConfig()V

    goto/16 :goto_1

    .line 475
    :cond_3
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/LoginGoogleResponseObj;

    if-eqz v0, :cond_4

    .line 477
    check-cast p1, Lcom/game/sdk/comon/object/response/LoginGoogleResponseObj;

    .line 478
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginGoogleResponseObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    const-string v1, "Google"

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/UserObj;->setLoginType(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginGoogleResponseObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginGoogleResponseObj;->getIsRegister()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/UserObj;->setLoginOrRegister(I)V

    .line 480
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginGoogleResponseObj;->getData()Lcom/game/sdk/comon/object/UserObj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/LoginGoogleResponseObj;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/game/sdk/ui/login/AccountFragment;->onLoginSuccess(Lcom/game/sdk/comon/object/UserObj;Ljava/lang/String;)V

    .line 483
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->loginPresenter:Lcom/game/sdk/ui/login/ILoginPresenter;

    invoke-interface {p1}, Lcom/game/sdk/ui/login/ILoginPresenter;->getSdkConfig()V

    goto :goto_1

    .line 485
    :cond_4
    instance-of v0, p1, Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;

    if-eqz v0, :cond_7

    .line 486
    check-cast p1, Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;

    .line 487
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;->getData()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/config/GameConfigs;->setSdkConfig(Lcom/game/sdk/comon/object/SdkConfigObj;)V

    const-string v0, "LifeCycleActivity"

    const-string v1, "get game info success"

    .line 488
    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 489
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;->getData()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;->getData()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/SdkConfigObj;->getMaintenance()Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;->getData()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj;->getMaintenance()Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj$Maintenance;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 490
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/MobGameSDK;->getQueuePopups()Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "pop_link"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/MobGameSDK;->showPopup()V

    goto :goto_0

    .line 493
    :cond_5
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "login"

    invoke-virtual {p1, v0, v1}, Lcom/game/sdk/comon/game/GameSdk;->onLoginSuccess(Landroid/app/Activity;Ljava/lang/String;)V

    .line 494
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment;->listener:Lcom/game/sdk/comon/listener/ILoginListener;

    if-eqz p1, :cond_6

    .line 495
    invoke-interface {p1}, Lcom/game/sdk/comon/listener/ILoginListener;->onLoginSuccess()V

    .line 497
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/game/sdk/ui/login/AccountFragment;->dismiss()V

    :cond_7
    :goto_1
    return-void
.end method
