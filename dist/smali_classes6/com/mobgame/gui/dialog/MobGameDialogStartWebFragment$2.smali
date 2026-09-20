.class Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;
.super Ljava/lang/Object;
.source "MobGameDialogStartWebFragment.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->closeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 270
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 6

    .line 273
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceiveValue: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v0, "1"

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 276
    new-instance p1, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$200(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    .line 277
    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$200(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/mobgame/R$string;->do_you_want_close:I

    invoke-static {v0, v2}, Lcom/mobgame/utils/Res;->string(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    .line 278
    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$200(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Landroid/app/Activity;

    move-result-object v0

    sget v3, Lcom/mobgame/R$string;->ok:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    .line 279
    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$200(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Landroid/app/Activity;

    move-result-object v0

    sget v4, Lcom/mobgame/R$string;->cancel:I

    invoke-static {v0, v4}, Lcom/mobgame/utils/Res;->string(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2$1;

    invoke-direct {v5, p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2$1;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/mobgame/gui/dialog/MobGameConfirmDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobgame/gui/dialog/MobGameConfirmDialog$EventListener;)V

    .line 293
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$200(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_fragment_confirm"

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$2;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
