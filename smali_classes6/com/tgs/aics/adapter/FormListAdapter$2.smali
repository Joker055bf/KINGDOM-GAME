.class Lcom/tgs/aics/adapter/FormListAdapter$2;
.super Ljava/lang/Object;
.source "FormListAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/adapter/FormListAdapter;->getViewTypeWith(Lcom/tgs/aics/bean/FormListBean$Item;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/adapter/FormListAdapter;

.field final synthetic val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

.field final synthetic val$multiInputViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;


# direct methods
.method constructor <init>(Lcom/tgs/aics/adapter/FormListAdapter;Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter$2;->this$0:Lcom/tgs/aics/adapter/FormListAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$2;->val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

    iput-object p3, p0, Lcom/tgs/aics/adapter/FormListAdapter$2;->val$multiInputViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;

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

    .line 233
    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$2;->val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

    iget p2, p2, Lcom/tgs/aics/bean/FormListBean$Item;->max:I

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$2;->val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

    iget p2, p2, Lcom/tgs/aics/bean/FormListBean$Item;->max:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$2;->val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

    iget p2, p2, Lcom/tgs/aics/bean/FormListBean$Item;->max:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 236
    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$2;->val$multiInputViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;

    iget-object p2, p2, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->inputT:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter$2;->val$multiInputViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;

    iget-object p1, p1, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->inputT:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$2;->val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

    iget p2, p2, Lcom/tgs/aics/bean/FormListBean$Item;->max:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter$2;->val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$2;->val$multiInputViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;

    iget-object p2, p2, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->inputT:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    return-void
.end method
