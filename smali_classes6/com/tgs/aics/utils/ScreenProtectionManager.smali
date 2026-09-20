.class public Lcom/tgs/aics/utils/ScreenProtectionManager;
.super Ljava/lang/Object;
.source "ScreenProtectionManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/app/Activity;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/tgs/aics/utils/ScreenProtectionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/tgs/aics/utils/ScreenProtectionManager$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$clear$1(Landroid/app/Activity;)V
    .locals 1

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method static synthetic lambda$setUp$0(Landroid/app/Activity;)V
    .locals 1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public static setUp(Landroid/app/Activity;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/tgs/aics/utils/ScreenProtectionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/tgs/aics/utils/ScreenProtectionManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
