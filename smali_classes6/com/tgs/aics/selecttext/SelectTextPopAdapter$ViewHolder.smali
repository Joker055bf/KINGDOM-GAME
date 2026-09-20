.class public Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SelectTextPopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/selecttext/SelectTextPopAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final iv_pop_icon:Landroid/widget/ImageView;

.field private final ll_pop_item:Landroid/widget/LinearLayout;

.field private final tv_pop_func:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    .line 83
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const-string v0, "ll_pop_item"

    .line 85
    invoke-static {p2, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;->ll_pop_item:Landroid/widget/LinearLayout;

    const-string v0, "iv_pop_icon"

    .line 86
    invoke-static {p2, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;->iv_pop_icon:Landroid/widget/ImageView;

    const-string v0, "tv_pop_func"

    .line 87
    invoke-static {p2, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;->tv_pop_func:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;->tv_pop_func:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;->iv_pop_icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;->ll_pop_item:Landroid/widget/LinearLayout;

    return-object p0
.end method
