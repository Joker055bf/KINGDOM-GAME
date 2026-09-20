.class public Lcom/tgs/aics/ui/activity/FAQDetailActivity;
.super Lcom/tgs/aics/ui/activity/BaseActivity;
.source "FAQDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/ui/activity/FAQDetailActivity$GameNameReceiver;
    }
.end annotation


# static fields
.field private static final FEEDBACK_TYPE_SOLVED:Ljava/lang/String; = "solved"

.field private static final FEEDBACK_TYPE_UNSOLVED:Ljava/lang/String; = "unsolved"


# instance fields
.field private bindIntent:Landroid/content/Intent;

.field private final callbackData:Landroid/content/Intent;

.field private faqId:Ljava/lang/String;

.field private feedbackType:Ljava/lang/String;

.field private gameNameReceiver:Lcom/tgs/aics/ui/activity/FAQDetailActivity$GameNameReceiver;

.field private hasSubmitFeedback:Z

.field private richTextView:Landroid/webkit/WebView;

.field private rootLayout:Landroid/widget/LinearLayout;

.field private solvedBtn:Landroid/widget/RadioButton;

.field private unsolvedBtn:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;-><init>()V

    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->callbackData:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->hasSubmitFeedback:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Landroid/content/Intent;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->bindIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Lcom/tgs/aics/ui/activity/FAQDetailActivity$GameNameReceiver;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->gameNameReceiver:Lcom/tgs/aics/ui/activity/FAQDetailActivity$GameNameReceiver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->richTextView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tgs/aics/ui/activity/FAQDetailActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->richTextView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Landroid/content/Intent;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->callbackData:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->rootLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private getFaqDetailData()V
    .locals 3

    .line 200
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->getUrlParamId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->faqId:Ljava/lang/String;

    .line 202
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->track()V

    .line 203
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->getUrlParamId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/tgs/aics/http/HttpApi;->getFAQDetailData(Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    return-void
.end method

.method private initData()V
    .locals 1

    .line 159
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->aicsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)V

    invoke-static {v0}, Lcom/tgs/aics/utils/CommonUtil;->getAicsServerAddress(Lcom/tgs/aics/listener/IBaseBeanListener;)V

    goto :goto_0

    .line 170
    :cond_0
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    if-nez v0, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->initWebSocket()V

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->getFaqDetailData()V

    :goto_0
    return-void
.end method

.method private initGetMessageListener()V
    .locals 1

    .line 142
    new-instance v0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/tgs/aics/utils/ConstantUtil;->getMessageListener:Lcom/tgs/aics/listener/IGetMessageListener;

    return-void
.end method

