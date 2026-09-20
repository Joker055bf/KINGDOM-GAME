.class public Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;
.super Landroid/widget/BaseAdapter;
.source "HelpCenterFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private importantAttentionBeanItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/ImportantAttentionBean$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;->mContext:Landroid/content/Context;

    .line 26
    iget-object p1, p0, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;->importantAttentionBeanItems:Ljava/util/List;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;->importantAttentionBeanItems:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;->importantAttentionBeanItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/tgs/aics/bean/ImportantAttentionBean$Item;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;->importantAttentionBeanItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;->getItem(I)Lcom/tgs/aics/bean/ImportantAttentionBean$Item;

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

    .line 49
    iget-object p2, p0, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;->mContext:Landroid/content/Context;

    const-string p3, "tgs_aics_help_center_list_item"

    invoke-static {p2, p3}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    new-instance p3, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter$ViewHolder;

    .line 55
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;->getItem(I)Lcom/tgs/aics/bean/ImportantAttentionBean$Item;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    iget-object v1, p3, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p3, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    .line 61
    :cond_1
    iget-object v0, p3, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :goto_1
    iget-object p3, p3, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/ImportantAttentionBean$Item;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/ImportantAttentionBean$Item;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 70
    iput-object p1, p0, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;->importantAttentionBeanItems:Ljava/util/List;

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/HelpCenterFragmentAdapter;->notifyDataSetChanged()V

    return-void
.end method
