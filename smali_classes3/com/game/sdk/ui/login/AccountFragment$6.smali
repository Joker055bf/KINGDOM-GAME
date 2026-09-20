.class Lcom/game/sdk/ui/login/AccountFragment$6;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Lcom/game/sdk/comon/utils/DialogUtils$DlgCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/login/AccountFragment;->onLoginEmail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/login/AccountFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/login/AccountFragment;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment$6;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment$6;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    const/4 v1, 0x0

    iput v1, v0, Lcom/game/sdk/ui/login/AccountFragment;->errEmailCount:I

    return-void
.end method
