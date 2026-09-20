.class public Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DiagnoseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mItemChildrenLayout:Landroid/view/ViewGroup;

.field private final mItemDivider:Landroid/view/View;

.field private final mItemTitle:Landroid/view/View;

.field final synthetic this$0:Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;Landroid/view/View;)V
    .locals 2

    .line 147
    iput-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;

    .line 148
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_diagnose_item_title"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->mItemTitle:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 150
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_diagnose_item_divider"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    iput-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->mItemDivider:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 151
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tgs_aics_diagnose_item_children"

    invoke-static {p1, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    :cond_2
    iput-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->mItemChildrenLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method private applyTitleLayout(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLcom/tgs/aics/diagnose/IDiagnose;)V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->this$0:Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;

    invoke-static {v0, p1, p5}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->access$100(Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;Landroid/view/View;Lcom/tgs/aics/diagnose/IDiagnose;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tgs_aics_diagnose_titleName"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 228
    :goto_0
    invoke-static {v1, p2}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    if-eqz p1, :cond_1

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "tgs_aics_diagnose_titleStatus"

    invoke-static {p2, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 230
    :goto_1
    invoke-static {p2, p3}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    if-eqz p1, :cond_2

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "tgs_aics_diagnose_titleOpen"

    invoke-static {p2, p3}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_2
    if-eqz p4, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/16 p1, 0x8

    .line 233
    :goto_2
    invoke-static {v0, p1}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    if-eqz v0, :cond_5

    if-eqz p5, :cond_4

    .line 235
    invoke-interface {p5}, Lcom/tgs/aics/diagnose/IDiagnose;->isOpenChildren()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    const/high16 p1, 0x43340000    # 180.0f

    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_5
    return-void
.end method

.method private convertText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_0
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 158
    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    .line 159
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->getTextById(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 165
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bind(Lcom/tgs/aics/diagnose/IDiagnose;)V
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 169
    invoke-interface {p1}, Lcom/tgs/aics/diagnose/IDiagnose;->getName()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-direct {p0, v1}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->convertText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "Unknown"

    :goto_1
    move-object v4, v1

    if-eqz p1, :cond_2

    .line 171
    invoke-interface {p1}, Lcom/tgs/aics/diagnose/IDiagnose;->getStatus()I

    move-result v1

    goto :goto_2

    :cond_2
    const/16 v1, 0x2710

    :goto_2
    const/16 v2, 0x2711

    const/16 v8, 0x8

    if-ne v1, v2, :cond_3

    .line 173
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->mItemDivider:Landroid/view/View;

    invoke-static {v0, v8}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 174
    iget-object v3, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->mItemTitle:Landroid/view/View;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_diagnose_checking"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->convertText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->applyTitleLayout(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLcom/tgs/aics/diagnose/IDiagnose;)V

    goto/16 :goto_b

    :cond_3
    const/16 v2, 0x2712

    const/16 v3, 0x2713

    if-eq v1, v2, :cond_5

    if-ne v1, v3, :cond_4

    goto :goto_3

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->mItemDivider:Landroid/view/View;

    invoke-static {v0, v8}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 218
    iget-object v3, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->mItemTitle:Landroid/view/View;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tgs_aics_diagnose_waitingCheck"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->convertText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->applyTitleLayout(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLcom/tgs/aics/diagnose/IDiagnose;)V

    goto/16 :goto_b

    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    .line 177
    invoke-interface {p1}, Lcom/tgs/aics/diagnose/IDiagnose;->getResult()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->access$000(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v9, v2

    goto :goto_4

    :cond_6
    move-object v9, v0

    :goto_4
    if-eqz v9, :cond_7

    .line 178
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v2

    goto :goto_5

    :cond_7
    const/4 v2, -0x1

    :goto_5
    move v10, v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lez v10, :cond_8

    if-eqz p1, :cond_8

    .line 179
    invoke-interface {p1}, Lcom/tgs/aics/diagnose/IDiagnose;->isOpenChildren()Z

    move-result v2

    if-eqz v2, :cond_8

    move v13, v11

    goto :goto_6

    :cond_8
    move v13, v12

    :goto_6
    const/16 v2, 0x22

    const-string v5, ""

    if-ne v1, v3, :cond_a

    .line 181
    iget-object v1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->mItemDivider:Landroid/view/View;

    invoke-static {v1, v8}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 182
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "tgs_aics_diagnose_check_failed"

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object v5, v1

    .line 184
    :cond_9
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 185
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v6, -0x10000

    invoke-direct {v3, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v3, v12, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 186
    iget-object v3, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->mItemTitle:Landroid/view/View;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->applyTitleLayout(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLcom/tgs/aics/diagnose/IDiagnose;)V

    goto :goto_9

    .line 188
    :cond_a
    iget-object v1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->mItemDivider:Landroid/view/View;

    if-eqz v13, :cond_b

    move v3, v12

    goto :goto_7

    :cond_b
    move v3, v8

    :goto_7
    invoke-static {v1, v3}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 189
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "tgs_aics_diagnose_check_finish"

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    move-object v5, v1

    .line 191
    :cond_c
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 192
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const-string v6, "#45aa34"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v3, v12, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 193
    iget-object v3, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->mItemTitle:Landroid/view/View;

    if-lez v10, :cond_d

    move v6, v11

    goto :goto_8

    :cond_d
    move v6, v12

    :goto_8
    move-object v2, p0

    move-object v5, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->applyTitleLayout(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLcom/tgs/aics/diagnose/IDiagnose;)V

    .line 195
    :goto_9
    iget-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->mItemChildrenLayout:Landroid/view/ViewGroup;

    if-eqz v13, :cond_e

    move v8, v12

    :cond_e
    invoke-static {p1, v8}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 197
    iget-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->mItemChildrenLayout:Landroid/view/ViewGroup;

    if-eqz v9, :cond_f

    .line 198
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    if-eqz v13, :cond_12

    if-lez v10, :cond_12

    if-eqz p1, :cond_12

    if-eqz v0, :cond_12

    .line 200
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v10, :cond_10

    sub-int v2, v1, v10

    .line 202
    invoke-virtual {p1, v10, v2}, Landroid/view/ViewGroup;->removeViews(II)V

    :cond_10
    :goto_a
    if-eqz v0, :cond_12

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    if-lt v12, v1, :cond_11

    .line 208
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tgs_aics_diagnose_title"

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, p1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 211
    :cond_11
    invoke-virtual {p1, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 212
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter$ItemViewHolder;->applyTitleLayout(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLcom/tgs/aics/diagnose/IDiagnose;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_12
    :goto_b
    return-void
.end method
