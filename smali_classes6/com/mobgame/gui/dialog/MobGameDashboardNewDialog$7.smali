.class Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "MobGameDashboardNewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 8

    .line 486
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$600(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v0, p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$602(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;I)I

    .line 489
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$1000(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$600(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->getItem(I)Lcom/mobgame/gui/MobGameWebFragment;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebFragment;->loadUrlToLoadIfHave()V

    .line 491
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$1100(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebFragment;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 492
    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebFragment;->getScrollX()I

    move-result v4

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebFragment;->getScrollY()I

    move-result v5

    .line 493
    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebFragment;->getScrollX()I

    move-result v6

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebFragment;->getScrollY()I

    move-result v7

    .line 491
    invoke-interface/range {v2 .. v7}, Lcom/mobgame/gui/MobGameWebFragment$EventListener;->onScrollChanged(Landroid/webkit/WebView;IIII)V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$1000(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->getItemId(I)J

    move-result-wide v0

    long-to-int p1, v0

    .line 496
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$000(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mobgame/utils/NotificationUtils;->hasNtf(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v0, p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$1200(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;I)V

    .line 499
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$000(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7$1;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7$1;-><init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$7;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
