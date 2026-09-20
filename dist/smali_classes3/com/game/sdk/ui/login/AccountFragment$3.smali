.class Lcom/game/sdk/ui/login/AccountFragment$3;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/login/AccountFragment;->initView(Landroid/view/View;)V
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

    .line 200
    iput-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment$3;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 205
    iget-object p2, p0, Lcom/game/sdk/ui/login/AccountFragment$3;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-static {p2}, Lcom/game/sdk/ui/login/AccountFragment;->access$200(Lcom/game/sdk/ui/login/AccountFragment;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/game/sdk/comon/utils/DeviceUtils;->hideKeyboardFrom(Landroid/content/Context;Landroid/view/View;)V

    .line 206
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment$3;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-static {p1}, Lcom/game/sdk/ui/login/AccountFragment;->access$300(Lcom/game/sdk/ui/login/AccountFragment;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
