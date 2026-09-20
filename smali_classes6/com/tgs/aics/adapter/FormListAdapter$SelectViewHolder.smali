.class Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;
.super Ljava/lang/Object;
.source "FormListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/adapter/FormListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectViewHolder"
.end annotation


# instance fields
.field public final contentT:Landroid/widget/TextView;

.field public final errorT:Landroid/widget/TextView;

.field public final mustT:Landroid/widget/TextView;

.field public final root:Landroid/view/View;

.field public final titleT:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "form_must"

    .line 558
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;->mustT:Landroid/widget/TextView;

    const-string v1, "form_title"

    .line 559
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;->titleT:Landroid/widget/TextView;

    const-string v1, "form_select_text"

    .line 560
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;->contentT:Landroid/widget/TextView;

    const-string v1, "form_error_text"

    .line 561
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;->errorT:Landroid/widget/TextView;

    .line 562
    iput-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;->root:Landroid/view/View;

    .line 563
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
