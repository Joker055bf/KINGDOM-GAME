.class Lcom/mobgame/MobGameSDK$10;
.super Ljava/lang/Object;
.source "MobGameSDK.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/MobGameSDK;->initScrollView(Ljava/util/ArrayList;Landroid/graphics/Paint;Landroid/graphics/Rect;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/MobGameSDK;

.field final synthetic val$itemNoti:Lcom/game/sdk/comon/object/MessInGameObj;


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK;Lcom/game/sdk/comon/object/MessInGameObj;)V
    .locals 0

    .line 957
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$10;->this$0:Lcom/mobgame/MobGameSDK;

    iput-object p2, p0, Lcom/mobgame/MobGameSDK$10;->val$itemNoti:Lcom/game/sdk/comon/object/MessInGameObj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, "tag_fragment"

    .line 961
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$10;->val$itemNoti:Lcom/game/sdk/comon/object/MessInGameObj;

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/MessInGameObj;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 962
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 963
    sget-object v1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 965
    invoke-virtual {v1, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/mobgame/gui/DialogInGameFragment;

    if-nez v2, :cond_1

    .line 969
    new-instance v2, Lcom/mobgame/gui/DialogInGameFragment;

    new-instance v3, Lcom/mobgame/model/MUrl;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/mobgame/model/MUrl;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Lcom/mobgame/gui/DialogInGameFragment;-><init>(Lcom/mobgame/model/MUrl;)V

    .line 970
    new-instance v0, Lcom/mobgame/MobGameSDK$10$1;

    invoke-direct {v0, p0}, Lcom/mobgame/MobGameSDK$10$1;-><init>(Lcom/mobgame/MobGameSDK$10;)V

    invoke-virtual {v2, v0}, Lcom/mobgame/gui/DialogInGameFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 980
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 981
    invoke-virtual {v0, v2, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 982
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 985
    :cond_0
    invoke-static {}, Lcom/mobgame/MobGameSDK;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "url null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 988
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
