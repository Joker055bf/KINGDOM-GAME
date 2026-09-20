.class public Lcom/tgs/aics/ui/activity/HomeActivity;
.super Lcom/tgs/aics/ui/activity/BaseActivity;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/ui/activity/HomeActivity$GameNameReceiver;
    }
.end annotation


# static fields
.field private static final LISTVIEW_COUNT_PER_LOAD:I = 0x28


# instance fields
.field private activity:Lcom/tgs/aics/ui/activity/HomeActivity;

.field private bindIntent:Landroid/content/Intent;

.field private currentTabIndex:I

.field private data:Lcom/tgs/aics/bean/HomeData;

.field private gameNameReceiver:Lcom/tgs/aics/ui/activity/HomeActivity$GameNameReceiver;

.field private hasOpenIMPageWithPayIssue:Z

.field private helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

.field private helpCenterEmptyViewLayout:Landroid/widget/LinearLayout;

.field private helpCenterFragmentAdapter:Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;

.field private helpCenterItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/ImportantAttentionBean$Item;",
            ">;"
        }
    .end annotation
.end field

.field private helpCenterLayout:Landroid/widget/LinearLayout;

.field private helpCenterListViewCurrentPage:I

.field private helpCenterLv:Lcom/tgs/aics/widget/TypeListView;

.field private helpCenterTitleTextView:Landroid/widget/TextView;

.field private importantAttentionAdapter:Lcom/tgs/aics/adapter/ImportantAttentionAdapter;

.field private importantAttentionBean:Lcom/tgs/aics/bean/ImportantAttentionBean;

.field private importantAttentionTitleTextView:Landroid/widget/TextView;

.field private rootLayout:Landroid/widget/LinearLayout;

.field private scrollView:Landroid/widget/ScrollView;

.field private searchText:Landroid/widget/EditText;

.field private selfServiceAdapter:Lcom/tgs/aics/adapter/SelfServiceAdapter;

.field private selfServiceBean:Lcom/tgs/aics/bean/SelfServiceBean;

.field private selfServiceGridView:Lcom/tgs/aics/widget/TypeGridView;

.field private selfServiceTitleTextView:Landroid/widget/TextView;

.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private unreadMessageCountTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$qvmOvAflEhIynYmfgRmP-fdSNHM(Lcom/tgs/aics/ui/activity/HomeActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->dealUnreadMessageTextView(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->currentTabIndex:I

    .line 72
    iput v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterListViewCurrentPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/ui/activity/HomeActivity;)Landroid/content/Intent;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->bindIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/aics/ui/activity/HomeActivity;)Landroid/widget/EditText;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->searchText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tgs/aics/ui/activity/HomeActivity;)Lcom/tgs/aics/ui/activity/HomeActivity$GameNameReceiver;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->gameNameReceiver:Lcom/tgs/aics/ui/activity/HomeActivity$GameNameReceiver;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tgs/aics/ui/activity/HomeActivity;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->currentTabIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/tgs/aics/ui/activity/HomeActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterLvAdapterRefresh()V

    return-void
.end method

