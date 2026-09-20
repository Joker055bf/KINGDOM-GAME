.class public Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;
.super Landroid/app/DialogFragment;
.source "MobGameDashboardNewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$EventListener;,
        Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;
    }
.end annotation


# static fields
.field public static final CLOSE_PROGRESS_BAR:Ljava/lang/String; = "close_progress_bar"

.field public static KEY_DATA:Ljava/lang/String; = "data"

.field public static KEY_ICON:Ljava/lang/String; = "icon"

.field public static KEY_ID:Ljava/lang/String; = "parent_id"

.field public static final TAG:Ljava/lang/String; = "MobGameDashboardNewDialog"

.field public static isDashBoard:Z = true


# instance fields
.field private final TAG_FRAGMENT:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private adapter:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;

.field private btnClose:Landroid/widget/ImageView;

.field private circleProgressBar:Landroid/widget/ProgressBar;

.field private currentPage:I

.field private data:Ljava/lang/String;

.field eventListener:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$EventListener;

.field private fragContent:Lcom/mobgame/gui/MobGamePagerFragment;

.field private isLandscape:Z

.field private isTabletSize:Z

.field private layoutChildContent:Landroid/view/View;

.field private layoutMainDashboard:Landroid/widget/LinearLayout;

.field private layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private layoutTmp:Landroid/view/View;

.field private listItemMenuDashboard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mobgame/model/ItemMenuDashboard;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

.field private mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

.field private mWebEventListener:Lcom/mobgame/gui/MobGameWebFragment$EventListener;

.field private menuAdapter:Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;

.field private rootView:Landroid/view/View;

.field selectedItem:Lcom/mobgame/model/ItemMenuDashboard;

