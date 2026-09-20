.class Lcom/mobgame/MobGameSDK$9;
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

    .line 923
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$9;->this$0:Lcom/mobgame/MobGameSDK;

    iput-object p2, p0, Lcom/mobgame/MobGameSDK$9;->val$itemNoti:Lcom/game/sdk/comon/object/MessInGameObj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 927
    :try_start_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 928
    sget v0, Lcom/mobgame/R$string;->open_with_browser:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mobgame/R$string;->yes:I

    new-instance v2, Lcom/mobgame/MobGameSDK$9$2;

    invoke-direct {v2, p0}, Lcom/mobgame/MobGameSDK$9$2;-><init>(Lcom/mobgame/MobGameSDK$9;)V

    .line 929
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mobgame/R$string;->no:I

    new-instance v2, Lcom/mobgame/MobGameSDK$9$1;

    invoke-direct {v2, p0, p1}, Lcom/mobgame/MobGameSDK$9$1;-><init>(Lcom/mobgame/MobGameSDK$9;Landroid/app/AlertDialog$Builder;)V

    .line 936
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 944
    new-instance v0, Lcom/mobgame/MobGameSDK$9$3;

    invoke-direct {v0, p0}, Lcom/mobgame/MobGameSDK$9$3;-><init>(Lcom/mobgame/MobGameSDK$9;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 949
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 951
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