.method static synthetic access$500(Lcom/tgs/aics/ui/activity/HomeActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->rootLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private dealUnreadMessageCount()V
    .locals 1

    .line 291
    new-instance v0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda13;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    sput-object v0, Lcom/tgs/aics/utils/ConstantUtil;->unreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener;

    return-void
.end method

.method private dealUnreadMessageTextView(I)V
    .locals 1

    .line 295
    new-instance v0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda10;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;I)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deepCopy(Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 534
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 535
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 536
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 538
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 539
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 541
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 543
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getUnreadMessageCount()V
    .locals 2

    .line 279
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda15;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/http/HttpApi;->getUnreadMessageCount(Lcom/tgs/aics/listener/IBaseBeanListener;)V

    return-void
.end method

.method private helpCenterItemsCalculate()V
    .locals 4

    .line 427
    iget v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->currentTabIndex:I

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/HelpCenterBean;->getHelpCenterTabs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 430
    :cond_0
    iget v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterListViewCurrentPage:I

    mul-int/lit8 v0, v0, 0x28

    add-int/lit8 v1, v0, 0x28

    .line 432
    :goto_0
    iget-object v2, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    invoke-virtual {v2}, Lcom/tgs/aics/bean/HelpCenterBean;->getHelpCenterTabs()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->currentTabIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/ImportantAttentionBean;

    invoke-virtual {v2}, Lcom/tgs/aics/bean/ImportantAttentionBean;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-lt v0, v1, :cond_1

    goto :goto_1

    .line 435
    :cond_1
    iget-object v2, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    invoke-virtual {v2}, Lcom/tgs/aics/bean/HelpCenterBean;->getHelpCenterTabs()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->currentTabIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/ImportantAttentionBean;

    invoke-virtual {v2}, Lcom/tgs/aics/bean/ImportantAttentionBean;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;

    .line 436
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_2
    :goto_1
    iget v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterListViewCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterListViewCurrentPage:I

    return-void
.end method

.method private helpCenterLvAdapterRefresh()V
    .locals 2

    const/4 v0, 0x0

    .line 413
    iput v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterListViewCurrentPage:I

    .line 414
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 415
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 416
    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterItems:Ljava/util/List;

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterItems:Ljava/util/List;

    .line 418
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterItemsCalculate()V

    .line 419
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterFragmentAdapter:Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;

    if-eqz v0, :cond_1

    .line 420
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;->setData(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private initData()V
    .locals 2

    .line 325
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda17;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/http/HttpApi;->getHomeData(Lcom/tgs/aics/listener/IBaseBeanListener;)V

    return-void
.end method

.method private initWebSocket()V
    .locals 3

    .line 306
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tgs/aics/websocket/WebSocketService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->bindIntent:Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 308
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->bindIntent:Landroid/content/Intent;

    new-instance v1, Lcom/tgs/aics/ui/activity/HomeActivity$3;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/HomeActivity$3;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tgs/aics/ui/activity/HomeActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private loadMoreHelpCenterItem()V
    .locals 2

    .line 445
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterItemsCalculate()V

    .line 446
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterFragmentAdapter:Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;

    if-eqz v0, :cond_0

    .line 447
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;->setData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private openIMActivityWithPayIssueIfNeed()V
    .locals 4

    .line 347
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_key_player_issue"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->hasOpenIMPageWithPayIssue:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 349
    iput-boolean v2, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->hasOpenIMPageWithPayIssue:Z

    .line 350
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v2}, Lcom/tgs/aics/ui/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private refreshUI()V
    .locals 1

    .line 365
    new-instance v0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda11;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private search(Ljava/lang/String;)V
    .locals 2

    .line 462
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda8;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/http/HttpApi;->getHomeData(Lcom/tgs/aics/listener/IBaseBeanListener;)V

    return-void
.end method


# virtual methods
.method protected getViewName()Ljava/lang/String;
    .locals 1

    const-string v0, "tgs_aics_activity_home"

    return-object v0
.end method

.method protected initView()V
    .locals 5

    .line 106
    iput-object p0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->activity:Lcom/tgs/aics/ui/activity/HomeActivity;

    .line 108
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/HomeActivity$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/tgs/aics/ui/activity/HomeActivity$1;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;Z)V

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 127
    invoke-static {}, Lcom/ypx/imagepicker/utils/CommonUtil;->hasContainExoPlayerClass()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Lxyz/doikki/videoplayer/player/VideoViewConfig;->newBuilder()Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;

    move-result-object v0

    .line 130
    invoke-static {}, Lxyz/doikki/videoplayer/ijk/IjkPlayerFactory;->create()Lxyz/doikki/videoplayer/ijk/IjkPlayerFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->setPlayerFactory(Lxyz/doikki/videoplayer/player/PlayerFactory;)Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoViewConfig$Builder;->build()Lxyz/doikki/videoplayer/player/VideoViewConfig;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lxyz/doikki/videoplayer/player/VideoViewManager;->setConfig(Lxyz/doikki/videoplayer/player/VideoViewConfig;)V

    .line 135
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "tgs_aics_game_name_update"

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    new-instance v1, Lcom/tgs/aics/ui/activity/HomeActivity$GameNameReceiver;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/HomeActivity$GameNameReceiver;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->gameNameReceiver:Lcom/tgs/aics/ui/activity/HomeActivity$GameNameReceiver;

    .line 138
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v1, v3, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->gameNameReceiver:Lcom/tgs/aics/ui/activity/HomeActivity$GameNameReceiver;

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->gameNameReceiver:Lcom/tgs/aics/ui/activity/HomeActivity$GameNameReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const-string v0, "tgs_aics_home_root_layout"

    .line 142
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->rootLayout:Landroid/widget/LinearLayout;

    .line 143
    invoke-virtual {p0, v0, v2}, Lcom/tgs/aics/ui/activity/HomeActivity;->loadBackgroundImage(Landroid/view/ViewGroup;Z)V

    .line 145
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->addSystemUiVisibilityChangeListener(Landroid/view/ViewGroup;)V

    const-string v0, "tgs_aics_scrollview"

    .line 147
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->scrollView:Landroid/widget/ScrollView;

    .line 148
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda18;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const-string v0, "tgs_aics_home_search_text"

    .line 160
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->searchText:Landroid/widget/EditText;

    .line 161
    new-instance v1, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const-string v0, "tgs_aics_unread_message_count"

    .line 169
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->unreadMessageCountTextView:Landroid/widget/TextView;

    const-string v0, "tgs_aics_self_service_title"

    .line 171
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceTitleTextView:Landroid/widget/TextView;

    const-string v0, "tgs_aics_grid_view"

    .line 172
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/widget/TypeGridView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceGridView:Lcom/tgs/aics/widget/TypeGridView;

    .line 173
    new-instance v0, Lcom/tgs/aics/adapter/SelfServiceAdapter;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceGridView:Lcom/tgs/aics/widget/TypeGridView;

    invoke-direct {v0, p0, v1}, Lcom/tgs/aics/adapter/SelfServiceAdapter;-><init>(Landroid/content/Context;Lcom/tgs/aics/widget/TypeGridView;)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceAdapter:Lcom/tgs/aics/adapter/SelfServiceAdapter;

    .line 174
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceGridView:Lcom/tgs/aics/widget/TypeGridView;

    invoke-virtual {v1, v0}, Lcom/tgs/aics/widget/TypeGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceGridView:Lcom/tgs/aics/widget/TypeGridView;

    const-string v1, "tgs_aics_self_service_empty_view_layout"

    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/widget/TypeGridView;->setEmptyView(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceGridView:Lcom/tgs/aics/widget/TypeGridView;

    new-instance v1, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/widget/TypeGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "tgs_aics_important_attention_title"

    .line 183
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->importantAttentionTitleTextView:Landroid/widget/TextView;

    const-string v0, "tgs_aics_list_view_important_attention"

    .line 184
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/widget/TypeListView;

    .line 185
    new-instance v1, Lcom/tgs/aics/adapter/ImportantAttentionAdapter;

    invoke-direct {v1, p0}, Lcom/tgs/aics/adapter/ImportantAttentionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->importantAttentionAdapter:Lcom/tgs/aics/adapter/ImportantAttentionAdapter;

    .line 186
    invoke-virtual {v0, v1}, Lcom/tgs/aics/widget/TypeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v1, "tgs_aics_important_attention_empty_view_layout"

    .line 187
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/widget/TypeListView;->setEmptyView(Landroid/view/View;)V

    .line 188
    new-instance v1, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/widget/TypeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "tgs_aics_help_center_title"

    .line 195
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterTitleTextView:Landroid/widget/TextView;

    const-string v0, "tgs_aics_tab_layout"

    .line 196
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 197
    new-instance v1, Lcom/tgs/aics/ui/activity/HomeActivity$2;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/HomeActivity$2;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    const-string v0, "tgs_aics_help_center_lv"

    .line 213
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/widget/TypeListView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterLv:Lcom/tgs/aics/widget/TypeListView;

    .line 214
    new-instance v0, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;

    invoke-direct {v0, p0}, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterFragmentAdapter:Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;

    .line 215
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterLv:Lcom/tgs/aics/widget/TypeListView;

    invoke-virtual {v1, v0}, Lcom/tgs/aics/widget/TypeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterLv:Lcom/tgs/aics/widget/TypeListView;

    new-instance v1, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda4;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/widget/TypeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const-string v0, "tgs_aics_help_center_empty_view_layout"

    .line 225
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterEmptyViewLayout:Landroid/widget/LinearLayout;

    const-string v0, "tgs_aics_help_center_layout"

    .line 226
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterLayout:Landroid/widget/LinearLayout;

    const-string v0, "tgs_aics_help_center_left_arrow_layout"

    .line 228
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 229
    new-instance v1, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda5;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tgs_aics_help_center_right_arrow_layout"

    .line 236
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 237
    new-instance v1, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda6;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->aicsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    new-instance v0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda7;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;)V

    invoke-static {v0}, Lcom/tgs/aics/utils/CommonUtil;->getAicsServerAddress(Lcom/tgs/aics/listener/IBaseBeanListener;)V

    goto :goto_1

    .line 260
    :cond_2
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->getUnreadMessageCount()V

    .line 261
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->initWebSocket()V

    .line 262
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->initData()V

    .line 263
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->dealUnreadMessageCount()V

    :goto_1
    return-void
