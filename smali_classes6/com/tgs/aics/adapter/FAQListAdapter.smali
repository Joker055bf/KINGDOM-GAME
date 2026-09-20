.class public Lcom/tgs/aics/adapter/FAQListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FAQListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/adapter/FAQListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private dataSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/FAQListBean$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final imageLoader:Lcom/tgs/aics/utils/ImageLoader;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/tgs/aics/adapter/FAQListAdapter;->mContext:Landroid/content/Context;

    .line 26
    iget-object p1, p0, Lcom/tgs/aics/adapter/FAQListAdapter;->dataSources:Ljava/util/List;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/FAQListAdapter;->dataSources:Ljava/util/List;

    .line 28
    :cond_0
    new-instance p1, Lcom/tgs/aics/utils/ImageLoader;

    invoke-direct {p1}, Lcom/tgs/aics/utils/ImageLoader;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/FAQListAdapter;->imageLoader:Lcom/tgs/aics/utils/ImageLoader;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/tgs/aics/adapter/FAQListAdapter;->dataSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/tgs/aics/bean/FAQListBean$Item;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/tgs/aics/adapter/FAQListAdapter;->dataSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/FAQListBean$Item;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/tgs/aics/adapter/FAQListAdapter;->getItem(I)Lcom/tgs/aics/bean/FAQListBean$Item;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 50
    iget-object p2, p0, Lcom/tgs/aics/adapter/FAQListAdapter;->mContext:Landroid/content/Context;

    const-string p3, "tgs_aics_help_center_list_item"

    invoke-static {p2, p3}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    new-instance p3, Lcom/tgs/aics/adapter/FAQListAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/tgs/aics/adapter/FAQListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 52
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tgs/aics/adapter/FAQListAdapter$ViewHolder;

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tgs/aics/adapter/FAQListAdapter;->getItem(I)Lcom/tgs/aics/bean/FAQListBean$Item;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/tgs/aics/bean/FAQListBean$Item;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    iget-object v1, p3, Lcom/tgs/aics/adapter/FAQListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcom/tgs/aics/adapter/FAQListAdapter;->imageLoader:Lcom/tgs/aics/utils/ImageLoader;

    iget-object v2, p3, Lcom/tgs/aics/adapter/FAQListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/tgs/aics/utils/ImageLoader;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :cond_1
    iget-object v0, p3, Lcom/tgs/aics/adapter/FAQListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    :goto_1
    iget-object v0, p3, Lcom/tgs/aics/adapter/FAQListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/FAQListBean$Item;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p3, Lcom/tgs/aics/adapter/FAQListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    const/4 p3, 0x2

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, p3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/FAQListBean$Item;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lcom/tgs/aics/adapter/FAQListAdapter;->dataSources:Ljava/util/List;

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/FAQListAdapter;->notifyDataSetChanged()V

    return-void
.end method
