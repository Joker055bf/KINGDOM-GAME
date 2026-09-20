.class public Lcom/tgs/aics/selecttext/SelectTextPopAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelectTextPopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/selecttext/SelectTextPopAdapter$OnClickItemListener;,
        Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private itemWrapContent:Z

.field private listener:Lcom/tgs/aics/selecttext/SelectTextPopAdapter$OnClickItemListener;

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->itemWrapContent:Z

    .line 28
    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-tgs-aics-selecttext-SelectTextPopAdapter(ILandroid/view/View;)V
    .locals 0

    .line 64
    iget-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->listener:Lcom/tgs/aics/selecttext/SelectTextPopAdapter$OnClickItemListener;

    if-eqz p2, :cond_0

    .line 65
    invoke-interface {p2, p1}, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$OnClickItemListener;->onClick(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->onBindViewHolder(Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;I)V
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 54
    iget-boolean v2, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->itemWrapContent:Z

    if-eqz v2, :cond_1

    .line 55
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;->access$000(Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    .line 56
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;->access$000(Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;->access$000(Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lcom/tgs/aics/selecttext/SelectUtils;->dp2px(F)I

    move-result v4

    .line 59
    invoke-static {v3}, Lcom/tgs/aics/selecttext/SelectUtils;->dp2px(F)I

    move-result v3

    const/4 v5, 0x0

    .line 58
    invoke-virtual {v2, v4, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 61
    :cond_1
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;->access$100(Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 62
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;->access$000(Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;->access$200(Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/selecttext/SelectTextPopAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;
    .locals 2

    .line 43
    iget-object p2, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->mContext:Landroid/content/Context;

    const-string v1, "tgs_aics_item_select_text_pop"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;

    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, v0}, Lcom/tgs/aics/selecttext/SelectTextPopAdapter$ViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-object p2
.end method

.method public setItemWrapContent(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->itemWrapContent:Z

    return-void
.end method

.method public setOnClickItemListener(Lcom/tgs/aics/selecttext/SelectTextPopAdapter$OnClickItemListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextPopAdapter;->listener:Lcom/tgs/aics/selecttext/SelectTextPopAdapter$OnClickItemListener;

    return-void
.end method
