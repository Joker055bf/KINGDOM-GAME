.class Lcom/game/sdk/comon/utils/DialogUtils$2;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/utils/DialogUtils;->showRetryDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/game/sdk/comon/utils/DialogUtils$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/game/sdk/comon/utils/DialogUtils$Listener;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/utils/DialogUtils$Listener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/game/sdk/comon/utils/DialogUtils$2;->val$listener:Lcom/game/sdk/comon/utils/DialogUtils$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 46
    sget-object p1, Lcom/game/sdk/comon/utils/DialogUtils;->cf:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 47
    iget-object p1, p0, Lcom/game/sdk/comon/utils/DialogUtils$2;->val$listener:Lcom/game/sdk/comon/utils/DialogUtils$Listener;

    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1}, Lcom/game/sdk/comon/utils/DialogUtils$Listener;->onRetry()V

    :cond_0
    return-void
.end method
