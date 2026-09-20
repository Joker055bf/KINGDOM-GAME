.class Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "HelpCenterFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public final content:Landroid/widget/TextView;

.field public final icon:Landroid/widget/ImageView;

.field public final root:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_help_center_fragment_icon"

    .line 81
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v1, "tgs_aics_help_center_fragment_content"

    .line 82
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter$ViewHolder;->content:Landroid/widget/TextView;

    .line 83
    iput-object p1, p0, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter$ViewHolder;->root:Landroid/view/View;

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
