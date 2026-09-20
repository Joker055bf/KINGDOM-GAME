.class Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SortQuestionnaireRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortQuestionnaireRecyclerAdapterViewHolder"
.end annotation


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private descTv:Landroid/widget/TextView;

.field private dragImg:Landroid/widget/ImageView;

.field private editText:Landroid/widget/EditText;

.field private enlargeImg:Landroid/widget/ImageView;

.field private extraLayout:Landroid/widget/LinearLayout;

.field private imageLayout:Landroid/widget/FrameLayout;

.field private imageView:Landroid/widget/ImageView;

.field private isMustTv:Landroid/widget/TextView;

.field private spinner:Landroid/widget/Spinner;

.field private swipeRecyclerView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

.field final synthetic this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;Landroid/view/View;)V
    .locals 2

    .line 121
    iput-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    .line 122
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 124
    invoke-static {p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_options_sort_image_layout"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->imageLayout:Landroid/widget/FrameLayout;

    .line 125
    invoke-static {p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_options_sort_image"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->imageView:Landroid/widget/ImageView;

    .line 126
    invoke-static {p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_options_sort_image_enlarge"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->enlargeImg:Landroid/widget/ImageView;

    .line 127
    invoke-static {p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_options_checkbox"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 128
    invoke-static {p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_options_title"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->titleTv:Landroid/widget/TextView;

    .line 129
    invoke-static {p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_options_drag_view"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->dragImg:Landroid/widget/ImageView;

    .line 130
    invoke-static {p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_options_sort_description"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->descTv:Landroid/widget/TextView;

    .line 131
    invoke-static {p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_inner_question_layout"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->extraLayout:Landroid/widget/LinearLayout;

    .line 132
    invoke-static {p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_is_must"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->isMustTv:Landroid/widget/TextView;

    .line 133
    invoke-static {p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_inner_question_edittext"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    .line 134
    invoke-static {p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "tgs_aics_inner_question_spinner"

    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->spinner:Landroid/widget/Spinner;

    return-void
.end method

.method static synthetic access$002(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->swipeRecyclerView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;)Landroid/widget/EditText;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method private buildMediaInfo(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/tgs/aics/bean/MediaInfo;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    new-instance v1, Lcom/tgs/aics/bean/MediaInfo;

    invoke-direct {v1}, Lcom/tgs/aics/bean/MediaInfo;-><init>()V

    .line 320
    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/MediaInfo;->setUniqueId(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1, p2}, Lcom/tgs/aics/bean/MediaInfo;->setUrl(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1, p3}, Lcom/tgs/aics/bean/MediaInfo;->setVideo(Z)V

    .line 323
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private createNewOptions()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    iget-object v1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$400(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$400(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    move-result-object v1

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    iget-object v2, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$400(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    move-result-object v2

    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$400(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    move-result-object v2

    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 279
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 280
    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 286
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 287
    iget-object v4, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v4}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$400(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    move-result-object v4

    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->originalOptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 288
    iget-object v6, v5, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 289
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 293
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 294
    iget-object v3, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v3}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$400(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    move-result-object v3

    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->originalOptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 295
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 296
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 299
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 302
    :cond_7
    iget-object v1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$400(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    move-result-object v1

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->originalOptions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    :goto_3
    return-object v0
.end method


# virtual methods
.method synthetic lambda$setData$0$com-tgs-aics-adapter-SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 154
    iget-object p2, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {p2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "6000"

    const/4 v2, 0x0

    .line 155
    invoke-direct {p0, v1, p1, v2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->buildMediaInfo(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "aics_media_info_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "aics_current_media_unique_id"

    const-string v1, "2000"

    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 154
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$setData$1$com-tgs-aics-adapter-SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder(Landroid/view/View;)V
    .locals 1

    .line 179
    iget-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method synthetic lambda$setData$2$com-tgs-aics-adapter-SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder(Landroid/view/View;)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method synthetic lambda$setData$3$com-tgs-aics-adapter-SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder(Landroid/view/View;)V
    .locals 1

    .line 195
    iget-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method synthetic lambda$setData$4$com-tgs-aics-adapter-SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder(Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 255
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 257
    iget-object p3, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {p3}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 258
    iget-object p3, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {p3}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_0
    iget-object p3, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {p3}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :goto_0
    iget-object p2, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {p2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    .line 265
    invoke-direct {p0}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->createNewOptions()Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    .line 266
    iget-object p2, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {p2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->isCanSubmit(Landroid/content/Context;)Z

    .line 267
    iget-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$500(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$OnRecyclerViewRefreshListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 268
    iget-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$500(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$OnRecyclerViewRefreshListener;

    move-result-object p1

    iget-object p2, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {p2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$600(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$OnRecyclerViewRefreshListener;->onRefresh(I)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 310
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 312
    iget-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->swipeRecyclerView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {p1, p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public refreshCheckboxNumber(I)V
    .locals 6

    .line 138
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const v1, 0x3fa66666

    const/high16 v2, 0x3fc00000    # 1.5f

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->checkBox:Landroid/widget/CheckBox;

    const-string v3, "#038cf4"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v5}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v5}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v2, v1, v3}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawableAndStroke(IFII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v0}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v1

    const-string v2, "#cdcdcd"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const v3, 0x106000d

    invoke-static {v3, v0, v1, v2}, Lcom/ypx/imagepicker/utils/PCornerUtils;->cornerDrawableAndStroke(IFII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object p1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->checkBox:Landroid/widget/CheckBox;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setData(Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;)V
    .locals 9

    .line 149
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->optionImages:Ljava/util/List;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->optionImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 150
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->optionImages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 153
    iget-object v3, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v3}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v4}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "tgs_aics_white_image_placeholder"

    invoke-static {v4, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    iget-object v4, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 154
    iget-object v3, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->enlargeImg:Landroid/widget/ImageView;

    new-instance v4, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->imageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v3, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v0}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    move v0, v2

    .line 170
    :goto_1
    iget-object v4, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v4}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 171
    iget-object v4, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v4}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$200(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/2addr v0, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    .line 176
    :goto_2
    invoke-virtual {p0, v0}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->refreshCheckboxNumber(I)V

    .line 178
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 179
    new-instance v3, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 183
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->titleTv:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->label:Ljava/lang/String;

    iget-object v4, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v4}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x28

    invoke-static {v3, v4, v6, v5, v7}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->titleTv:Landroid/widget/TextView;

    new-instance v3, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->dragImg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->dragImg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, p0

    goto :goto_4

    :cond_7
    move-object v3, v6

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->descTv:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->optionDescription:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    goto :goto_5

    :cond_8
    move v3, v2

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->descTv:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 193
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->optionDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 194
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->descTv:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->optionDescription:Ljava/lang/String;

    iget-object v5, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v5}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v5

    iget-object v8, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->descTv:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    invoke-static {v3, v5, v6, v8, v7}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->descTv:Landroid/widget/TextView;

    new-instance v3, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    :cond_9
    iget-object p2, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    if-eqz p2, :cond_f

    .line 200
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 201
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->extraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->isMustTv:Landroid/widget/TextView;

    iget-boolean v3, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->isRequired:Z

    if-eqz v3, :cond_a

    move v4, v2

    :cond_a
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    iget-object v3, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    new-instance v3, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$1;

    invoke-direct {v3, p0, p2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$1;-><init>(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 219
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->type:Ljava/lang/String;

    sget-object v3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionFormType;->select:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 220
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->spinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$2;

    invoke-direct {v3, p0}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$2;-><init>(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 233
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->option:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->option:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 234
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->option:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 235
    :goto_6
    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->option:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_b

    .line 236
    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->option:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm$Option;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm$Option;->label:Ljava/lang/String;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 238
    :cond_b
    new-instance p2, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {v1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {p2, v1, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    .line 239
    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 240
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_8

    .line 242
    :cond_c
    iget-object p2, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_8

    .line 244
    :cond_d
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->type:Ljava/lang/String;

    sget-object v3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionFormType;->input:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 245
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->placeholder:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object p2, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    invoke-static {p2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->access$100(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)Landroid/content/Context;

    move-result-object p2

    const-string v1, "tgs_aics_redemption_placeholder"

    invoke-static {p2, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_7

    :cond_e
    iget-object p2, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->placeholder:Ljava/lang/String;

    :goto_7
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 250
    :cond_f
    iget-object p2, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->extraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    :cond_10
    :goto_8
    iget-object p2, p0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda4;-><init>(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$SortQuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
