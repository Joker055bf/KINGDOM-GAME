.class Lcom/tgs/aics/adapter/FormListAdapter$1;
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

.field final synthetic val$singleInputViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;


# direct methods
.method constructor <init>(Lcom/tgs/aics/adapter/FormListAdapter;Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->this$0:Lcom/tgs/aics/adapter/FormListAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

    iput-object p3, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$singleInputViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

    iget-object v0, v0, Lcom/tgs/aics/bean/FormListBean$Item;->type:Lcom/tgs/aics/bean/FieldType;

    sget-object v1, Lcom/tgs/aics/bean/FieldType;->FieldTypeNumberInput:Lcom/tgs/aics/bean/FieldType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

    iget v0, v0, Lcom/tgs/aics/bean/FormListBean$Item;->numberPrecision:I

    if-lez v0, :cond_1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$singleInputViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;

    iget-object p1, p1, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->this$0:Lcom/tgs/aics/adapter/FormListAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

    iget v2, v2, Lcom/tgs/aics/bean/FormListBean$Item;->numberPrecision:I

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/adapter/FormListAdapter;->access$000(Lcom/tgs/aics/adapter/FormListAdapter;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$singleInputViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;

    iget-object v0, v0, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$singleInputViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;

    iget-object v1, v1, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 190
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$singleInputViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;

    iget-object v0, v0, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$singleInputViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;

    iget-object v0, v0, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 171
    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

    iget p2, p2, Lcom/tgs/aics/bean/FormListBean$Item;->max:I

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

    iget p2, p2, Lcom/tgs/aics/bean/FormListBean$Item;->max:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

    iget p2, p2, Lcom/tgs/aics/bean/FormListBean$Item;->max:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 174
    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$singleInputViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;

    iget-object p2, p2, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$singleInputViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;

    iget-object p1, p1, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

    iget p2, p2, Lcom/tgs/aics/bean/FormListBean$Item;->max:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$bean:Lcom/tgs/aics/bean/FormListBean$Item;

    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter$1;->val$singleInputViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;

    iget-object p2, p2, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    return-void
.end method
