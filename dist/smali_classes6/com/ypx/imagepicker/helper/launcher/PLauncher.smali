.class public Lcom/ypx/imagepicker/helper/launcher/PLauncher;
.super Ljava/lang/Object;
.source "PLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PLauncher"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRouterFragment:Lcom/ypx/imagepicker/helper/launcher/PRouter;

.field private mRouterFragmentV4:Lcom/ypx/imagepicker/helper/launcher/PRouterV4;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->getRouterFragment(Landroid/app/Activity;)Lcom/ypx/imagepicker/helper/launcher/PRouter;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->mRouterFragment:Lcom/ypx/imagepicker/helper/launcher/PRouter;

    return-void
.end method

.method private constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->getRouterFragmentV4(Landroidx/fragment/app/FragmentActivity;)Lcom/ypx/imagepicker/helper/launcher/PRouterV4;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->mRouterFragmentV4:Lcom/ypx/imagepicker/helper/launcher/PRouterV4;

    return-void
.end method

.method private findRouterFragment(Landroid/app/Activity;)Lcom/ypx/imagepicker/helper/launcher/PRouter;
    .locals 1

    .line 83
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "PLauncher"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/helper/launcher/PRouter;

    return-object p1
.end method

.method private findRouterFragmentV4(Landroidx/fragment/app/FragmentActivity;)Lcom/ypx/imagepicker/helper/launcher/PRouterV4;
    .locals 1

    .line 65
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "PLauncher"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/helper/launcher/PRouterV4;

    return-object p1
.end method

.method private getRouterFragment(Landroid/app/Activity;)Lcom/ypx/imagepicker/helper/launcher/PRouter;
    .locals 3

    .line 69
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->findRouterFragment(Landroid/app/Activity;)Lcom/ypx/imagepicker/helper/launcher/PRouter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/ypx/imagepicker/helper/launcher/PRouter;->newInstance()Lcom/ypx/imagepicker/helper/launcher/PRouter;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "PLauncher"

    .line 75
    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 77
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-object v0
.end method

.method private getRouterFragmentV4(Landroidx/fragment/app/FragmentActivity;)Lcom/ypx/imagepicker/helper/launcher/PRouterV4;
    .locals 3

    .line 51
    invoke-direct {p0, p1}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->findRouterFragmentV4(Landroidx/fragment/app/FragmentActivity;)Lcom/ypx/imagepicker/helper/launcher/PRouterV4;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/ypx/imagepicker/helper/launcher/PRouterV4;->newInstance()Lcom/ypx/imagepicker/helper/launcher/PRouterV4;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "PLauncher"

    .line 57
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 59
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-object v0
.end method

.method public static init(Landroid/app/Activity;)Lcom/ypx/imagepicker/helper/launcher/PLauncher;
    .locals 1

    .line 37
    new-instance v0, Lcom/ypx/imagepicker/helper/launcher/PLauncher;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static init(Landroidx/fragment/app/Fragment;)Lcom/ypx/imagepicker/helper/launcher/PLauncher;
    .locals 0

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/ypx/imagepicker/helper/launcher/PLauncher;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroidx/fragment/app/FragmentActivity;)Lcom/ypx/imagepicker/helper/launcher/PLauncher;
    .locals 1

    .line 33
    new-instance v0, Lcom/ypx/imagepicker/helper/launcher/PLauncher;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-object v0
.end method


# virtual methods
.method public startActivityForResult(Landroid/content/Intent;Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->mRouterFragmentV4:Lcom/ypx/imagepicker/helper/launcher/PRouterV4;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1, p2}, Lcom/ypx/imagepicker/helper/launcher/PRouterV4;->startActivityForResult(Landroid/content/Intent;Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->mRouterFragment:Lcom/ypx/imagepicker/helper/launcher/PRouter;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0, p1, p2}, Lcom/ypx/imagepicker/helper/launcher/PRouter;->startActivityForResult(Landroid/content/Intent;Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;)V

    :goto_0
    return-void

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "please do init first!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startActivityForResult(Ljava/lang/Class;Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;",
            ")V"
        }
    .end annotation

    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    invoke-virtual {p0, v0, p2}, Lcom/ypx/imagepicker/helper/launcher/PLauncher;->startActivityForResult(Landroid/content/Intent;Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;)V

    return-void
.end method
