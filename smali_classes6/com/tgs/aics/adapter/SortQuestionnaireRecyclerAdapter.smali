.class public Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SortQuestionnaireRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$OnRecyclerViewRefreshListener;,
        Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private onRecyclerViewRefreshListener:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$OnRecyclerViewRefreshListener;

.field private final position:I

.field private sortOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final sortQuestionBean:Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

.field private final swipeRecyclerView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

.field private tmpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;I)V
    .locals 2

    .line 55
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->tmpList:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->sortQuestionBean:Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    .line 59
    iget-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->sortOptions:Ljava/util/List;

    if-nez p1, :cond_0

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->sortOptions:Ljava/util/List;

    .line 61
    :cond_0
    iget-object p1, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 62
    iget-boolean v1, v0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->isHidden:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->isOptionRelationHidden:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->sortOptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_3
    iput-object p3, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->swipeRecyclerView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    .line 69
    iput p4, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->position:I

    .line 71
    iget-object p1, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of p1, p1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 72
    iget-object p1, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 73
    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 74
    iget-object p3, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->tmpList:Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method

.method static synthetic access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->tmpList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->sortQuestionBean:Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$OnRecyclerViewRefreshListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->onRecyclerViewRefreshListener:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$OnRecyclerViewRefreshListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->position:I

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->sortOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 39
    check-cast p1, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->onBindViewHolder(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->sortOptions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    if-nez p2, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->sortQuestionBean:Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    invoke-virtual {p1, v0, p2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->setData(Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string p2, "tgs_aics_questionnaire_sort_item_view"

    invoke-static {p1, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 88
    new-instance p2, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;-><init>(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;Landroid/view/View;)V

    .line 89
    iget-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->swipeRecyclerView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {p2, p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->access$002(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    return-object p2
.end method

.method public refreshCurrentValue(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->tmpList:Ljava/util/List;

    return-void
.end method

.method public setRecyclerViewRefreshListener(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$OnRecyclerViewRefreshListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->onRecyclerViewRefreshListener:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$OnRecyclerViewRefreshListener;

    return-void
.end method
