.class public Lcom/tgs/aics/ui/activity/FAQListActivity;
.super Lcom/tgs/aics/ui/activity/BaseActivity;
.source "FAQListActivity.java"


# instance fields
.field private adapter:Lcom/tgs/aics/adapter/FAQListAdapter;

.field private final callbackData:Landroid/content/Intent;

.field private dataSources:Lcom/tgs/aics/bean/FAQListBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;-><init>()V

    .line 20
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FAQListActivity;->callbackData:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/ui/activity/FAQListActivity;)Landroid/content/Intent;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/FAQListActivity;->callbackData:Landroid/content/Intent;

    return-object p0
.end method

.method private initData()V
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->getUrlParamId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tgs/aics/ui/activity/FAQListActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/FAQListActivity$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/ui/activity/FAQListActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/tgs/aics/http/HttpApi;->getFAQListData(Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    return-void
.end method

.method private initGetMessageListener()V
    .locals 1

    .line 53
    new-instance v0, Lcom/tgs/aics/ui/activity/FAQListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/tgs/aics/ui/activity/FAQListActivity$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/tgs/aics/utils/ConstantUtil;->getMessageListener:Lcom/tgs/aics/listener/IGetMessageListener;

    return-void
.end method

.method static synthetic lambda$initGetMessageListener$1(Lcom/tgs/aics/bean/Message;)V
    .locals 4

    .line 55
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_WITHDRAW:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v0, v1, :cond_1

    .line 56
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

    .line 57
    invoke-virtual {v1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    sget-object p0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v0, v1, :cond_2

    .line 63
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected getViewName()Ljava/lang/String;
    .locals 1

    const-string v0, "tgs_aics_activity_faqlist"

    return-object v0
.end method

.method protected initView()V
    .locals 3

    .line 29
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/FAQListActivity$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/tgs/aics/ui/activity/FAQListActivity$1;-><init>(Lcom/tgs/aics/ui/activity/FAQListActivity;Z)V

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 36
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->initGetMessageListener()V

    const-string v0, "tgs_aics_faq_list_root_layout"

    .line 37
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2}, Lcom/tgs/aics/ui/activity/FAQListActivity;->loadBackgroundImage(Landroid/view/ViewGroup;Z)V

    const-string v0, "tgs_aics_faqListView"

    .line 39
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 40
    new-instance v1, Lcom/tgs/aics/adapter/FAQListAdapter;

    invoke-direct {v1, p0}, Lcom/tgs/aics/adapter/FAQListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/FAQListActivity;->adapter:Lcom/tgs/aics/adapter/FAQListAdapter;

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    new-instance v1, Lcom/tgs/aics/ui/activity/FAQListActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/FAQListActivity$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/ui/activity/FAQListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->initData()V

    return-void
.end method

.method synthetic lambda$initData$2$com-tgs-aics-ui-activity-FAQListActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->hideLoading()V

    if-eqz p1, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseBean;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    instance-of v0, p1, Lcom/tgs/aics/bean/FAQListBean;

    if-eqz v0, :cond_3

    .line 80
    check-cast p1, Lcom/tgs/aics/bean/FAQListBean;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FAQListActivity;->dataSources:Lcom/tgs/aics/bean/FAQListBean;

    .line 81
    invoke-virtual {p1}, Lcom/tgs/aics/bean/FAQListBean;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FAQListActivity;->dataSources:Lcom/tgs/aics/bean/FAQListBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/FAQListBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FAQListActivity;->adapter:Lcom/tgs/aics/adapter/FAQListAdapter;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FAQListActivity;->dataSources:Lcom/tgs/aics/bean/FAQListBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/FAQListBean;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tgs/aics/adapter/FAQListAdapter;->setData(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FAQListActivity;->showLoadErrorLayout(Z)V

    .line 86
    :goto_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FAQListActivity;->dataSources:Lcom/tgs/aics/bean/FAQListBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/FAQListBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FAQListActivity;->dataSources:Lcom/tgs/aics/bean/FAQListBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/FAQListBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FAQListActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->setAppNameTitle()V

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->setAppNameTitle()V

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FAQListActivity;->showLoadErrorLayout(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method synthetic lambda$initData$3$com-tgs-aics-ui-activity-FAQListActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    .line 76
    new-instance v0, Lcom/tgs/aics/ui/activity/FAQListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/ui/activity/FAQListActivity$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/ui/activity/FAQListActivity;Lcom/tgs/aics/bean/BaseBean;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-tgs-aics-ui-activity-FAQListActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FAQListActivity;->dataSources:Lcom/tgs/aics/bean/FAQListBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/FAQListBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/FAQListBean$Item;

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/tgs/aics/bean/FAQListBean$Item;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/tgs/aics/ui/activity/FAQListActivity;->handleUrlAction(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/tgs/aics/ui/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 109
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->initGetMessageListener()V

    return-void
.end method

.method public reloadData(Landroid/view/View;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->reloadData(Landroid/view/View;)V

    .line 102
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->showLoading()V

    .line 103
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FAQListActivity;->initData()V

    return-void
.end method