.field private txtTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    const-string v0, "fragment_webview"

    .line 90
    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->TAG_FRAGMENT:Ljava/lang/String;

    .line 413
    new-instance v0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;-><init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->mWebEventListener:Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    .line 482
    new-instance v0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;-><init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    .line 533
    new-instance v0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$8;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$8;-><init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/app/Activity;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->layoutTmp:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->adapter:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Lcom/mobgame/gui/MobGameWebFragment$EventListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->mWebEventListener:Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->hideNtf(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->showNtf(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->txtTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->menuAdapter:Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;Lcom/mobgame/model/ItemMenuDashboard;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->showContent(Lcom/mobgame/model/ItemMenuDashboard;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Lcom/mobgame/gui/MobGamePagerFragment;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->fragContent:Lcom/mobgame/gui/MobGamePagerFragment;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->currentPage:I

    return p0
.end method

.method static synthetic access$602(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->currentPage:I

    return p1
.end method

.method static synthetic access$700(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->circleProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->hideProgressBar()V

    return-void
.end method

.method static synthetic access$900(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->showProgressBar()V

    return-void
.end method

.method private getDataItemDashboard(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/SdkConfigObj$Menu;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/mobgame/model/ItemMenuDashboard;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ltz v1, :cond_3

    .line 149
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;

    invoke-virtual {v6}, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->getPriority()I

    move-result v6

    if-ne v6, v4, :cond_1

    if-ltz v5, :cond_0

    .line 150
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 151
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v5, v4}, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->setPriority(I)V

    .line 152
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;

    invoke-virtual {v4}, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->getPriority()I

    move-result v4

    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;

    invoke-virtual {v6}, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->getPriority()I

    move-result v6

    if-le v6, v4, :cond_2

    .line 155
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;

    invoke-virtual {v4}, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->getPriority()I

    move-result v4

    :goto_1
    move v5, v1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_2
    if-ltz v1, :cond_5

    .line 160
    new-instance v5, Lcom/mobgame/model/ItemMenuDashboard;

    invoke-direct {v5}, Lcom/mobgame/model/ItemMenuDashboard;-><init>()V

    .line 161
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;

    invoke-direct {p0, v5}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->setDataToItemMenuDashboard(Lcom/game/sdk/comon/object/SdkConfigObj$Menu;)Lcom/mobgame/model/ItemMenuDashboard;

    move-result-object v5

    .line 162
    invoke-virtual {v5}, Lcom/mobgame/model/ItemMenuDashboard;->getPriority()I

    move-result v6

    if-lt v6, v4, :cond_4

    .line 163
    iput-object v5, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->selectedItem:Lcom/mobgame/model/ItemMenuDashboard;

    .line 164
    invoke-virtual {v5, v2}, Lcom/mobgame/model/ItemMenuDashboard;->setClick(Z)V

    goto :goto_3

    .line 165
    :cond_4
    invoke-virtual {v5, v3}, Lcom/mobgame/model/ItemMenuDashboard;->setClick(Z)V

    .line 166
    :goto_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method private hideNtf(I)V
    .locals 4

    .line 609
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/mobgame/utils/NotificationUtils;->hasNtf(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    move v1, v0

    .line 635
    :goto_0
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 636
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobgame/model/ItemMenuDashboard;

    invoke-virtual {v2}, Lcom/mobgame/model/ItemMenuDashboard;->getId_menu()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 637
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/mobgame/utils/NotificationUtils;->removeNtf(Landroid/content/Context;I)V

    .line 638
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobgame/model/ItemMenuDashboard;

    invoke-virtual {p1, v0}, Lcom/mobgame/model/ItemMenuDashboard;->setHasNtf(Z)V

    .line 639
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->menuAdapter:Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;

    invoke-virtual {p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    move v1, v0

    .line 624
    :goto_1
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 625
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobgame/model/ItemMenuDashboard;

    invoke-virtual {v2}, Lcom/mobgame/model/ItemMenuDashboard;->getId_menu()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 626
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/mobgame/utils/NotificationUtils;->removeNtf(Landroid/content/Context;I)V

    .line 627
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobgame/model/ItemMenuDashboard;

    invoke-virtual {p1, v0}, Lcom/mobgame/model/ItemMenuDashboard;->setHasNtf(Z)V

    .line 628
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->menuAdapter:Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;

    invoke-virtual {p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_2
    move v1, v0

    .line 613
    :goto_2
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 614
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobgame/model/ItemMenuDashboard;

    invoke-virtual {v2}, Lcom/mobgame/model/ItemMenuDashboard;->getId_menu()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 615
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/mobgame/utils/NotificationUtils;->removeNtf(Landroid/content/Context;I)V

    .line 616
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobgame/model/ItemMenuDashboard;

    invoke-virtual {p1, v0}, Lcom/mobgame/model/ItemMenuDashboard;->setHasNtf(Z)V

    .line 617
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->menuAdapter:Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;

    invoke-virtual {p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private hideProgressBar()V
    .locals 2

    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$9;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$9;-><init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 773
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initFragment()V
    .locals 4

    .line 202
    :try_start_0
    new-instance v0, Lcom/mobgame/gui/MobGamePagerFragment;

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/mobgame/gui/MobGamePagerFragment;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->fragContent:Lcom/mobgame/gui/MobGamePagerFragment;

    .line 203
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGamePagerFragment;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;)V

    .line 204
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->fragContent:Lcom/mobgame/gui/MobGamePagerFragment;

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->mWebEventListener:Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/MobGamePagerFragment;->setWebEventListener(Lcom/mobgame/gui/MobGameWebFragment$EventListener;)V

    .line 206
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->layoutChildContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->fragContent:Lcom/mobgame/gui/MobGamePagerFragment;

    const-string v3, "fragment_webview"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 208
    :try_start_1
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->KEY_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->data:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 211
    :try_start_2
    invoke-direct {p0, v1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->performOnItemClick(I)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 213
    :catch_1
    :try_start_3
    invoke-direct {p0, v1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->performOnItemClick(I)V

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private performOnItemClick(I)V
    .locals 0

    return-void
.end method

.method private setDataToItemMenuDashboard(Lcom/game/sdk/comon/object/SdkConfigObj$Menu;)Lcom/mobgame/model/ItemMenuDashboard;
    .locals 4

    .line 173
    new-instance v0, Lcom/mobgame/model/ItemMenuDashboard;

    invoke-direct {v0}, Lcom/mobgame/model/ItemMenuDashboard;-><init>()V

    .line 174
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->getId()I

    move-result v1

    .line 176
    invoke-virtual {v0, v1}, Lcom/mobgame/model/ItemMenuDashboard;->setId_menu(I)V

    .line 177
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v0, v2}, Lcom/mobgame/model/ItemMenuDashboard;->setTitle_menu(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->getSubMenu()Ljava/util/ArrayList;

    move-result-object v2

    .line 180
    invoke-virtual {v0, v2}, Lcom/mobgame/model/ItemMenuDashboard;->setSubId_menu(Ljava/util/ArrayList;)V

    .line 181
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->getIcon()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v0, v2}, Lcom/mobgame/model/ItemMenuDashboard;->setUrlIcon(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->getIconActive()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v0, v2}, Lcom/mobgame/model/ItemMenuDashboard;->setUrlIconActive(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj$Menu;->getPriority()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mobgame/model/ItemMenuDashboard;->setPriority(I)V

    const/4 p1, 0x0

    .line 186
    invoke-virtual {v0, p1}, Lcom/mobgame/model/ItemMenuDashboard;->setOpenType(I)V

    .line 188
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/mobgame/utils/NotificationUtils;->hasNtf(Landroid/content/Context;I)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-static {p1, v3}, Lcom/mobgame/utils/NotificationUtils;->hasNtf(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    if-ne v1, v2, :cond_1

    .line 189
    invoke-virtual {v0, v2}, Lcom/mobgame/model/ItemMenuDashboard;->setHasNtf(Z)V

    .line 191
    :cond_1
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    const/4 v3, 0x5

    invoke-static {p1, v3}, Lcom/mobgame/utils/NotificationUtils;->hasNtf(Landroid/content/Context;I)Z

    move-result p1

    const/4 v3, 0x4

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    invoke-static {p1, v3}, Lcom/mobgame/utils/NotificationUtils;->hasNtf(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    if-ne v1, v3, :cond_3

    .line 192
    invoke-virtual {v0, v2}, Lcom/mobgame/model/ItemMenuDashboard;->setHasNtf(Z)V

    .line 194
    :cond_3
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    const/4 v3, 0x7

    invoke-static {p1, v3}, Lcom/mobgame/utils/NotificationUtils;->hasNtf(Landroid/content/Context;I)Z

    move-result p1

    const/4 v3, 0x6

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    invoke-static {p1, v3}, Lcom/mobgame/utils/NotificationUtils;->hasNtf(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    if-ne v1, v3, :cond_5

    .line 195
    invoke-virtual {v0, v2}, Lcom/mobgame/model/ItemMenuDashboard;->setHasNtf(Z)V

    :cond_5
    return-object v0
.end method

.method private setUpListener()V
    .locals 5

    .line 242
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/object/SdkConfigObj;->getMenu()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/comon/object/SdkConfigObj;->getMenu()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 245
    :cond_0
    invoke-direct {p0, v0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->getDataItemDashboard(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    .line 246
    new-instance v0, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->isLandscape:Z

    iget-boolean v4, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->isTabletSize:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;-><init>(Ljava/util/List;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->menuAdapter:Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;

    .line 247
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 249
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->btnClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$1;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$1;-><init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-boolean v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->isTabletSize:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->isLandscape:Z

    if-eqz v0, :cond_2

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->layoutMainDashboard:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$2;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$2;-><init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->layoutTmp:Landroid/view/View;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$3;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$3;-><init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$4;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$4;-><init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 310
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    const-string v1, "shared_pref_show_dashboard"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 311
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/mobgame/listener/RecyclerItemClickListener;

    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$5;

    invoke-direct {v4, p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$5;-><init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/mobgame/listener/RecyclerItemClickListener;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/mobgame/listener/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showContent(Lcom/mobgame/model/ItemMenuDashboard;)V
    .locals 4

    .line 362
    invoke-virtual {p1}, Lcom/mobgame/model/ItemMenuDashboard;->getSubId_menu()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mobgame/model/ItemMenuDashboard;->getSubId_menu()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p1}, Lcom/mobgame/model/ItemMenuDashboard;->getSubId_menu()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v2, :cond_2

    .line 365
    invoke-virtual {p1}, Lcom/mobgame/model/ItemMenuDashboard;->getSubId_menu()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 366
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->fragContent:Lcom/mobgame/gui/MobGamePagerFragment;

    invoke-virtual {p1, v1}, Lcom/mobgame/gui/MobGamePagerFragment;->showTabs(Z)V

    goto :goto_1

    .line 369
    :cond_1
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->fragContent:Lcom/mobgame/gui/MobGamePagerFragment;

    invoke-virtual {p1, v2}, Lcom/mobgame/gui/MobGamePagerFragment;->showTabs(Z)V

    goto :goto_1

    .line 374
    :cond_2
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->fragContent:Lcom/mobgame/gui/MobGamePagerFragment;

    invoke-virtual {p1, v2}, Lcom/mobgame/gui/MobGamePagerFragment;->showTabs(Z)V

    goto :goto_1

    .line 363
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->fragContent:Lcom/mobgame/gui/MobGamePagerFragment;

    invoke-virtual {p1, v1}, Lcom/mobgame/gui/MobGamePagerFragment;->showTabs(Z)V

    :goto_1
    return-void
.end method

.method private showNtf(I)V
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/mobgame/utils/NotificationUtils;->hasNtf(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 595
    :goto_0
    :pswitch_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 596
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobgame/model/ItemMenuDashboard;

    invoke-virtual {p1}, Lcom/mobgame/model/ItemMenuDashboard;->getId_menu()I

    move-result p1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    .line 597
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobgame/model/ItemMenuDashboard;

    invoke-virtual {p1, v1}, Lcom/mobgame/model/ItemMenuDashboard;->setHasNtf(Z)V

    .line 598
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->menuAdapter:Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;

    invoke-virtual {p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    :goto_1
    :pswitch_1
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 586
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobgame/model/ItemMenuDashboard;

    invoke-virtual {p1}, Lcom/mobgame/model/ItemMenuDashboard;->getId_menu()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 587
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobgame/model/ItemMenuDashboard;

    invoke-virtual {p1, v1}, Lcom/mobgame/model/ItemMenuDashboard;->setHasNtf(Z)V

    .line 588
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->menuAdapter:Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;

    invoke-virtual {p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 575
    :goto_2
    :pswitch_2
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 576
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobgame/model/ItemMenuDashboard;

    invoke-virtual {p1}, Lcom/mobgame/model/ItemMenuDashboard;->getId_menu()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 577
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->listItemMenuDashboard:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobgame/model/ItemMenuDashboard;

    invoke-virtual {p1, v1}, Lcom/mobgame/model/ItemMenuDashboard;->setHasNtf(Z)V

    .line 578
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->menuAdapter:Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;

    invoke-virtual {p1}, Lcom/mobgame/gui/view/adapter/DashboardMenuAdapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showProgressBar()V
    .locals 2

    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$10;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$10;-><init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 790
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getEventListener()Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$EventListener;
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->eventListener:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$EventListener;

    return-object v0
.end method

.method public initViewLayout()V
    .locals 2

    .line 224
    :try_start_0
    iget-boolean v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->isTabletSize:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->isLandscape:Z

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/mobgame/R$id;->layout_main_dashboard:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->layoutMainDashboard:Landroid/widget/LinearLayout;

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/mobgame/R$id;->layout_tmp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->layoutTmp:Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/mobgame/R$id;->layout_child_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->layoutChildContent:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/mobgame/R$id;->title_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->txtTitle:Landroid/widget/TextView;

    .line 230
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/mobgame/R$id;->btn_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->btnClose:Landroid/widget/ImageView;

    .line 231
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/mobgame/R$id;->recycleview_menu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 232
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 233
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 234
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/mobgame/R$id;->circle_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->circleProgressBar:Landroid/widget/ProgressBar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public loadItemData(Lcom/mobgame/model/ItemMenuDashboard;)V
    .locals 1

    .line 350
    invoke-virtual {p1}, Lcom/mobgame/model/ItemMenuDashboard;->getSubId_menu()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 351
    sget-object p1, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->TAG:Ljava/lang/String;

    const-string v0, "SubMenu null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->fragContent:Lcom/mobgame/gui/MobGamePagerFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mobgame/gui/MobGamePagerFragment;->showTabs(Z)V

    return-void

    .line 355
    :cond_0
    invoke-direct {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->showContent(Lcom/mobgame/model/ItemMenuDashboard;)V

    .line 356
    invoke-virtual {p1}, Lcom/mobgame/model/ItemMenuDashboard;->getSubId_menu()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->loadUrls(Ljava/util/ArrayList;)V

    return-void
.end method

.method public loadUrls(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;",
            ">;)V"
        }
    .end annotation

    .line 392
    sget-object v0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "item:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->adapter:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;

    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;-><init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->adapter:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;

    :cond_0
    const/4 v0, 0x0

    .line 396
    iput v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->currentPage:I

    .line 398
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 400
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;

    .line 401
    invoke-virtual {v1}, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->getPriority()I

    move-result v1

    iget v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->currentPage:I

    if-le v1, v2, :cond_1

    .line 402
    iput v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->currentPage:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 405
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->adapter:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 409
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->fragContent:Lcom/mobgame/gui/MobGamePagerFragment;

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->adapter:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;

    iget v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->currentPage:I

    invoke-virtual {p1, v0, v1}, Lcom/mobgame/gui/MobGamePagerFragment;->setAdapter(Landroidx/legacy/app/FragmentPagerAdapter;I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 108
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x1030010

    .line 381
    invoke-virtual {p0, v0, v1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->setStyle(II)V

    .line 382
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 383
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/game/sdk/comon/game/GameSdk;->setShow(ZLjava/lang/String;)V

    .line 384
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/mobgame/R$bool;->isTablet:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->isTabletSize:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 120
    sget p3, Lcom/mobgame/R$layout;->dialog_dashboard_new_tablet:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->rootView:Landroid/view/View;

    goto :goto_0

    .line 123
    :cond_0
    sget p3, Lcom/mobgame/R$layout;->dialog_dashboard_new:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->rootView:Landroid/view/View;

    :goto_0
    const/4 p1, 0x1

    .line 127
    :try_start_0
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->rootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/game/sdk/comon/utils/DeviceUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    move v0, p1

    :cond_1
    iput-boolean v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->isLandscape:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 129
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :goto_1
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x400

    invoke-virtual {p2, p3, p3}, Landroid/view/Window;->setFlags(II)V

    .line 132
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 133
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 134
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    sget p3, Lcom/mobgame/R$style;->DashBoardDialogAnimation:I

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 135
    sput-boolean p1, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->isDashBoard:Z

    .line 136
    invoke-virtual {p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->initViewLayout()V

    .line 137
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->initFragment()V

    .line 138
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->setUpListener()V

    .line 139
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->selectedItem:Lcom/mobgame/model/ItemMenuDashboard;

    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->loadItemData(Lcom/mobgame/model/ItemMenuDashboard;)V

    .line 141
    :cond_2
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 98
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->eventListener:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$EventListener;

    if-eqz p1, :cond_0

    .line 99
    invoke-interface {p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$EventListener;->onDismissDashboard()V

    .line 101
    :cond_0
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/game/sdk/comon/game/GameSdk;->setShow(ZLjava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 512
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 517
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 523
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.mobgame.broadcast"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 526
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/game/sdk/comon/game/GameSdk;->setShow(ZLjava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/comon/game/GameSdk;->showNotifloatView(Landroid/app/Activity;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 529
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setEventListener(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$EventListener;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->eventListener:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$EventListener;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 473
    :try_start_0
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 474
    invoke-virtual {p1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 475
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 478
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method
