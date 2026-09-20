.class public Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;
.super Ljava/lang/Object;
.source "ActivityResultUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;,
        Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UDPHandleActivityResult"


# instance fields
.field private mContext:Landroid/content/Context;

.field mHARFragment:Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy<",
            "Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 25
    iput-object p1, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->getLazySingletonFragment(Landroid/app/FragmentManager;)Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->mHARFragment:Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy;

    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "activity == null"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;Landroid/app/FragmentManager;)Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->getFragment(Landroid/app/FragmentManager;)Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;

    move-result-object p0

    return-object p0
.end method

.method private findFragment(Landroid/app/FragmentManager;)Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;
    .locals 1

    const-string v0, "UDPHandleActivityResult"

    .line 67
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;

    return-object p1
.end method

.method private getFragment(Landroid/app/FragmentManager;)Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;
    .locals 3

    .line 46
    invoke-direct {p0, p1}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->findFragment(Landroid/app/FragmentManager;)Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48
    invoke-static {}, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->newInstance()Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "UDPHandleActivityResult"

    .line 50
    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 52
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$2;

    invoke-direct {v2, p0, p1}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$2;-><init>(Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;Landroid/app/FragmentManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getLazySingletonFragment(Landroid/app/FragmentManager;)Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            ")",
            "Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy<",
            "Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$1;-><init>(Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;Landroid/app/FragmentManager;)V

    return-object v0
.end method

.method public static with(Landroid/app/Activity;)Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;
    .locals 1

    .line 17
    new-instance v0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;

    invoke-direct {v0, p0}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public prepare()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->mHARFragment:Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy;

    invoke-interface {v0}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->startActivityForResult(Landroid/content/Intent;Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->mHARFragment:Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy;

    invoke-interface {v0}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->startActivityForResult(Landroid/content/Intent;ILcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->mHARFragment:Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy;

    invoke-interface {v0}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;

    invoke-virtual {v0, p1, p2}, Lcom/unity/udp/extension/sdk/utils/HandleActivityResultFragment;->startActivityForResult(Landroid/content/Intent;Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;)V

    return-void
.end method

.method public startActivityForResult(Ljava/lang/Class;ILcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;",
            ")V"
        }
    .end annotation

    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {p0, v0, p2, p3}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->startActivityForResult(Landroid/content/Intent;ILcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;)V

    return-void
.end method

.method public startActivityForResult(Ljava/lang/Class;Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;",
            ")V"
        }
    .end annotation

    .line 75
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    invoke-virtual {p0, v0, p2}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->startActivityForResult(Landroid/content/Intent;Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;)V

    return-void
.end method
