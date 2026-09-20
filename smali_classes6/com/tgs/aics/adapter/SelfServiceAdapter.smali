.class public Lcom/tgs/aics/adapter/SelfServiceAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelfServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/adapter/SelfServiceAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private gvWidth:I

.field private final heights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mGv:Lcom/tgs/aics/widget/TypeGridView;

.field private mLimitedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selfServiceBeanItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/SelfServiceBean$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tgs/aics/widget/TypeGridView;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->heights:Ljava/util/List;

    .line 35
    iput v1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->gvWidth:I

    .line 38
    iput-object p1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mGv:Lcom/tgs/aics/widget/TypeGridView;

    .line 40
    iget-object p1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->selfServiceBeanItems:Ljava/util/List;

    if-nez p1, :cond_0

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->selfServiceBeanItems:Ljava/util/List;

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mLimitedList:Ljava/util/List;

    if-nez p1, :cond_1

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mLimitedList:Ljava/util/List;

    :cond_1
    const/16 p1, 0x1f4

    .line 44
    iput p1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->gvWidth:I

    return-void
.end method

.method private getGvHorizontalSpacing(Landroid/widget/GridView;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    move v2, v0

    .line 170
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 171
    aget-object v3, v1, v2

    const/4 v4, 0x1

    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 174
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 175
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "mHorizontalSpacing"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 180
    invoke-static {v3}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->selfServiceBeanItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/tgs/aics/bean/SelfServiceBean$Item;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->selfServiceBeanItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/SelfServiceBean$Item;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/tgs/aics/adapter/SelfServiceAdapter;->getItem(I)Lcom/tgs/aics/bean/SelfServiceBean$Item;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-nez p2, :cond_0

    .line 66
    iget-object p2, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mContext:Landroid/content/Context;

    const-string p3, "tgs_aics_grid_item"

    invoke-static {p2, p3}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance p3, Lcom/tgs/aics/adapter/SelfServiceAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/tgs/aics/adapter/SelfServiceAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 68
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tgs/aics/adapter/SelfServiceAdapter$ViewHolder;

    .line 72
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tgs/aics/adapter/SelfServiceAdapter;->getItem(I)Lcom/tgs/aics/bean/SelfServiceBean$Item;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/tgs/aics/bean/SelfServiceBean$Item;->getIcon()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p3, Lcom/tgs/aics/adapter/SelfServiceAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 77
    :cond_1
    iget-object v1, p3, Lcom/tgs/aics/adapter/SelfServiceAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/SelfServiceBean$Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p3, Lcom/tgs/aics/adapter/SelfServiceAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/tgs/aics/adapter/SelfServiceAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tgs/aics/adapter/SelfServiceAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/adapter/SelfServiceAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 94
    iget-object v0, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 95
    iget-object v0, p3, Lcom/tgs/aics/adapter/SelfServiceAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 109
    iget-object v1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 112
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/SelfServiceAdapter;->getCount()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mGv:Lcom/tgs/aics/widget/TypeGridView;

    invoke-virtual {v2}, Lcom/tgs/aics/widget/TypeGridView;->getNumColumns()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_6

    const-string v4, ""

    move v5, v2

    .line 117
    :goto_2
    iget-object v6, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mGv:Lcom/tgs/aics/widget/TypeGridView;

    invoke-virtual {v6}, Lcom/tgs/aics/widget/TypeGridView;->getNumColumns()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mGv:Lcom/tgs/aics/widget/TypeGridView;

    invoke-virtual {v6}, Lcom/tgs/aics/widget/TypeGridView;->getNumColumns()I

    move-result v6

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    invoke-virtual {p0}, Lcom/tgs/aics/adapter/SelfServiceAdapter;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 118
    iget-object v6, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mLimitedList:Ljava/util/List;

    iget-object v7, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mGv:Lcom/tgs/aics/widget/TypeGridView;

    invoke-virtual {v7}, Lcom/tgs/aics/widget/TypeGridView;->getNumColumns()I

    move-result v7

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 119
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_2

    move-object v4, v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 124
    :cond_3
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 125
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 126
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->measure(II)V

    .line 128
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_4

    goto :goto_3

    :cond_4
    move v4, v2

    .line 133
    :goto_3
    iget-object v5, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->heights:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v3, :cond_5

    .line 134
    iget-object v5, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->heights:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 136
    :cond_5
    iget-object v5, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->heights:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mGv:Lcom/tgs/aics/widget/TypeGridView;

    invoke-virtual {v0}, Lcom/tgs/aics/widget/TypeGridView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->heights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 143
    :try_start_0
    iget-object p3, p3, Lcom/tgs/aics/adapter/SelfServiceAdapter$ViewHolder;->label:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->heights:Ljava/util/List;

    iget-object v1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mGv:Lcom/tgs/aics/widget/TypeGridView;

    invoke-virtual {v1}, Lcom/tgs/aics/widget/TypeGridView;->getNumColumns()I

    move-result v1

    div-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    return-object p2
.end method

.method synthetic lambda$getView$0$com-tgs-aics-adapter-SelfServiceAdapter()Z
    .locals 4

    .line 81
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/SelfServiceAdapter;->getCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mGv:Lcom/tgs/aics/widget/TypeGridView;

    invoke-virtual {v1}, Lcom/tgs/aics/widget/TypeGridView;->getNumColumns()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 83
    iget-object v1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->heights:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->heights:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mGv:Lcom/tgs/aics/widget/TypeGridView;

    invoke-virtual {v0}, Lcom/tgs/aics/widget/TypeGridView;->getHeight()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 87
    iget-object v0, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mGv:Lcom/tgs/aics/widget/TypeGridView;

    invoke-virtual {v0}, Lcom/tgs/aics/widget/TypeGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 88
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 89
    iget-object v1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mGv:Lcom/tgs/aics/widget/TypeGridView;

    invoke-virtual {v1, v0}, Lcom/tgs/aics/widget/TypeGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/SelfServiceBean$Item;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 153
    iput-object p1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->selfServiceBeanItems:Ljava/util/List;

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/SelfServiceBean$Item;

    .line 156
    iget-object v1, p0, Lcom/tgs/aics/adapter/SelfServiceAdapter;->mLimitedList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/SelfServiceBean$Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/SelfServiceAdapter;->notifyDataSetChanged()V

    return-void
.end method
