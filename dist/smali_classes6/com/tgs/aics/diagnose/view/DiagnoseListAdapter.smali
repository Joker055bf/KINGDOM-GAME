.class public Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "DiagnoseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/tgs/aics/diagnose/IDiagnose;",
        "Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDiagnoseItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/IDiagnose;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$1;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$1;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Lorg/json/JSONObject;
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->collectResultUiData(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;Landroid/view/View;Lcom/tgs/aics/diagnose/IDiagnose;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->updateExpandStatusListener(Landroid/view/View;Lcom/tgs/aics/diagnose/IDiagnose;)V

    return-void
.end method

.method private static collectResultUiData(Ljava/util/List;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/Result;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 134
    :cond_0
    new-instance v1, Lcom/tgs/aics/diagnose/JsonObject;

    invoke-direct {v1}, Lcom/tgs/aics/diagnose/JsonObject;-><init>()V

    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/diagnose/Result;

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v2}, Lcom/tgs/aics/diagnose/Result;->getUiData()Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 137
    :goto_1
    invoke-virtual {v1, v2}, Lcom/tgs/aics/diagnose/JsonObject;->put(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {v1}, Lcom/tgs/aics/diagnose/JsonObject;->length()I

    move-result p0

    if-lez p0, :cond_3

    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method private updateExpandStatusListener(Landroid/view/View;Lcom/tgs/aics/diagnose/IDiagnose;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 241
    new-instance v0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;Lcom/tgs/aics/diagnose/IDiagnose;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/tgs/aics/diagnose/IDiagnose;)Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->mDiagnoseItems:Ljava/util/List;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->mDiagnoseItems:Ljava/util/List;

    .line 98
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->mDiagnoseItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->mDiagnoseItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 104
    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->notifyItemInserted(I)V

    :cond_3
    return p1
.end method

.method public getCurrent([J)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 248
    array-length v1, p1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_4

    :cond_0
    const-wide/16 v3, -0x1

    .line 251
    aput-wide v3, p1, v0

    const-wide/16 v3, 0x0

    .line 252
    aput-wide v3, p1, v2

    .line 253
    iget-object v1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->mDiagnoseItems:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 254
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    :goto_0
    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_5

    .line 256
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/diagnose/IDiagnose;

    if-nez v7, :cond_2

    goto :goto_3

    .line 259
    :cond_2
    invoke-interface {v7}, Lcom/tgs/aics/diagnose/IDiagnose;->isExecuted()Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v7, v6, 0x1

    int-to-long v7, v7

    .line 260
    aput-wide v7, p1, v0

    .line 261
    aput-wide v3, p1, v2

    goto :goto_3

    .line 264
    :cond_3
    invoke-interface {v7}, Lcom/tgs/aics/diagnose/IDiagnose;->getIntendTime()J

    move-result-wide v7

    .line 265
    aget-wide v9, p1, v2

    cmp-long v11, v7, v3

    if-ltz v11, :cond_4

    goto :goto_2

    :cond_4
    move-wide v7, v3

    :goto_2
    add-long/2addr v9, v7

    aput-wide v9, p1, v2

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_4
    return v0
.end method

.method protected getItem(I)Lcom/tgs/aics/diagnose/IDiagnose;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->mDiagnoseItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/diagnose/IDiagnose;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->getItem(I)Lcom/tgs/aics/diagnose/IDiagnose;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->mDiagnoseItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method synthetic lambda$updateExpandStatusListener$0$com-tgs-aics-diagnose-view-DiagnoseListAdapter(Lcom/tgs/aics/diagnose/IDiagnose;Landroid/view/View;)V
    .locals 0

    .line 242
    invoke-interface {p1}, Lcom/tgs/aics/diagnose/IDiagnose;->isOpenChildren()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p1, p2}, Lcom/tgs/aics/diagnose/IDiagnose;->setOpenChildren(Z)Z

    .line 243
    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->updateItem(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->onBindViewHolder(Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;I)V
    .locals 0

    .line 64
    invoke-virtual {p0, p2}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->getItem(I)Lcom/tgs/aics/diagnose/IDiagnose;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1, p2}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->bind(Lcom/tgs/aics/diagnose/IDiagnose;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_diagnose_item"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    new-instance p2, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public remove(Lcom/tgs/aics/diagnose/IDiagnose;)Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->mDiagnoseItems:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 111
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 112
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->notifyItemRemoved(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public set(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/IDiagnose;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/diagnose/IDiagnose;

    if-eqz v1, :cond_0

    .line 81
    invoke-interface {v1}, Lcom/tgs/aics/diagnose/IDiagnose;->isDisableUi()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 86
    :cond_2
    iput-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->mDiagnoseItems:Ljava/util/List;

    .line 87
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public updateItem(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->mDiagnoseItems:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    if-ltz p1, :cond_2

    .line 49
    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->notifyItemChanged(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
