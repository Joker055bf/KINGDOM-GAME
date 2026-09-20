.class public Lcom/game/sdk/comon/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field public static handler:Landroid/os/Handler;

.field private static helloView:Landroid/view/View;

.field public static runnableHideHello:Ljava/lang/Runnable;

.field static toast:Lcom/game/sdk/comon/view/CustomToast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/view/View;
    .locals 1

    .line 23
    sget-object v0, Lcom/game/sdk/comon/utils/ToastUtils;->helloView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 23
    sput-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->helloView:Landroid/view/View;

    return-object p0
.end method

.method public static hideHello(Landroid/app/Activity;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 171
    :try_start_0
    new-instance p1, Lcom/game/sdk/comon/utils/ToastUtils$3;

    invoke-direct {p1, p0}, Lcom/game/sdk/comon/utils/ToastUtils$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const p1, 0x1020002

    .line 200
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 201
    sget-object p1, Lcom/game/sdk/comon/utils/ToastUtils;->helloView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 202
    sput-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->helloView:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 204
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static isShowHello(Landroid/app/Activity;)Z
    .locals 0

    .line 120
    sget-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->helloView:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static showBottomInfoToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 64
    sget-object v0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/game/sdk/comon/view/CustomToast;->cancel()V

    .line 66
    :cond_0
    new-instance v0, Lcom/game/sdk/comon/view/CustomToast;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/game/sdk/comon/view/CustomToast;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    const/16 p0, 0x57

    .line 67
    invoke-virtual {v0, p0, v1, v1}, Lcom/game/sdk/comon/view/CustomToast;->setGravity(III)V

    .line 68
    sget-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    invoke-virtual {p0, v1}, Lcom/game/sdk/comon/view/CustomToast;->setDuration(I)V

    .line 69
    sget-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    invoke-virtual {p0}, Lcom/game/sdk/comon/view/CustomToast;->show()V

    return-void
.end method

.method public static showErrToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 46
    sget-object v0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/game/sdk/comon/view/CustomToast;->cancel()V

    .line 48
    :cond_0
    new-instance v0, Lcom/game/sdk/comon/view/CustomToast;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Lcom/game/sdk/comon/view/CustomToast;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    const/16 p0, 0x57

    const/4 p1, 0x0

    .line 49
    invoke-virtual {v0, p0, p1, p1}, Lcom/game/sdk/comon/view/CustomToast;->setGravity(III)V

    .line 50
    sget-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/view/CustomToast;->setDuration(I)V

    .line 51
    sget-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    invoke-virtual {p0}, Lcom/game/sdk/comon/view/CustomToast;->show()V

    return-void
.end method

.method public static showHello(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x1020002

    .line 126
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 127
    sget-object v1, Lcom/game/sdk/comon/utils/ToastUtils;->helloView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 129
    sget-object v1, Lcom/game/sdk/comon/utils/ToastUtils;->helloView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 130
    sget-object v1, Lcom/game/sdk/comon/utils/ToastUtils;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/game/sdk/comon/utils/ToastUtils;->runnableHideHello:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 132
    sput-object v1, Lcom/game/sdk/comon/utils/ToastUtils;->helloView:Landroid/view/View;

    .line 136
    :cond_1
    new-instance v1, Lcom/game/sdk/comon/utils/ToastUtils$1;

    invoke-direct {v1, p0, p3, v0}, Lcom/game/sdk/comon/utils/ToastUtils$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 151
    sget-object p3, Lcom/game/sdk/comon/utils/ToastUtils;->handler:Landroid/os/Handler;

    if-nez p3, :cond_2

    .line 152
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    sput-object p3, Lcom/game/sdk/comon/utils/ToastUtils;->handler:Landroid/os/Handler;

    .line 153
    :cond_2
    sget-object p3, Lcom/game/sdk/comon/utils/ToastUtils;->runnableHideHello:Ljava/lang/Runnable;

    if-nez p3, :cond_3

    .line 154
    new-instance p3, Lcom/game/sdk/comon/utils/ToastUtils$2;

    invoke-direct {p3, p0}, Lcom/game/sdk/comon/utils/ToastUtils$2;-><init>(Landroid/app/Activity;)V

    sput-object p3, Lcom/game/sdk/comon/utils/ToastUtils;->runnableHideHello:Ljava/lang/Runnable;

    .line 160
    :cond_3
    sget-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->handler:Landroid/os/Handler;

    sget-object p3, Lcom/game/sdk/comon/utils/ToastUtils;->runnableHideHello:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    add-long/2addr p1, v0

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static showHelloToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 37
    sget-object v0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/game/sdk/comon/view/CustomToast;->cancel()V

    .line 39
    :cond_0
    new-instance v0, Lcom/game/sdk/comon/view/CustomToast;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, Lcom/game/sdk/comon/view/CustomToast;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    const/16 p0, 0x37

    const/4 p1, 0x0

    .line 40
    invoke-virtual {v0, p0, p1, p1}, Lcom/game/sdk/comon/view/CustomToast;->setGravity(III)V

    .line 41
    sget-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/view/CustomToast;->setDuration(I)V

    .line 42
    sget-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    invoke-virtual {p0}, Lcom/game/sdk/comon/view/CustomToast;->show()V

    return-void
.end method

.method public static showLengthInfoToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 73
    sget-object v0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/game/sdk/comon/view/CustomToast;->cancel()V

    .line 75
    :cond_0
    new-instance v0, Lcom/game/sdk/comon/view/CustomToast;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/game/sdk/comon/view/CustomToast;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    const/16 p0, 0x57

    .line 76
    invoke-virtual {v0, p0, v1, v1}, Lcom/game/sdk/comon/view/CustomToast;->setGravity(III)V

    .line 77
    sget-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/view/CustomToast;->setDuration(I)V

    .line 78
    sget-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    invoke-virtual {p0}, Lcom/game/sdk/comon/view/CustomToast;->show()V

    return-void
.end method

.method public static showLongToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 28
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showShortToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showToDoToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 82
    sget-object v0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/game/sdk/comon/view/CustomToast;->cancel()V

    .line 84
    :cond_0
    new-instance v0, Lcom/game/sdk/comon/view/CustomToast;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1}, Lcom/game/sdk/comon/view/CustomToast;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    const/16 p0, 0x57

    const/4 p1, 0x0

    .line 85
    invoke-virtual {v0, p0, p1, p1}, Lcom/game/sdk/comon/view/CustomToast;->setGravity(III)V

    .line 86
    sget-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/view/CustomToast;->setDuration(I)V

    .line 87
    sget-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    invoke-virtual {p0}, Lcom/game/sdk/comon/view/CustomToast;->show()V

    return-void
.end method

.method public static showWarmToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 55
    sget-object v0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/game/sdk/comon/view/CustomToast;->cancel()V

    .line 57
    :cond_0
    new-instance v0, Lcom/game/sdk/comon/view/CustomToast;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/game/sdk/comon/view/CustomToast;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    const/16 p0, 0x57

    const/4 p1, 0x0

    .line 58
    invoke-virtual {v0, p0, p1, p1}, Lcom/game/sdk/comon/view/CustomToast;->setGravity(III)V

    .line 59
    sget-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/view/CustomToast;->setDuration(I)V

    .line 60
    sget-object p0, Lcom/game/sdk/comon/utils/ToastUtils;->toast:Lcom/game/sdk/comon/view/CustomToast;

    invoke-virtual {p0}, Lcom/game/sdk/comon/view/CustomToast;->show()V

    return-void
.end method
