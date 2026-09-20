.class Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;
.super Ljava/lang/Object;
.source "QuestionnaireRecyclerAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->weightTypeInitView(Landroid/widget/TextView;Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$row:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Landroid/widget/EditText;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1317
    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$row:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    iput-object p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$seekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private enforceDecimalRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x2e

    .line 1380
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 1381
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "0"

    .line 1385
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 1386
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_1

    const-string p1, "0."

    return-object p1

    :cond_1
    const-string v0, "."

    .line 1392
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\\."

    .line 1393
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1394
    array-length v4, v1

    if-le v4, v2, :cond_2

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    .line 1395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object v0, v1, v2

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1348
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1349
    invoke-direct {p0, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->enforceDecimalRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1353
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 1354
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$row:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->isWritten:Z

    .line 1356
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v0, p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    if-ltz v0, :cond_1

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_1

    .line 1359
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$seekBar:Landroid/widget/SeekBar;

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1360
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$row:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    iput p1, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    goto :goto_1

    .line 1363
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$editText:Landroid/widget/EditText;

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    const-string p1, "100"

    goto :goto_0

    :cond_2
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1364
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 1365
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$editText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/tgs/aics/utils/Utils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1368
    :catch_0
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$editText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1372
    :cond_3
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$row:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->isWritten:Z

    .line 1373
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1374
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$row:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    iput v1, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1327
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1330
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 1333
    :cond_1
    invoke-direct {p0, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->enforceDecimalRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1336
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1337
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1338
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setSelection(I)V

    .line 1340
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1343
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
