.class Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;
.super Ljava/lang/Object;
.source "FormListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/adapter/FormListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiInputViewHolder"
.end annotation


# instance fields
.field public final errorT:Landroid/widget/TextView;

.field public final inputT:Landroid/widget/EditText;

.field public final mustT:Landroid/widget/TextView;

.field public final root:Landroid/view/View;

.field public final titleT:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "form_must"

    .line 540
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->mustT:Landroid/widget/TextView;

    const-string v1, "form_title"

    .line 541
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->titleT:Landroid/widget/TextView;

    const-string v1, "form_multi_input"

    .line 542
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->inputT:Landroid/widget/EditText;

    const-string v1, "form_error_text"

    .line 543
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->errorT:Landroid/widget/TextView;

    .line 544
    iput-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->root:Landroid/view/View;

    .line 545
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
