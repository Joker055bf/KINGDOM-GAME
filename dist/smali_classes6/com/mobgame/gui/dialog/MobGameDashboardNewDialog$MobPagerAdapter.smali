.class Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;
.super Landroidx/legacy/app/FragmentPagerAdapter;
.source "MobGameDashboardNewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobPagerAdapter"
.end annotation


# instance fields
.field private fragmentManager:Landroid/app/FragmentManager;

.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mobgame/gui/MobGameWebFragment;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;


# direct methods
.method public constructor <init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;Landroid/app/FragmentManager;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    .line 660
    invoke-direct {p0, p2}, Landroidx/legacy/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 656
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->fragments:Ljava/util/ArrayList;

    .line 661
    iput-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->fragmentManager:Landroid/app/FragmentManager;

    return-void
.end method

.method private releaseFragments()V
    .locals 3

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->fragments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobgame/gui/MobGameWebFragment;

    .line 750
    invoke-virtual {v1}, Lcom/mobgame/gui/MobGameWebFragment;->stopLoading()V

    .line 751
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 755
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 699
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getItem(I)Landroid/app/Fragment;
    .locals 0

    .line 649
    invoke-virtual {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->getItem(I)Lcom/mobgame/gui/MobGameWebFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/mobgame/gui/MobGameWebFragment;
    .locals 1

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobgame/gui/MobGameWebFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 689
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->getId()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p1

    return-wide v0

    :catch_0
    move-exception p1

    .line 709
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 6

    const-string v0, "Tab "

    .line 722
    :try_start_0
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;

    .line 723
    invoke-virtual {v1}, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->getId()I

    move-result v2

    .line 724
    invoke-virtual {v1}, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 725
    invoke-virtual {v1}, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 726
    iget-object v3, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v3}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$1400(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v3, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v3}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$000(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mobgame/utils/NotificationUtils;->hasNtf(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    iget-object v2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v2}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$000(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/mobgame/R$drawable;->ic_notification_tab_strip:I

    invoke-static {v2, v3}, Lcom/mobgame/utils/Res;->drawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 729
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 730
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 731
    new-instance v4, Landroid/text/style/ImageSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 732
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const/16 v5, 0x12

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v3

    :cond_0
    return-object v1

    .line 737
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 741
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;",
            ">;)V"
        }
    .end annotation

    .line 665
    invoke-direct {p0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->releaseFragments()V

    .line 666
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->items:Ljava/util/ArrayList;

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->fragments:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 668
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 669
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;

    .line 670
    invoke-virtual {v1}, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 671
    invoke-virtual {v1}, Lcom/game/sdk/comon/object/SdkConfigObj$SubMenu;->getId()I

    move-result v1

    .line 673
    iget-object v3, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v3}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$600(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 674
    new-instance v3, Lcom/mobgame/gui/MobGameWebFragment;

    invoke-direct {v3, v2, v1}, Lcom/mobgame/gui/MobGameWebFragment;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 676
    :cond_0
    new-instance v3, Lcom/mobgame/gui/MobGameWebFragment;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lcom/mobgame/gui/MobGameWebFragment;-><init>(Ljava/lang/String;ZI)V

    .line 678
    :goto_1
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$1100(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mobgame/gui/MobGameWebFragment;->setEventListener(Lcom/mobgame/gui/MobGameWebFragment$EventListener;)V

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mobgame/gui/MobGameWebFragment;->setWebViewTag(Ljava/lang/String;)V

    .line 680
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$MobPagerAdapter;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
