.class Lcom/game/sdk/comon/utils/DialogUtils$5;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/utils/DialogUtils;->showRetryDialogWithLogOut(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/utils/DialogUtils$Listener;)V
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

    .line 78
    iput-object p1, p0, Lcom/game/sdk/comon/utils/DialogUtils$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 81
    invoke-static {}, Lcom/game/sdk/comon/game/GameSdk;->getInstance()Lcom/game/sdk/comon/game/GameSdk;

    move-result-object p2

    iget-object v0, p0, Lcom/game/sdk/comon/utils/DialogUtils$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Lcom/game/sdk/comon/game/GameSdk;->logOut(Landroid/app/Activity;)V

    .line 82
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
