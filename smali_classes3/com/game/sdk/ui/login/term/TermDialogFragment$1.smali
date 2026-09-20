.class Lcom/game/sdk/ui/login/term/TermDialogFragment$1;
.super Ljava/lang/Object;
.source "TermDialogFragment.java"

# interfaces
.implements Lcom/game/sdk/comon/js/JsTerm$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/login/term/TermDialogFragment;->getJsHandler()Lcom/game/sdk/comon/js/JsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/login/term/TermDialogFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/login/term/TermDialogFragment;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/game/sdk/ui/login/term/TermDialogFragment$1;->this$0:Lcom/game/sdk/ui/login/term/TermDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackToWindowns()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/game/sdk/ui/login/term/TermDialogFragment$1;->this$0:Lcom/game/sdk/ui/login/term/TermDialogFragment;

    invoke-virtual {v0}, Lcom/game/sdk/ui/login/term/TermDialogFragment;->goBack()V

    return-void
.end method

.method public onCloseWindow()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/game/sdk/ui/login/term/TermDialogFragment$1;->this$0:Lcom/game/sdk/ui/login/term/TermDialogFragment;

    invoke-virtual {v0}, Lcom/game/sdk/ui/login/term/TermDialogFragment;->dismiss()V

    return-void
.end method

.method public onOpenWindow()V
    .locals 0

    return-void
.end method
