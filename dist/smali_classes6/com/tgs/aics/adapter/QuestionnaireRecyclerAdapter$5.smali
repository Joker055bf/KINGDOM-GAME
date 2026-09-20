.class Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;
.super Ljava/lang/Object;
.source "QuestionnaireRecyclerAdapter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

.field final synthetic val$tipView:Landroid/widget/TextView;

.field final synthetic val$weightQuestionBean:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;


# direct methods
.method constructor <init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Landroid/widget/EditText;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1240
    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$row:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    iput-object p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$weightQuestionBean:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    iput-object p5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$tipView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    const/high16 v0, 0x42c80000    # 100.0f

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 1245
    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$editText:Landroid/widget/EditText;

    div-int/lit8 p2, p2, 0x64

    int-to-float p2, p2

    invoke-static {p2}, Lcom/tgs/aics/utils/Utils;->formatNumber(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1246
    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$row:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    iput p2, p3, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    .line 1247
    iget-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$row:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    iput-boolean v1, p2, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->isWritten:Z

    goto :goto_0

    .line 1249
    :cond_0
    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$row:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    iget-boolean p3, p3, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->isWritten:Z

    if-eqz p3, :cond_1

    .line 1250
    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$editText:Landroid/widget/EditText;

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-static {p2}, Lcom/tgs/aics/utils/Utils;->formatNumber(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1251
    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$row:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    iput p2, p3, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    .line 1255
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$000(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Ljava/util/HashMap;

    move-result-object p2

    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$weightQuestionBean:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    iget-object p3, p3, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->id:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    const/4 p3, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    .line 1256
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p1, v3, :cond_5

    move p1, p3

    move v3, v2

    .line 1260
    :goto_1
    iget-object v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$weightQuestionBean:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->showRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge p1, v4, :cond_3

    .line 1261
    iget-object v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$weightQuestionBean:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->showRows:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    iget v4, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    cmpl-float v5, v4, v2

    if-nez v5, :cond_2

    .line 1262
    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$weightQuestionBean:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->showRows:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    iget-boolean v5, v5, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->isWritten:Z

    if-nez v5, :cond_2

    move p1, p3

    goto :goto_2

    :cond_2
    add-float/2addr v3, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    move p1, v1

    .line 1269
    :goto_2
    iget-object v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$weightQuestionBean:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->showRows:Ljava/util/List;

    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$weightQuestionBean:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->showRows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    if-eqz p1, :cond_4

    cmpg-float v5, v3, v0

    if-gez v5, :cond_4

    sub-float p1, v0, v3

    .line 1271
    iput p1, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    .line 1272
    iput-boolean v1, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->isWritten:Z

    .line 1273
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p2

    rsub-int p2, p2, 0x2710

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    .line 1275
    iput v2, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    .line 1276
    iput-boolean v1, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->isWritten:Z

    .line 1277
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1282
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$weightQuestionBean:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    iget-object p2, p2, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    move p2, p3

    move v3, v2

    .line 1284
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_7

    .line 1285
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1286
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1287
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    goto :goto_5

    :cond_6
    add-float/2addr v3, v2

    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_7
    move v2, v3

    .line 1294
    :cond_8
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object p1

    cmpl-float p2, v2, v0

    if-lez p2, :cond_9

    const-string p2, "tgs_aics_questionnaire_weight_modify_tip"

    goto :goto_6

    :cond_9
    const-string p2, "tgs_aics_questionnaire_weight_tip"

    :goto_6
    invoke-static {p1, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%d"

    .line 1296
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1297
    invoke-static {v2}, Lcom/tgs/aics/utils/Utils;->formatNumber(F)Ljava/lang/String;

    move-result-object v2

    .line 1298
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    const-string v4, "%s"

    .line 1299
    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object v2, p2, p3

    .line 1300
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1302
    iget-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$tipView:Landroid/widget/TextView;

    const/high16 p3, -0x10000

    invoke-static {p1, v0, v3, p3}, Lcom/tgs/aics/utils/Utils;->getColoredText(Ljava/lang/String;III)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1307
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 1308
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->this$0:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-static {p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;->val$editText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/tgs/aics/utils/Utils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
