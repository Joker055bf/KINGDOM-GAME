.class Lcom/game/sdk/comon/utils/DialogUtils$1;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/utils/DialogUtils;->showExpireDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/game/sdk/comon/utils/DialogUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 25
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getInstance()Lcom/mobgame/MobGameSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/MobGameSDK;->logout()V

    .line 26
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p1

    iget-object p2, p0, Lcom/game/sdk/comon/utils/DialogUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/game/GameSdk;->logOut(Landroid/app/Activity;)V

    .line 27
    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 p1, 0x0

    .line 28
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
