.class Lcom/game/sdk/comon/utils/DialogUtils$6;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/utils/DialogUtils;->showInfoDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/comon/utils/DialogUtils$DlgListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/game/sdk/comon/utils/DialogUtils$DlgListener;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/utils/DialogUtils$DlgListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/game/sdk/comon/utils/DialogUtils$6;->val$listener:Lcom/game/sdk/comon/utils/DialogUtils$DlgListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/game/sdk/comon/utils/DialogUtils$6;->val$listener:Lcom/game/sdk/comon/utils/DialogUtils$DlgListener;

    if-eqz p1, :cond_0

    .line 102
    invoke-interface {p1}, Lcom/game/sdk/comon/utils/DialogUtils$DlgListener;->onOK()V

    .line 103
    :cond_0
    sget-object p1, Lcom/game/sdk/comon/utils/DialogUtils;->cf:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