.method private initWebSocket()V
    .locals 3

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tgs/aics/websocket/WebSocketService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->bindIntent:Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 182
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->bindIntent:Landroid/content/Intent;

    new-instance v1, Lcom/tgs/aics/ui/activity/FAQDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity$3;-><init>(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic lambda$initGetMessageListener$4(Lcom/tgs/aics/bean/Message;)V
    .locals 4

    .line 143
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_WITHDRAW:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v0, v1, :cond_1

    .line 145
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/Message;

    .line 146
    invoke-virtual {v1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    sget-object p0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v0, v1, :cond_2

    .line 153
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$webViewConfig$3(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private radioButtonListener(Ljava/lang/String;)V
    .locals 3

    .line 124
    iget-boolean v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->hasSubmitFeedback:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 125
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->feedbackType:Ljava/lang/String;

    const-string v0, "solved"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->solvedBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 127
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->unsolvedBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->feedbackType:Ljava/lang/String;

    const-string v2, "unsolved"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->solvedBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 130
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->unsolvedBtn:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    :goto_0
    const-string p1, "tgs_aics_faq_detail_has_submit_feedback"

    .line 132
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 136
    :cond_2
    iput-boolean v1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->hasSubmitFeedback:Z

    .line 137
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->faqId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tgs/aics/http/HttpApi;->faqDetailTap(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->feedbackType:Ljava/lang/String;

    return-void
.end method

.method private track()V
    .locals 3

    .line 196
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->faqId:Ljava/lang/String;

    const-string v2, "tap"

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/http/HttpApi;->faqDetailTap(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private webViewConfig(Landroid/webkit/WebView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 110
    new-instance v0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 114
    new-instance v0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity$2;-><init>(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method protected getViewName()Ljava/lang/String;
    .locals 1

    const-string v0, "tgs_aics_activity_faqdetail"

    return-object v0
.end method

.method protected initView()V
    .locals 4

    .line 52
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/tgs/aics/ui/activity/FAQDetailActivity$1;-><init>(Lcom/tgs/aics/ui/activity/FAQDetailActivity;Z)V

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 76
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->initGetMessageListener()V

    const-string v0, "tgs_aics_faq_detail_root_layout"

    .line 77
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->rootLayout:Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {p0, v0, v2}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->loadBackgroundImage(Landroid/view/ViewGroup;Z)V

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "tgs_aics_game_name_update"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/tgs/aics/ui/activity/FAQDetailActivity$GameNameReceiver;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity$GameNameReceiver;-><init>(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)V

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->gameNameReceiver:Lcom/tgs/aics/ui/activity/FAQDetailActivity$GameNameReceiver;

    .line 84
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->gameNameReceiver:Lcom/tgs/aics/ui/activity/FAQDetailActivity$GameNameReceiver;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->gameNameReceiver:Lcom/tgs/aics/ui/activity/FAQDetailActivity$GameNameReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const-string v0, "tgs_aics_faqdetail_richtext"

    .line 89
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->richTextView:Landroid/webkit/WebView;

    .line 90
    invoke-direct {p0, v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->webViewConfig(Landroid/webkit/WebView;)V

    const-string v0, "tgs_aics_faq_detail_contact_us"

    .line 91
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda6;-><init>(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tgs_aics_faqdetail_solved_btn"

    .line 96
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->solvedBtn:Landroid/widget/RadioButton;

    const-string v0, "tgs_aics_faqdetail_unsolved_btn"

    .line 97
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->unsolvedBtn:Landroid/widget/RadioButton;

    .line 98
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->solvedBtn:Landroid/widget/RadioButton;

    new-instance v1, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda7;-><init>(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->unsolvedBtn:Landroid/widget/RadioButton;

    new-instance v1, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda8;-><init>(Lcom/tgs/aics/ui/activity/FAQDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->initData()V

    const-string v0, "tgs_aics_faq_detail_title"

    .line 102
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$getFaqDetailData$7$com-tgs-aics-ui-activity-FAQDetailActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 6

    const-string v0, "<!DOCTYPE html><html><head><style>p { margin: 0; }</style></head><body><p style=\"font-size:16px;\"><b>"

    if-eqz p1, :cond_2

    .line 205
    :try_start_0
    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseBean;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    instance-of v1, p1, Lcom/tgs/aics/bean/FAQDetailBean;

    if-eqz v1, :cond_1

    .line 207
    check-cast p1, Lcom/tgs/aics/bean/FAQDetailBean;

    .line 209
    invoke-virtual {p1}, Lcom/tgs/aics/bean/FAQDetailBean;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Lcom/tgs/aics/bean/FAQDetailBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "</b></p><br/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "</body></html>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->hideLoading()V

    .line 217
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->richTextView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->hideLoading()V

    const/4 p1, 0x0

    .line 220
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->showLoadErrorLayout(Z)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->hideLoading()V

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->hideLoading()V

    const/4 p1, 0x1

    .line 227
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->showLoadErrorLayout(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->hideLoading()V

    :goto_0
    return-void
.end method

.method synthetic lambda$getFaqDetailData$8$com-tgs-aics-ui-activity-FAQDetailActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    .line 203
    new-instance v0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/ui/activity/FAQDetailActivity;Lcom/tgs/aics/bean/BaseBean;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$initData$5$com-tgs-aics-ui-activity-FAQDetailActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 0

    .line 161
    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseBean;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 162
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    if-nez p1, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->initWebSocket()V

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->getFaqDetailData()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 166
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->showLoadErrorLayout(Z)V

    :goto_0
    return-void
.end method

.method synthetic lambda$initData$6$com-tgs-aics-ui-activity-FAQDetailActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    .line 160
    new-instance v0, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/ui/activity/FAQDetailActivity$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/ui/activity/FAQDetailActivity;Lcom/tgs/aics/bean/BaseBean;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-tgs-aics-ui-activity-FAQDetailActivity(Landroid/view/View;)V
    .locals 1

    .line 93
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$initView$1$com-tgs-aics-ui-activity-FAQDetailActivity(Landroid/view/View;)V
    .locals 0

    const-string p1, "solved"

    .line 98
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->radioButtonListener(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initView$2$com-tgs-aics-ui-activity-FAQDetailActivity(Landroid/view/View;)V
    .locals 0

    const-string p1, "unsolved"

    .line 99
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->radioButtonListener(Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 250
    invoke-super {p0, p1, p2, p3}, Lcom/tgs/aics/ui/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 251
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->initGetMessageListener()V

    return-void
.end method

.method public reloadData(Landroid/view/View;)V
    .locals 0

    .line 237
    invoke-super {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->reloadData(Landroid/view/View;)V

    .line 239
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->showLoading()V

    .line 240
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FAQDetailActivity;->initData()V

    return-void
.end method
