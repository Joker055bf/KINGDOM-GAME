.class Lcom/tgs/aics/ui/activity/IMActivity$5;
.super Ljava/lang/Object;
.source "IMActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/IMActivity;->initDialogView(Landroid/view/View;Landroid/app/Dialog;Lcom/tgs/aics/bean/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/IMActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;)V
    .locals 0

    .line 965
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$5;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 972
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$5;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p2}, Lcom/tgs/aics/ui/activity/IMActivity;->access$400(Lcom/tgs/aics/ui/activity/IMActivity;)I

    move-result p2

    const/4 p3, 0x0

    if-lez p2, :cond_1

    .line 973
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iget-object p4, p0, Lcom/tgs/aics/ui/activity/IMActivity$5;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p4}, Lcom/tgs/aics/ui/activity/IMActivity;->access$400(Lcom/tgs/aics/ui/activity/IMActivity;)I

    move-result p4

    if-le p2, p4, :cond_0

    .line 974
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$5;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p2}, Lcom/tgs/aics/ui/activity/IMActivity;->access$500(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/EditText;

    move-result-object p2

    iget-object p4, p0, Lcom/tgs/aics/ui/activity/IMActivity$5;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p4}, Lcom/tgs/aics/ui/activity/IMActivity;->access$400(Lcom/tgs/aics/ui/activity/IMActivity;)I

    move-result p4

    invoke-interface {p1, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 975
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$5;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/IMActivity;->access$500(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$5;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p2}, Lcom/tgs/aics/ui/activity/IMActivity;->access$400(Lcom/tgs/aics/ui/activity/IMActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 977
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$5;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/IMActivity;->access$600(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/tgs/aics/ui/activity/IMActivity$5;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p4}, Lcom/tgs/aics/ui/activity/IMActivity;->access$500(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/EditText;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "/"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p0, Lcom/tgs/aics/ui/activity/IMActivity$5;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p4}, Lcom/tgs/aics/ui/activity/IMActivity;->access$400(Lcom/tgs/aics/ui/activity/IMActivity;)I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$5;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/IMActivity;->access$900(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$5;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p2}, Lcom/tgs/aics/ui/activity/IMActivity;->access$700(Lcom/tgs/aics/ui/activity/IMActivity;)Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isRequiredTag()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$5;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p2}, Lcom/tgs/aics/ui/activity/IMActivity;->access$800(Lcom/tgs/aics/ui/activity/IMActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    :cond_2
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$5;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p2}, Lcom/tgs/aics/ui/activity/IMActivity;->access$700(Lcom/tgs/aics/ui/activity/IMActivity;)Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isRequiredInput()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity$5;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {p2}, Lcom/tgs/aics/ui/activity/IMActivity;->access$500(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-lez p2, :cond_4

    :cond_3
    const/4 p3, 0x1

    :cond_4
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
