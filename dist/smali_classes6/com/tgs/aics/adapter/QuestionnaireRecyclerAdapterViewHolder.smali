.class public Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "QuestionnaireRecyclerAdapterViewHolder.java"


# instance fields
.field public button:Landroid/widget/Button;

.field public description:Landroid/widget/TextView;

.field public dividerView:Landroid/view/View;

.field public editText:Landroid/widget/EditText;

.field public etTextView:Landroid/widget/TextView;

.field public isRequiredSymbol:Landroid/widget/TextView;

.field public optionsRootLayout:Landroid/widget/LinearLayout;

.field public title:Landroid/widget/TextView;

.field public titleLayout:Landroid/widget/LinearLayout;

.field public titleNumber:Landroid/widget/TextView;

.field public txtErrorMsg:Landroid/widget/TextView;

.field public txtQuoteTip:Landroid/widget/TextView;

.field public videoCoverView:Landroid/widget/ImageView;

.field public videoLayout:Landroid/widget/FrameLayout;

.field public weightTipMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/content/Context;)V
    .locals 11

    .line 37
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    if-nez p2, :cond_0

    const-string p2, "tgs_aics_questionnaire_item_title_title"

    .line 40
    invoke-static {p3, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->title:Landroid/widget/TextView;

    const-string p2, "tgs_aics_questionnaire_item_title_desc"

    .line 41
    invoke-static {p3, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    const-string p2, "tgs_aics_options_divider_line_txt"

    .line 42
    invoke-static {p3, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->dividerView:Landroid/view/View;

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    const-string v1, "tgs_aics_options_root_layout"

    const-string v2, "tgs_aics_questionnaire_error_msg_txt"

    const-string v3, "form_extra_desc"

    const-string v4, "tgs_aics_options_divider_line"

    const-string v5, "tgs_aics_title_description"

    const-string v6, "form_title"

    const-string v7, "form_title_number"

    const-string v8, "form_must"

    const-string v9, "tgs_aics_title_layout"

    if-eq p2, v0, :cond_c

    const/16 v0, 0xe

    if-ne p2, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    const/16 v0, 0xa

    if-ne p2, v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 64
    invoke-static {p3, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleLayout:Landroid/widget/LinearLayout;

    .line 65
    invoke-static {p3, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->isRequiredSymbol:Landroid/widget/TextView;

    .line 66
    invoke-static {p3, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleNumber:Landroid/widget/TextView;

    .line 67
    invoke-static {p3, v6}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->title:Landroid/widget/TextView;

    .line 68
    invoke-static {p3, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    .line 69
    invoke-static {p3, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    const-string p2, "tgs_aics_input_et"

    .line 70
    invoke-static {p3, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    .line 72
    new-instance v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string p2, "tgs_aics_input_tv"

    .line 80
    invoke-static {p3, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->etTextView:Landroid/widget/TextView;

    .line 81
    invoke-static {p3, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtErrorMsg:Landroid/widget/TextView;

    .line 82
    invoke-static {p3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->dividerView:Landroid/view/View;

    goto/16 :goto_3

    :cond_3
    const/4 v0, 0x4

    if-eq p2, v0, :cond_a

    const/16 v0, 0x8

    if-eq p2, v0, :cond_a

    const/16 v0, 0x9

    if-ne p2, v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p2, v0, :cond_5

    .line 94
    invoke-static {p3, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleLayout:Landroid/widget/LinearLayout;

    .line 95
    invoke-static {p3, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->isRequiredSymbol:Landroid/widget/TextView;

    .line 96
    invoke-static {p3, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleNumber:Landroid/widget/TextView;

    .line 97
    invoke-static {p3, v6}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->title:Landroid/widget/TextView;

    .line 98
    invoke-static {p3, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    .line 99
    invoke-static {p3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->dividerView:Landroid/view/View;

    goto/16 :goto_3

    :cond_5
    const/4 v0, 0x6

    if-ne p2, v0, :cond_6

    const-string p2, "tgs_aics_questionnaire_item_paginator_btn"

    .line 101
    invoke-static {p3, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->button:Landroid/widget/Button;

    goto/16 :goto_3

    :cond_6
    const/4 v0, 0x7

    if-ne p2, v0, :cond_7

    const-string p2, "tgs_aics_questionnaire_item_end_btn"

    .line 103
    invoke-static {p3, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->button:Landroid/widget/Button;

    goto/16 :goto_3

    :cond_7
    const/16 v0, 0xb

    const-string v10, "tgs_aics_questionnaire_item_weight_tip_txt"

    if-ne p2, v0, :cond_8

    .line 105
    invoke-static {p3, v10}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->weightTipMsg:Landroid/widget/TextView;

    .line 106
    invoke-static {p3, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleLayout:Landroid/widget/LinearLayout;

    .line 107
    invoke-static {p3, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->isRequiredSymbol:Landroid/widget/TextView;

    .line 108
    invoke-static {p3, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleNumber:Landroid/widget/TextView;

    .line 109
    invoke-static {p3, v6}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->title:Landroid/widget/TextView;

    .line 110
    invoke-static {p3, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    .line 111
    invoke-static {p3, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    .line 112
    invoke-static {p3, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    .line 113
    invoke-static {p3, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtErrorMsg:Landroid/widget/TextView;

    .line 114
    invoke-static {p3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->dividerView:Landroid/view/View;

    goto/16 :goto_3

    :cond_8
    const/16 v0, 0xc

    if-eq p2, v0, :cond_9

    const/16 v0, 0xd

    if-ne p2, v0, :cond_d

    .line 116
    :cond_9
    invoke-static {p3, v10}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->weightTipMsg:Landroid/widget/TextView;

    .line 117
    invoke-static {p3, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleLayout:Landroid/widget/LinearLayout;

    .line 118
    invoke-static {p3, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->isRequiredSymbol:Landroid/widget/TextView;

    .line 119
    invoke-static {p3, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleNumber:Landroid/widget/TextView;

    .line 120
    invoke-static {p3, v6}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->title:Landroid/widget/TextView;

    .line 121
    invoke-static {p3, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    .line 122
    invoke-static {p3, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    .line 123
    invoke-static {p3, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    .line 124
    invoke-static {p3, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtErrorMsg:Landroid/widget/TextView;

    .line 125
    invoke-static {p3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->dividerView:Landroid/view/View;

    goto/16 :goto_3

    .line 84
    :cond_a
    :goto_0
    invoke-static {p3, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleLayout:Landroid/widget/LinearLayout;

    .line 85
    invoke-static {p3, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->isRequiredSymbol:Landroid/widget/TextView;

    .line 86
    invoke-static {p3, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleNumber:Landroid/widget/TextView;

    .line 87
    invoke-static {p3, v6}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->title:Landroid/widget/TextView;

    .line 88
    invoke-static {p3, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    .line 89
    invoke-static {p3, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    const-string p2, "tgs_aics_matrix_scale_root_layout"

    .line 90
    invoke-static {p3, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    .line 91
    invoke-static {p3, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtErrorMsg:Landroid/widget/TextView;

    .line 92
    invoke-static {p3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->dividerView:Landroid/view/View;

    goto/16 :goto_3

    .line 54
    :cond_b
    :goto_1
    invoke-static {p3, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleLayout:Landroid/widget/LinearLayout;

    .line 55
    invoke-static {p3, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->isRequiredSymbol:Landroid/widget/TextView;

    .line 56
    invoke-static {p3, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleNumber:Landroid/widget/TextView;

    .line 57
    invoke-static {p3, v6}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->title:Landroid/widget/TextView;

    .line 58
    invoke-static {p3, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    .line 59
    invoke-static {p3, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    .line 60
    invoke-static {p3, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    .line 61
    invoke-static {p3, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtErrorMsg:Landroid/widget/TextView;

    .line 62
    invoke-static {p3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->dividerView:Landroid/view/View;

    goto :goto_3

    .line 44
    :cond_c
    :goto_2
    invoke-static {p3, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleLayout:Landroid/widget/LinearLayout;

    .line 45
    invoke-static {p3, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->isRequiredSymbol:Landroid/widget/TextView;

    .line 46
    invoke-static {p3, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleNumber:Landroid/widget/TextView;

    .line 47
    invoke-static {p3, v6}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->title:Landroid/widget/TextView;

    .line 48
    invoke-static {p3, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    .line 49
    invoke-static {p3, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    .line 50
    invoke-static {p3, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    .line 51
    invoke-static {p3, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtErrorMsg:Landroid/widget/TextView;

    .line 52
    invoke-static {p3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->dividerView:Landroid/view/View;

    :cond_d
    :goto_3
    const-string p2, "form_video_layout"

    .line 129
    invoke-static {p3, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->videoLayout:Landroid/widget/FrameLayout;

    const-string p2, "form_video_cover_image"

    .line 130
    invoke-static {p3, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->videoCoverView:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v2, p1, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    :goto_0
    return v1
.end method
