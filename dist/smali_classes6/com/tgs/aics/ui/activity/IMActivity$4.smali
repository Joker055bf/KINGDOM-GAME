.class Lcom/tgs/aics/ui/activity/IMActivity$4;
.super Ljava/lang/Object;
.source "IMActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/IMActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/IMActivity;

.field final synthetic val$messageSend:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$4;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$4;->val$messageSend:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 330
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$4;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/IMActivity;->access$300(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$4;->val$messageSend:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$4;->val$messageSend:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
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
