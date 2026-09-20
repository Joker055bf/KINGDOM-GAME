.class Lcom/game/sdk/ui/login/AccountFragment$2;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 183
    iput-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment$2;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 196
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment$2;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/login/AccountFragment;->edtLoginPassword:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p0, Lcom/game/sdk/ui/login/AccountFragment$2;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    invoke-static {v0}, Lcom/game/sdk/ui/login/AccountFragment;->access$100(Lcom/game/sdk/ui/login/AccountFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mobgame/R$drawable;->slt_input_text_login_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object p1, p0, Lcom/game/sdk/ui/login/AccountFragment$2;->this$0:Lcom/game/sdk/ui/login/AccountFragment;

    iget-object p1, p1, Lcom/game/sdk/ui/login/AccountFragment;->tvErrPass:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