.end method

.method synthetic lambda$dealUnreadMessageTextView$11$com-tgs-aics-ui-activity-HomeActivity(I)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->unreadMessageCountTextView:Landroid/widget/TextView;

    const/16 v1, 0x63

    if-le p1, v1, :cond_0

    const-string v1, "99+"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p1, :cond_1

    .line 298
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->unreadMessageCountTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 300
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->unreadMessageCountTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method synthetic lambda$getUnreadMessageCount$10$com-tgs-aics-ui-activity-HomeActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    .line 279
    new-instance v0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;Lcom/tgs/aics/bean/BaseBean;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$getUnreadMessageCount$9$com-tgs-aics-ui-activity-HomeActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    .line 280
    instance-of v0, p1, Lcom/tgs/aics/bean/UnreadMessageCountBean;

    if-eqz v0, :cond_0

    .line 281
    check-cast p1, Lcom/tgs/aics/bean/UnreadMessageCountBean;

    .line 282
    invoke-virtual {p1}, Lcom/tgs/aics/bean/UnreadMessageCountBean;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p1}, Lcom/tgs/aics/bean/UnreadMessageCountBean;->getUnreadMessageCount()I

    move-result p1

    .line 284
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->dealUnreadMessageTextView(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initData$12$com-tgs-aics-ui-activity-HomeActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseBean;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    instance-of v0, p1, Lcom/tgs/aics/bean/HomeData;

    if-eqz v0, :cond_1

    .line 328
    check-cast p1, Lcom/tgs/aics/bean/HomeData;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->data:Lcom/tgs/aics/bean/HomeData;

    .line 329
    invoke-virtual {p1}, Lcom/tgs/aics/bean/HomeData;->getSelfServiceBean()Lcom/tgs/aics/bean/SelfServiceBean;

    move-result-object p1

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->deepCopy(Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/SelfServiceBean;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceBean:Lcom/tgs/aics/bean/SelfServiceBean;

    .line 331
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->data:Lcom/tgs/aics/bean/HomeData;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/HomeData;->getImportantAttentionBean()Lcom/tgs/aics/bean/ImportantAttentionBean;

    move-result-object p1

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->deepCopy(Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/ImportantAttentionBean;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->importantAttentionBean:Lcom/tgs/aics/bean/ImportantAttentionBean;

    .line 333
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->data:Lcom/tgs/aics/bean/HomeData;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/HomeData;->getHelpCenterBean()Lcom/tgs/aics/bean/HelpCenterBean;

    move-result-object p1

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->deepCopy(Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/HelpCenterBean;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    .line 335
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->refreshUI()V

    .line 336
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->openIMActivityWithPayIssueIfNeed()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 339
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->showLoadErrorLayout(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$initData$13$com-tgs-aics-ui-activity-HomeActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    .line 325
    new-instance v0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda14;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;Lcom/tgs/aics/bean/BaseBean;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-tgs-aics-ui-activity-HomeActivity()V
    .locals 3

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->scrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/HelpCenterBean;->getHelpCenterTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/HelpCenterBean;->getHelpCenterTabs()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->currentTabIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/ImportantAttentionBean;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/ImportantAttentionBean;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->loadMoreHelpCenterItem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method synthetic lambda$initView$1$com-tgs-aics-ui-activity-HomeActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 162
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->activity:Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->search(Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->activity:Lcom/tgs/aics/ui/activity/HomeActivity;

    iget-object p1, p1, Lcom/tgs/aics/ui/activity/HomeActivity;->searchText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 165
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->searchText:Landroid/widget/EditText;

    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$initView$2$com-tgs-aics-ui-activity-HomeActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceBean:Lcom/tgs/aics/bean/SelfServiceBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/SelfServiceBean;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/SelfServiceBean$Item;

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Lcom/tgs/aics/bean/SelfServiceBean$Item;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/tgs/aics/ui/activity/HomeActivity;->handleUrlAction(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initView$3$com-tgs-aics-ui-activity-HomeActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->importantAttentionBean:Lcom/tgs/aics/bean/ImportantAttentionBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/ImportantAttentionBean;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;

    .line 190
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->importantAttentionBean:Lcom/tgs/aics/bean/ImportantAttentionBean;

    if-eqz p2, :cond_0

    .line 191
    invoke-virtual {p1}, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/tgs/aics/ui/activity/HomeActivity;->handleUrlAction(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initView$4$com-tgs-aics-ui-activity-HomeActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 218
    :try_start_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/HelpCenterBean;->getHelpCenterTabs()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->currentTabIndex:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/ImportantAttentionBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/ImportantAttentionBean;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/tgs/aics/ui/activity/HomeActivity;->handleUrlAction(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method synthetic lambda$initView$5$com-tgs-aics-ui-activity-HomeActivity(Landroid/view/View;)V
    .locals 3

    .line 230
    iget p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->currentTabIndex:I

    if-lez p1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    .line 232
    iget p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->currentTabIndex:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->currentTabIndex:I

    .line 233
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterLvAdapterRefresh()V

    :cond_0
    return-void
.end method

.method synthetic lambda$initView$6$com-tgs-aics-ui-activity-HomeActivity(Landroid/view/View;)V
    .locals 3

    .line 238
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/HelpCenterBean;->getHelpCenterTabs()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/HelpCenterBean;->getHelpCenterTabs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->currentTabIndex:I

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/HelpCenterBean;->getHelpCenterTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 242
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->currentTabIndex:I

    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    .line 243
    iget p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->currentTabIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->currentTabIndex:I

    .line 244
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterLvAdapterRefresh()V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$initView$7$com-tgs-aics-ui-activity-HomeActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 0

    .line 250
    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseBean;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->getUnreadMessageCount()V

    .line 252
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->initWebSocket()V

    .line 253
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->initData()V

    .line 254
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->dealUnreadMessageCount()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 256
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->showLoadErrorLayout(Z)V

    :goto_0
    return-void
.end method

.method synthetic lambda$initView$8$com-tgs-aics-ui-activity-HomeActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    .line 249
    new-instance v0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda9;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;Lcom/tgs/aics/bean/BaseBean;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$refreshUI$14$com-tgs-aics-ui-activity-HomeActivity(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 379
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/SelfServiceBean$Item;

    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p1}, Lcom/tgs/aics/bean/SelfServiceBean$Item;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/tgs/aics/ui/activity/HomeActivity;->handleUrlAction(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$refreshUI$15$com-tgs-aics-ui-activity-HomeActivity()V
    .locals 4

    .line 366
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->hideLoading()V

    .line 368
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceBean:Lcom/tgs/aics/bean/SelfServiceBean;

    if-eqz v0, :cond_2

    .line 369
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/SelfServiceBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceBean:Lcom/tgs/aics/bean/SelfServiceBean;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/SelfServiceBean;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceBean:Lcom/tgs/aics/bean/SelfServiceBean;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/SelfServiceBean;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/SelfServiceBean$Item;

    .line 373
    invoke-virtual {v2}, Lcom/tgs/aics/bean/SelfServiceBean$Item;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceAdapter:Lcom/tgs/aics/adapter/SelfServiceAdapter;

    invoke-virtual {v1, v0}, Lcom/tgs/aics/adapter/SelfServiceAdapter;->setData(Ljava/util/List;)V

    .line 378
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceGridView:Lcom/tgs/aics/widget/TypeGridView;

    new-instance v2, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda16;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/tgs/aics/widget/TypeGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->importantAttentionBean:Lcom/tgs/aics/bean/ImportantAttentionBean;

    if-eqz v0, :cond_3

    .line 387
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->importantAttentionTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/ImportantAttentionBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->importantAttentionAdapter:Lcom/tgs/aics/adapter/ImportantAttentionAdapter;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->importantAttentionBean:Lcom/tgs/aics/bean/ImportantAttentionBean;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/ImportantAttentionBean;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/adapter/ImportantAttentionAdapter;->setData(Ljava/util/List;)V

    .line 391
    :cond_3
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    if-eqz v0, :cond_7

    .line 392
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/HelpCenterBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/tgs/aics/bean/HelpCenterBean;->getHelpCenterTabs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/HelpCenterBean;->getHelpCenterTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    goto :goto_2

    .line 398
    :cond_4
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterEmptyViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    .line 403
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/HelpCenterBean;->getHelpCenterTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/ImportantAttentionBean;

    .line 404
    invoke-virtual {v1}, Lcom/tgs/aics/bean/ImportantAttentionBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 405
    iget-object v2, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_1

    .line 407
    :cond_5
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterLvAdapterRefresh()V

    goto :goto_3

    .line 394
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterEmptyViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method synthetic lambda$search$16$com-tgs-aics-ui-activity-HomeActivity(Lcom/tgs/aics/bean/BaseBean;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_c

    .line 463
    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseBean;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 464
    iput v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->currentTabIndex:I

    .line 465
    instance-of v0, p1, Lcom/tgs/aics/bean/HomeData;

    if-eqz v0, :cond_c

    .line 466
    check-cast p1, Lcom/tgs/aics/bean/HomeData;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->data:Lcom/tgs/aics/bean/HomeData;

    .line 467
    invoke-virtual {p1}, Lcom/tgs/aics/bean/HomeData;->getSelfServiceBean()Lcom/tgs/aics/bean/SelfServiceBean;

    move-result-object p1

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->deepCopy(Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/SelfServiceBean;

    .line 468
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->data:Lcom/tgs/aics/bean/HomeData;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/HomeData;->getImportantAttentionBean()Lcom/tgs/aics/bean/ImportantAttentionBean;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->deepCopy(Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/ImportantAttentionBean;

    .line 469
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->data:Lcom/tgs/aics/bean/HomeData;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/HomeData;->getHelpCenterBean()Lcom/tgs/aics/bean/HelpCenterBean;

    move-result-object v1

    invoke-static {v1}, Lcom/tgs/aics/ui/activity/HomeActivity;->deepCopy(Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/HelpCenterBean;

    .line 471
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    invoke-static {p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->deepCopy(Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/SelfServiceBean;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceBean:Lcom/tgs/aics/bean/SelfServiceBean;

    .line 473
    invoke-static {v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->deepCopy(Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/ImportantAttentionBean;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->importantAttentionBean:Lcom/tgs/aics/bean/ImportantAttentionBean;

    .line 474
    invoke-static {v1}, Lcom/tgs/aics/ui/activity/HomeActivity;->deepCopy(Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/HelpCenterBean;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    goto/16 :goto_4

    .line 477
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 479
    invoke-virtual {p1}, Lcom/tgs/aics/bean/SelfServiceBean;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 480
    invoke-virtual {p1}, Lcom/tgs/aics/bean/SelfServiceBean;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/SelfServiceBean$Item;

    .line 481
    invoke-virtual {v3}, Lcom/tgs/aics/bean/SelfServiceBean$Item;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 483
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 484
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 488
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->selfServiceBean:Lcom/tgs/aics/bean/SelfServiceBean;

    if-eqz p1, :cond_3

    .line 489
    invoke-virtual {p1, v2}, Lcom/tgs/aics/bean/SelfServiceBean;->setItems(Ljava/util/List;)V

    .line 492
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 494
    invoke-virtual {v0}, Lcom/tgs/aics/bean/ImportantAttentionBean;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 495
    invoke-virtual {v0}, Lcom/tgs/aics/bean/ImportantAttentionBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;

    .line 496
    invoke-virtual {v2}, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 498
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 499
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 503
    :cond_5
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->importantAttentionBean:Lcom/tgs/aics/bean/ImportantAttentionBean;

    if-eqz v0, :cond_6

    .line 504
    invoke-virtual {v0, p1}, Lcom/tgs/aics/bean/ImportantAttentionBean;->setItems(Ljava/util/List;)V

    .line 506
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 507
    invoke-virtual {v1}, Lcom/tgs/aics/bean/HelpCenterBean;->getHelpCenterTabs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 508
    invoke-virtual {v1}, Lcom/tgs/aics/bean/HelpCenterBean;->getHelpCenterTabs()Ljava/util/List;

    move-result-object v0

    .line 509
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/ImportantAttentionBean;

    .line 510
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 511
    invoke-virtual {v1}, Lcom/tgs/aics/bean/ImportantAttentionBean;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;

    .line 512
    invoke-virtual {v4}, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->getTitle()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 513
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 516
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 517
    invoke-virtual {v1, v2}, Lcom/tgs/aics/bean/ImportantAttentionBean;->setItems(Ljava/util/List;)V

    .line 518
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 522
    :cond_a
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/HomeActivity;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    if-eqz p2, :cond_b

    .line 523
    invoke-virtual {p2, p1}, Lcom/tgs/aics/bean/HelpCenterBean;->setHelpCenterTabs(Ljava/util/List;)V

    .line 525
    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->refreshUI()V

    :cond_c
    return-void
.end method

.method synthetic lambda$search$17$com-tgs-aics-ui-activity-HomeActivity(Ljava/lang/String;Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    .line 462
    new-instance v0, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p2, p1}, Lcom/tgs/aics/ui/activity/HomeActivity$$ExternalSyntheticLambda12;-><init>(Lcom/tgs/aics/ui/activity/HomeActivity;Lcom/tgs/aics/bean/BaseBean;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 457
    invoke-super {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public openAiChatWindow(Landroid/view/View;)V
    .locals 1

    .line 451
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public reloadData(Landroid/view/View;)V
    .locals 0

    .line 358
    invoke-super {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->reloadData(Landroid/view/View;)V

    .line 360
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->showLoading()V

    .line 361
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/HomeActivity;->initData()V

    return-void
.end method

.method public showLoadErrorLayout(Z)V
    .locals 1

    .line 269
    invoke-super {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->showLoadErrorLayout(Z)V

    .line 271
    sget p1, Lcom/tgs/service/ai/R$id;->tgs_aics_load_error_unique_id:I

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 272
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 273
    invoke-static {}, Lcom/tgs/aics/utils/ConstantUtil;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 274
    check-cast p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
