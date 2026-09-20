.class Lcom/tgs/aics/utils/Utils$1;
.super Landroid/text/style/ClickableSpan;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/utils/Utils;->setLinkClickable(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;

.field final synthetic val$urlSpan:Landroid/text/style/URLSpan;


# direct methods
.method constructor <init>(Landroid/text/style/URLSpan;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;Landroid/content/Context;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lcom/tgs/aics/utils/Utils$1;->val$urlSpan:Landroid/text/style/URLSpan;

    iput-object p2, p0, Lcom/tgs/aics/utils/Utils$1;->val$listener:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;

    iput-object p3, p0, Lcom/tgs/aics/utils/Utils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 667
    iget-object p1, p0, Lcom/tgs/aics/utils/Utils$1;->val$urlSpan:Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    const-string v0, "aics://questionnaire_clear_all_selections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 668
    iget-object p1, p0, Lcom/tgs/aics/utils/Utils$1;->val$listener:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;

    if-eqz p1, :cond_2

    .line 669
    iget-object v0, p0, Lcom/tgs/aics/utils/Utils$1;->val$urlSpan:Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;->onClick(Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/utils/Utils$1;->val$urlSpan:Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    const-string v0, "aics://questionnaire_view_image//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 672
    iget-object p1, p0, Lcom/tgs/aics/utils/Utils$1;->val$urlSpan:Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 673
    iget-object v0, p0, Lcom/tgs/aics/utils/Utils$1;->val$listener:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;

    if-eqz v0, :cond_2

    .line 674
    invoke-interface {v0, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;->onViewImage(Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tgs/aics/utils/Utils$1;->val$urlSpan:Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 677
    iget-object v0, p0, Lcom/tgs/aics/utils/Utils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 683
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 684
    iget-object v0, p0, Lcom/tgs/aics/utils/Utils$1;->val$urlSpan:Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aics://questionnaire_clear_all_selections"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x777778

    .line 685
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    return-void
.end method
