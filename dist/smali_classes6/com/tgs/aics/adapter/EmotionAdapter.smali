.class public Lcom/tgs/aics/adapter/EmotionAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmotionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/adapter/EmotionAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmotionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tgs/aics/adapter/EmotionAdapter;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/tgs/aics/adapter/EmotionAdapter;->mEmotionList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 28
    sget-boolean v0, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/tgs/aics/adapter/EmotionAdapter;->mEmotionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    return v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/EmotionAdapter;->mEmotionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 48
    iget-object p2, p0, Lcom/tgs/aics/adapter/EmotionAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v0, p0, Lcom/tgs/aics/adapter/EmotionAdapter;->mContext:Landroid/content/Context;

    const-string v1, "tgs_aics_emotion_grid_item"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 49
    new-instance p3, Lcom/tgs/aics/adapter/EmotionAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/tgs/aics/adapter/EmotionAdapter$ViewHolder;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/tgs/aics/adapter/EmotionAdapter;->mContext:Landroid/content/Context;

    const-string v1, "tgs_aics_emotion_grid_item_emoji"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/tgs/aics/adapter/EmotionAdapter$ViewHolder;->emojiImg:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tgs/aics/adapter/EmotionAdapter$ViewHolder;

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/EmotionAdapter;->mEmotionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file:///android_asset/tgsemoji/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tgs/aics/adapter/EmotionAdapter;->mEmotionList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/tgs/aics/adapter/EmotionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p3, p3, Lcom/tgs/aics/adapter/EmotionAdapter$ViewHolder;->emojiImg:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/adapter/EmotionAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p3, p3, Lcom/tgs/aics/adapter/EmotionAdapter$ViewHolder;->emojiImg:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_1
    return-object p2
.end method
