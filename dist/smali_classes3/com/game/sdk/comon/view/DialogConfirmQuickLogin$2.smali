.class Lcom/game/sdk/comon/view/DialogConfirmQuickLogin$2;
.super Ljava/lang/Object;
.source "DialogConfirmQuickLogin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/game/sdk/comon/view/DialogConfirmQuickLogin$2;->this$0:Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/game/sdk/comon/view/DialogConfirmQuickLogin$2;->this$0:Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;

    iget-object p1, p1, Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;->listener:Lcom/game/sdk/comon/listener/IDialogListener;

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/game/sdk/comon/view/DialogConfirmQuickLogin$2;->this$0:Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;

    iget-object p1, p1, Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;->listener:Lcom/game/sdk/comon/listener/IDialogListener;

    invoke-interface {p1}, Lcom/game/sdk/comon/listener/IDialogListener;->onOk()V

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/comon/view/DialogConfirmQuickLogin$2;->this$0:Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;

    invoke-virtual {p1}, Lcom/game/sdk/comon/view/DialogConfirmQuickLogin;->dismiss()V

    return-void
.end method
