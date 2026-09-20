.class public Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "QuestionnaireRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;,
        Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;,
        Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHECKBOX:I = 0x2

.field public static final DESCRIPTION:I = 0x5

.field public static final END:I = 0x7

.field public static final FILE_UPLOAD:I = 0xe

.field public static final FILL_BLANK:I = 0x3

.field public static final HTML_IMAGE_SCREEN_PADDING:I = 0x28

.field public static final MATRIX_CHECKBOX:I = 0xd

.field public static final MATRIX_RADIO:I = 0xc

.field public static final MATRIX_SCALE:I = 0x4

.field public static final NPS_SCALE:I = 0x9

.field public static final PAGINATOR:I = 0x6

.field public static final RADIO:I = 0x1

.field public static final REGULAR_SCALE:I = 0x8

.field public static final SORT:I = 0xa

.field public static final TITLE:I = 0x0

.field public static final WEIGHT:I = 0xb


# instance fields
.field private final QUESTIONNAIRE_SELECT_FILE_REQUEST_STORAGE:I

.field private final context:Landroid/content/Context;

.field private currentFileUploadBean:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

.field private currentFileUploadPosition:I

.field private currentIndex:I

.field private displayQuestionNumber:Z

.field private displayQuestionTag:Z

.field private final editTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private finalSubmitJsonData:Lorg/json/JSONObject;

.field private finalSubmitJsonDataWithPage:Lorg/json/JSONObject;

.field private final getMultipleContents:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;

.field private mFocusPosition:I

.field private maxCountDownTime:I

.field private maxCountDownTimer:Landroid/os/CountDownTimer;

.field private minCountDownTime:I

.field private minCountDownTimer:Landroid/os/CountDownTimer;

.field private questionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final questionnaireId:Ljava/lang/String;

.field private questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;",
            ">;"
        }
    .end annotation
.end field

.field private startTimestamp:J

.field private totalPageNumber:I

.field private final txtMaxFillSecond:Landroid/widget/TextView;

.field private final weightEditTextListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;>;"
        }
    .end annotation
.end field

.field private final weightSeekBarListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SeekBar;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DxRilTTeEJMQMvZCqM00chRVtis(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NxUZCIO6hNEyQjLOTQa8SVIGxEY(Landroid/widget/RadioButton;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hPpsPQs6t_d2pLgEPitC9M_Urjg(Landroid/widget/CheckBox;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;Landroid/widget/TextView;ILandroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;",
            "Landroid/widget/TextView;",
            "I",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->mFocusPosition:I

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->editTextList:Ljava/util/List;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->weightEditTextListMap:Ljava/util/HashMap;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->weightSeekBarListMap:Ljava/util/HashMap;

    .line 168
    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 169
    iget-object p1, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->questions:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->questions:Ljava/util/List;

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    goto :goto_0

    .line 172
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    .line 173
    :goto_0
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questionMap:Ljava/util/Map;

    if-nez p1, :cond_1

    .line 174
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questionMap:Ljava/util/Map;

    .line 175
    :cond_1
    iput-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->txtMaxFillSecond:Landroid/widget/TextView;

    .line 176
    iput p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->QUESTIONNAIRE_SELECT_FILE_REQUEST_STORAGE:I

    .line 177
    iput-object p5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getMultipleContents:Landroidx/activity/result/ActivityResultLauncher;

    .line 178
    iput-object p6, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questionnaireId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->weightSeekBarListMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->weightEditTextListMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->startTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Lorg/json/JSONObject;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->finalSubmitJsonData:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->listener:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->buildMediaInfo(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/content/Context;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Z)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->resetButtonNormalState(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->txtMaxFillSecond:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Landroid/os/CountDownTimer;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->maxCountDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$502(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->maxCountDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Ljava/util/List;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)Z
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->saveCurrentPageData()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->submitDataOrNextPage(Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;)V

    return-void
.end method

.method static synthetic access$900(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;ILcom/tgs/aics/bean/questionnaire/FileUploadBean;ILcom/tgs/aics/ui/dialog/LoadingDialog;Ljava/util/ArrayList;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;)V
    .locals 0

    .line 113
    invoke-direct/range {p0 .. p6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->fileUpload(ILcom/tgs/aics/bean/questionnaire/FileUploadBean;ILcom/tgs/aics/ui/dialog/LoadingDialog;Ljava/util/ArrayList;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;)V

    return-void
.end method

.method private addCheckboxOptionLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;",
            "Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;",
            "I",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2061
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2062
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 2063
    iget-boolean v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->isHidden:Z

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->isOptionRelationHidden(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 2066
    :cond_0
    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_questionnaire_checkbox_layout"

    invoke-static {v2, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2067
    invoke-direct {p0, v2, v1, p2, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->checkboxTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2068
    iget-object v1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addMatrixCheckBoxOptionLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;I)V
    .locals 32

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 1571
    iget-object v0, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsLayout:Ljava/lang/String;

    const-string v1, "vertical"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 1572
    iget-object v12, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    .line 1573
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1575
    iget-object v0, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    const/4 v14, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v11, :cond_0

    .line 1576
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 1578
    iget-object v0, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;

    .line 1579
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;->rows:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/2addr v1, v14

    goto :goto_0

    .line 1586
    :cond_0
    iget-object v0, v9, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    iget-object v1, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_options_root_layout_scroll"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/HorizontalScrollView;

    .line 1587
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_options_root_layout_scroll_center"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 1588
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1589
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_matrix_raido_title"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1590
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1592
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1597
    :cond_1
    iget-object v1, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    check-cast v1, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    iget-object v1, v1, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    .line 1598
    invoke-static {v2}, Lcom/tgs/aics/utils/Utils;->dp2px(F)I

    move-result v2

    .line 1600
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    .line 1601
    iget-object v4, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1602
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1603
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_2

    .line 1606
    iget-object v3, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1607
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    :cond_2
    move/from16 v31, v4

    move v4, v3

    move/from16 v3, v31

    sub-int/2addr v1, v2

    .line 1611
    div-int/2addr v1, v3

    const/16 v2, 0xc8

    .line 1612
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_4

    .line 1615
    new-instance v5, Landroid/widget/TextView;

    move-object/from16 v20, v7

    iget-object v7, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-nez v11, :cond_3

    .line 1617
    iget-object v7, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    .line 1618
    iget-object v7, v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->title:Ljava/lang/String;

    iget-object v9, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    move-object/from16 v21, v14

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v14

    move/from16 v23, v3

    move-object/from16 v22, v15

    const/4 v3, 0x0

    const/16 v15, 0x28

    invoke-static {v7, v9, v3, v14, v15}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    move/from16 v23, v3

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    const/4 v3, 0x0

    const/16 v15, 0x28

    .line 1620
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 1621
    iget-object v7, v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->title:Ljava/lang/String;

    iget-object v9, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v14

    invoke-static {v7, v9, v3, v14, v15}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/high16 v3, 0x41800000    # 16.0f

    const/4 v7, 0x2

    .line 1623
    invoke-virtual {v5, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x4

    .line 1624
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1625
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v3, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1629
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1630
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v9, p1

    move-object/from16 v7, v20

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    move/from16 v3, v23

    goto :goto_1

    :cond_4
    move/from16 v23, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    const/4 v7, 0x2

    const/4 v9, -0x2

    .line 1633
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v4, :cond_c

    .line 1638
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1639
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 1640
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1641
    iget-object v1, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;->name:Ljava/lang/String;

    .line 1642
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1643
    invoke-direct {v8, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->buildGroupNameView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1648
    :cond_5
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_matrix_radio_options"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1650
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_matrix_radio_options_title"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v11, :cond_6

    .line 1651
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->title:Ljava/lang/String;

    goto :goto_4

    :cond_6
    iget-object v1, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->title:Ljava/lang/String;

    :goto_4
    iget-object v3, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    const/16 v7, 0x28

    const/4 v9, 0x0

    invoke-static {v1, v3, v9, v5, v7}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1653
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_matrix_radio_options_layout"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    move/from16 v3, v23

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_b

    if-eqz v11, :cond_7

    move v0, v1

    goto :goto_6

    :cond_7
    move v0, v14

    :goto_6
    if-eqz v11, :cond_8

    move/from16 v16, v14

    goto :goto_7

    :cond_8
    move/from16 v16, v1

    .line 1659
    :goto_7
    new-instance v9, Landroid/widget/CheckBox;

    iget-object v7, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 1660
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1661
    new-instance v7, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda4;

    move/from16 v24, v11

    move v11, v0

    move-object v0, v7

    move/from16 v25, v1

    move-object/from16 v1, p0

    move-object/from16 v26, v13

    move v13, v2

    move-object v2, v12

    move/from16 v27, v3

    move-object/from16 v3, p2

    move/from16 v28, v4

    move/from16 v4, v16

    move/from16 v29, v14

    move-object/from16 v17, v15

    const/4 v15, -0x2

    const/16 v18, 0x28

    move-object v14, v5

    move-object/from16 v5, v22

    move-object/from16 v30, v6

    move-object v6, v9

    move-object v15, v7

    move-object/from16 v19, v20

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Ljava/util/List;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;ILjava/util/List;Landroid/widget/CheckBox;I)V

    invoke-virtual {v9, v15}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1709
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1710
    iget-object v1, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    move/from16 v2, v16

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 1711
    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_8

    :cond_9
    const/4 v0, 0x1

    .line 1712
    :goto_8
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v13, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 1713
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1714
    invoke-virtual {v9, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1715
    iget-object v1, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v9, v4, v1, v4, v3}, Landroid/widget/CheckBox;->setPadding(IIII)V

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 1716
    invoke-virtual {v9, v3, v1}, Landroid/widget/CheckBox;->setTextSize(IF)V

    .line 1717
    iget-object v1, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v5, "tgs_aics_questionnaire_checkbox_selector"

    invoke-static {v1, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v9, v5, v1, v5, v5}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v1, 0x106000d

    .line 1718
    invoke-virtual {v9, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 1719
    invoke-virtual {v14, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1722
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v11, :cond_a

    .line 1723
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1724
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v22

    .line 1725
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    move-object/from16 v6, v22

    .line 1727
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v1, v25, 0x1

    move-object v9, v5

    move-object/from16 v22, v6

    move v2, v13

    move-object v5, v14

    move-object/from16 v15, v17

    move/from16 v7, v18

    move-object/from16 v20, v19

    move/from16 v11, v24

    move-object/from16 v13, v26

    move/from16 v3, v27

    move/from16 v4, v28

    move/from16 v14, v29

    move-object/from16 v6, v30

    goto/16 :goto_5

    :cond_b
    move/from16 v27, v3

    move/from16 v28, v4

    move-object/from16 v30, v6

    move/from16 v18, v7

    move-object v5, v9

    move/from16 v24, v11

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object v1, v15

    move-object/from16 v19, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    const/4 v0, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    move v13, v2

    const/4 v2, -0x2

    .line 1731
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v30

    .line 1732
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v14, v29, 0x1

    move-object v6, v9

    move/from16 v23, v27

    move/from16 v4, v28

    move v9, v2

    move v7, v3

    move v2, v13

    move-object/from16 v13, v26

    goto/16 :goto_3

    :cond_c
    move-object/from16 v1, p1

    move v13, v2

    move-object/from16 v19, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    .line 1737
    iget-object v9, v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->itemView:Landroid/view/View;

    new-instance v11, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda5;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v4, v6

    move-object/from16 v5, v19

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;Ljava/util/List;Ljava/util/List;Landroid/widget/HorizontalScrollView;I)V

    const-wide/16 v0, 0x64

    invoke-virtual {v9, v11, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private addMatrixRadioOptionLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;I)V
    .locals 32

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 1416
    iget-object v0, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionsLayout:Ljava/lang/String;

    const-string v1, "vertical"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 1417
    iget-object v12, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    .line 1418
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1420
    iget-object v0, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    const/4 v14, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v11, :cond_0

    .line 1421
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 1423
    iget-object v0, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;

    .line 1424
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;->rows:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/2addr v1, v14

    goto :goto_0

    .line 1431
    :cond_0
    iget-object v0, v9, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    iget-object v1, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_options_root_layout_scroll"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/HorizontalScrollView;

    .line 1432
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_options_root_layout_scroll_center"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 1434
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1435
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1439
    :cond_1
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_matrix_raido_title"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1440
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1441
    iget-object v1, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    check-cast v1, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    iget-object v1, v1, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    .line 1443
    invoke-static {v2}, Lcom/tgs/aics/utils/Utils;->dp2px(F)I

    move-result v2

    .line 1445
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    .line 1446
    iget-object v4, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1447
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1448
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_2

    .line 1451
    iget-object v3, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1452
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    :cond_2
    move/from16 v31, v4

    move v4, v3

    move/from16 v3, v31

    sub-int/2addr v1, v2

    .line 1456
    div-int/2addr v1, v3

    const/16 v2, 0xc8

    .line 1457
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_4

    .line 1460
    new-instance v5, Landroid/widget/TextView;

    move-object/from16 v20, v7

    iget-object v7, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-nez v11, :cond_3

    .line 1462
    iget-object v7, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    .line 1463
    iget-object v7, v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->title:Ljava/lang/String;

    iget-object v9, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    move-object/from16 v21, v14

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v14

    move/from16 v23, v3

    move-object/from16 v22, v15

    const/4 v3, 0x0

    const/16 v15, 0x28

    invoke-static {v7, v9, v3, v14, v15}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    move/from16 v23, v3

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    const/4 v3, 0x0

    const/16 v15, 0x28

    .line 1465
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 1466
    iget-object v7, v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->title:Ljava/lang/String;

    iget-object v9, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v14

    invoke-static {v7, v9, v3, v14, v15}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/high16 v3, 0x41800000    # 16.0f

    const/4 v7, 0x2

    .line 1468
    invoke-virtual {v5, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x4

    .line 1469
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1470
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v3, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1474
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1475
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v9, p1

    move-object/from16 v7, v20

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    move/from16 v3, v23

    goto :goto_1

    :cond_4
    move/from16 v23, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    const/4 v7, 0x2

    const/4 v9, -0x2

    .line 1478
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v4, :cond_c

    .line 1483
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1484
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 1485
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1486
    iget-object v1, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionGroup;->name:Ljava/lang/String;

    .line 1487
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1488
    invoke-direct {v8, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->buildGroupNameView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1493
    :cond_5
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_matrix_radio_options"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1495
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_matrix_radio_options_title"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v11, :cond_6

    .line 1496
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->title:Ljava/lang/String;

    goto :goto_4

    :cond_6
    iget-object v1, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->title:Ljava/lang/String;

    :goto_4
    iget-object v3, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    const/16 v7, 0x28

    const/4 v9, 0x0

    invoke-static {v1, v3, v9, v5, v7}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1498
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_matrix_radio_options_layout"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1499
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    move/from16 v3, v23

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_b

    if-eqz v11, :cond_7

    move v0, v1

    goto :goto_6

    :cond_7
    move v0, v14

    :goto_6
    if-eqz v11, :cond_8

    move/from16 v16, v14

    goto :goto_7

    :cond_8
    move/from16 v16, v1

    .line 1504
    :goto_7
    new-instance v9, Landroid/widget/RadioButton;

    iget-object v7, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v7}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 1505
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 1506
    new-instance v7, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;

    move/from16 v24, v11

    move v11, v0

    move-object v0, v7

    move/from16 v25, v1

    move-object/from16 v1, p0

    move-object/from16 v26, v13

    move v13, v2

    move-object/from16 v2, v22

    move/from16 v27, v3

    move-object v3, v12

    move/from16 v28, v4

    move-object/from16 v4, p2

    move/from16 v29, v14

    move-object/from16 v17, v15

    const/4 v15, -0x2

    const/16 v18, 0x28

    move-object v14, v5

    move/from16 v5, v16

    move-object/from16 v30, v6

    move-object v6, v9

    move-object v15, v7

    move-object/from16 v19, v20

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Ljava/util/List;Ljava/util/List;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;ILandroid/widget/RadioButton;I)V

    invoke-virtual {v9, v15}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1529
    iget-object v0, v10, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 1530
    invoke-virtual {v9, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_8

    :cond_9
    const/4 v0, 0x1

    .line 1531
    :goto_8
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v13, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 1532
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1533
    invoke-virtual {v9, v1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1534
    iget-object v1, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v9, v4, v1, v4, v3}, Landroid/widget/RadioButton;->setPadding(IIII)V

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 1535
    invoke-virtual {v9, v3, v1}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 1536
    iget-object v1, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v5, "tgs_aics_questionnaire_radio_selector"

    invoke-static {v1, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v9, v5, v1, v5, v5}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v1, 0x106000d

    .line 1537
    invoke-virtual {v9, v1}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 1538
    invoke-virtual {v14, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1541
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v11, :cond_a

    .line 1542
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1543
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v22

    .line 1544
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    move-object/from16 v6, v22

    .line 1546
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v1, v25, 0x1

    move-object v9, v5

    move-object/from16 v22, v6

    move v2, v13

    move-object v5, v14

    move-object/from16 v15, v17

    move/from16 v7, v18

    move-object/from16 v20, v19

    move/from16 v11, v24

    move-object/from16 v13, v26

    move/from16 v3, v27

    move/from16 v4, v28

    move/from16 v14, v29

    move-object/from16 v6, v30

    goto/16 :goto_5

    :cond_b
    move/from16 v27, v3

    move/from16 v28, v4

    move-object/from16 v30, v6

    move/from16 v18, v7

    move-object v5, v9

    move/from16 v24, v11

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object v1, v15

    move-object/from16 v19, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    const/4 v0, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    move v13, v2

    const/4 v2, -0x2

    .line 1550
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v30

    .line 1551
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v14, v29, 0x1

    move-object v6, v9

    move/from16 v23, v27

    move/from16 v4, v28

    move v9, v2

    move v7, v3

    move v2, v13

    move-object/from16 v13, v26

    goto/16 :goto_3

    :cond_c
    move-object/from16 v1, p1

    move v13, v2

    move-object/from16 v19, v20

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    .line 1556
    iget-object v9, v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->itemView:Landroid/view/View;

    new-instance v11, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda7;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v4, v6

    move-object/from16 v5, v19

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;Ljava/util/List;Ljava/util/List;Landroid/widget/HorizontalScrollView;I)V

    const-wide/16 v0, 0x64

    invoke-virtual {v9, v11, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private addMatrixScaleOtherLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;",
            "Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;",
            "I",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;",
            ">;)V"
        }
    .end annotation

    .line 2358
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    .line 2359
    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->scoreDisplayType:Ljava/lang/String;

    const-string v2, "nps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2360
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_questionnaire_item_matrix_scale_nps"

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2361
    invoke-direct {p0, v1, v0, p3, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->matrixScaleNpsTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;ILcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2362
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2364
    :cond_1
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_questionnaire_item_matrix_scale_other"

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2365
    invoke-direct {p0, v1, v0, p3, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->matrixScaleOtherTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;ILcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2366
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addMatrixScaleRadioLayout(Ljava/util/List;ILjava/util/List;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;ILandroid/widget/LinearLayout;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;",
            ">;",
            "Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;",
            "I",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 2373
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    .line 2374
    iget-object v4, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v5, "tgs_aics_questionnaire_item_matrix_scale_radio"

    invoke-static {v4, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2376
    iget-object v5, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v7, "tgs_aics_questionnaire_item_matrix_scale_radio_desc_layout"

    invoke-static {v5, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 2377
    iget-object v7, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v8, "tgs_aics_questionnaire_item_matrix_scale_radio_group"

    invoke-static {v7, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    move/from16 v9, p2

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_2

    .line 2379
    new-instance v11, Landroid/widget/TextView;

    iget-object v12, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2380
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v12, 0x10

    .line 2381
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 2382
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    if-nez v10, :cond_0

    .line 2384
    iget-object v12, v3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->title:Ljava/lang/String;

    iget-object v13, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/widget/TextView;->getTextSize()F

    move-result v15

    const/16 v8, 0x28

    invoke-static {v12, v13, v6, v15, v8}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/high16 v8, 0x41800000    # 16.0f

    const/4 v12, 0x2

    .line 2385
    invoke-virtual {v11, v12, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2386
    iget-object v8, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v8, v13}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v8

    iget-object v15, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v15, v13}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v15

    iget-object v6, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v6, v13}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v6

    iget-object v12, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v12, v13}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v11, v8, v15, v6, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2387
    iget-object v6, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v12, "normalBlack"

    invoke-static {v8, v12}, Lcom/tgs/aics/utils/ResourceUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2388
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2390
    new-instance v6, Landroid/widget/RadioButton;

    iget-object v8, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 2391
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;

    iget-object v8, v8, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;->id:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 2392
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;

    iget-object v8, v8, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;->id:Ljava/lang/String;

    iget-object v11, v3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    .line 2393
    invoke-virtual {v6, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2394
    :cond_1
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-direct {v8, v12, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v11, 0x11

    .line 2395
    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2396
    invoke-virtual {v6, v8}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2397
    iget-object v8, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v8, v13}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v8

    iget-object v11, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v11, v13}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v6, v12, v8, v12, v11}, Landroid/widget/RadioButton;->setPadding(IIII)V

    const/4 v8, 0x0

    const/4 v11, 0x2

    .line 2398
    invoke-virtual {v6, v11, v8}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 2399
    iget-object v8, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v11, "tgs_aics_questionnaire_radio_selector"

    invoke-static {v8, v11}, Lcom/tgs/aics/utils/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v6, v11, v8, v11, v11}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v8, 0x106000d

    .line 2400
    invoke-virtual {v6, v8}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 2401
    invoke-virtual {v7, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v10, v10, 0x1

    move-object v6, v11

    goto/16 :goto_1

    .line 2403
    :cond_2
    new-instance v5, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda27;

    move-object/from16 v6, p4

    move/from16 v8, p5

    invoke-direct {v5, v0, v3, v6, v8}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda27;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;I)V

    invoke-virtual {v7, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    move-object/from16 v3, p6

    .line 2410
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private addRadioOptionLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;",
            "Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;",
            "I",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1202
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1203
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;

    .line 1204
    iget-boolean v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->isHidden:Z

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->isOptionRelationHidden(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1207
    :cond_0
    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_questionnaire_radio_button_layout"

    invoke-static {v2, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1208
    invoke-direct {p0, v2, v1, p2, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->radioTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1209
    iget-object v1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addSortOptionLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;I)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_sort_layout"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 770
    invoke-direct {p0, v0, p2, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->sortTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 771
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private addWeightOptionLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;",
            "Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;",
            "I",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1214
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1215
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    .line 1216
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_item_weight_row"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1217
    iget-object v3, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->weightTipMsg:Landroid/widget/TextView;

    move-object v2, p0

    move-object v4, v1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->weightTypeInitView(Landroid/widget/TextView;Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1218
    iget-object v2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildGroupNameView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    .line 1750
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1751
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "#e8e8e8"

    .line 1752
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1753
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 1754
    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/tgs/aics/utils/Utils;->dp2px(F)I

    move-result v3

    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->dp2px(F)I

    move-result p1

    invoke-static {v2}, Lcom/tgs/aics/utils/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 p1, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    .line 1755
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p1, "#808080"

    .line 1756
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
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

    .line 3572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3573
    new-instance v1, Lcom/tgs/aics/bean/MediaInfo;

    invoke-direct {v1}, Lcom/tgs/aics/bean/MediaInfo;-><init>()V

    .line 3574
    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/MediaInfo;->setUniqueId(Ljava/lang/String;)V

    .line 3575
    invoke-virtual {v1, p2}, Lcom/tgs/aics/bean/MediaInfo;->setUrl(Ljava/lang/String;)V

    .line 3576
    invoke-virtual {v1, p3}, Lcom/tgs/aics/bean/MediaInfo;->setVideo(Z)V

    .line 3577
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private buildRegularScaleNPS(Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;I)Landroid/view/View;
    .locals 4

    .line 3185
    new-instance v0, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;-><init>(Landroid/content/Context;)V

    .line 3186
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3188
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    .line 3189
    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->value:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3191
    :cond_0
    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setScoreList(Ljava/util/List;)V

    .line 3192
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setMax(I)V

    .line 3193
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->currentValue:Ljava/lang/Object;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 3194
    :goto_1
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3195
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->currentValue:Ljava/lang/Object;

    iget-object v3, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3196
    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setProgress(I)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3201
    :cond_2
    :goto_2
    new-instance v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda8;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;I)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setOnSeekBarChangeListener(Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$OnRatingSeekBarChangeListener;)V

    return-object v0
.end method

.method private buildRegularScaleNumberRadio(Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;I)Landroid/view/View;
    .locals 11

    .line 2991
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 2992
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 2993
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    move v2, v1

    .line 2994
    :goto_0
    iget-object v4, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 2995
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2996
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x11

    .line 2997
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2998
    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 3000
    new-instance v6, Lcom/tgs/aics/widget/CustomRadioButton;

    iget-object v7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/tgs/aics/widget/CustomRadioButton;-><init>(Landroid/content/Context;)V

    .line 3001
    iget-object v7, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    iget-object v7, v7, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/tgs/aics/widget/CustomRadioButton;->setTag(Ljava/lang/Object;)V

    .line 3002
    iget-object v7, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    iget-object v7, v7, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->id:Ljava/lang/String;

    iget-object v8, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tgs/aics/widget/CustomRadioButton;->setChecked(Z)V

    .line 3003
    invoke-virtual {v6}, Lcom/tgs/aics/widget/CustomRadioButton;->setSingleLine()V

    .line 3004
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v8, v9}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v8

    iget-object v10, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v10, v9}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3005
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3006
    invoke-virtual {v6, v7}, Lcom/tgs/aics/widget/CustomRadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3007
    iget-object v7, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    iget-object v7, v7, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->value:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/tgs/aics/widget/CustomRadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 3008
    iget-object v7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v9, "tgs_aics_questionnaire_number_radio_text_selector"

    const-string v10, "drawable"

    invoke-static {v8, v9, v10}, Lcom/tgs/aics/utils/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tgs/aics/widget/CustomRadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v7, 0x2

    const/high16 v8, 0x41600000    # 14.0f

    .line 3009
    invoke-virtual {v6, v7, v8}, Lcom/tgs/aics/widget/CustomRadioButton;->setTextSize(IF)V

    const v7, 0x106000d

    .line 3010
    invoke-virtual {v6, v7}, Lcom/tgs/aics/widget/CustomRadioButton;->setButtonDrawable(I)V

    .line 3011
    iget-object v7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v8, "tgs_aics_questionnaire_number_radio_background_selector"

    invoke-static {v7, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tgs/aics/widget/CustomRadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3012
    invoke-virtual {v6, v5}, Lcom/tgs/aics/widget/CustomRadioButton;->setGravity(I)V

    .line 3013
    new-instance v5, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda32;

    invoke-direct {v5, p0, p1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda32;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;I)V

    invoke-virtual {v6, v5}, Lcom/tgs/aics/widget/CustomRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3019
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method

.method private buildRegularScaleOther(Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;I)Landroid/view/View;
    .locals 6

    .line 3026
    iget-boolean v0, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->isHalfScore:Z

    .line 3027
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 3029
    new-instance v2, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;

    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;-><init>(Landroid/content/Context;)V

    .line 3030
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3031
    iget-object v3, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->scoreDisplayType:Ljava/lang/String;

    const-string v4, "star"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3032
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v4, "tgs_aics_icon_star_uncheck"

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3033
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v4, "tgs_aics_icon_star_checked"

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setFilledDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3034
    :cond_0
    iget-object v3, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->scoreDisplayType:Ljava/lang/String;

    const-string v4, "thumb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3035
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v4, "tgs_aics_icon_thumb_uncheck"

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3036
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v4, "tgs_aics_icon_thumb_checked"

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setFilledDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3037
    :cond_1
    iget-object v3, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->scoreDisplayType:Ljava/lang/String;

    const-string v4, "heart"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3038
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v4, "tgs_aics_icon_heart_uncheck"

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3039
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v4, "tgs_aics_icon_heart_checked"

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setFilledDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 3041
    invoke-virtual {v2, v3}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setStarPadding(I)V

    .line 3042
    invoke-virtual {v2, v3}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setClearRatingEnabled(Z)V

    .line 3043
    invoke-virtual {v2, v0}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setHalf(Z)V

    .line 3044
    invoke-virtual {v2, v1}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setNumStars(I)V

    .line 3046
    iget-object v4, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->currentValue:Ljava/lang/Object;

    if-eqz v4, :cond_5

    :goto_1
    if-ge v3, v1, :cond_5

    .line 3048
    iget-object v4, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->currentValue:Ljava/lang/Object;

    iget-object v5, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    add-int/lit8 v3, v3, 0x1

    int-to-float v0, v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 3050
    invoke-virtual {v2, v0}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setRating(F)V

    .line 3051
    invoke-virtual {v2, v0}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->publicFillRatingBar(F)V

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    int-to-float v0, v3

    .line 3053
    invoke-virtual {v2, v0}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setRating(F)V

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3059
    :cond_5
    :goto_2
    new-instance v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda10;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;I)V

    invoke-virtual {v2, v0}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setOnRatingChangeListener(Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar$OnRatingChangeListener;)V

    return-object v2
.end method

.method private buildRegularScaleRadioGroup(Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;I)Landroid/view/View;
    .locals 8

    .line 3216
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 3217
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 3218
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v2, v1

    .line 3219
    :goto_0
    iget-object v3, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3220
    new-instance v3, Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 3221
    iget-object v5, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->id:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 3222
    iget-object v5, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->id:Ljava/lang/String;

    iget-object v6, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 3223
    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3224
    :cond_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v6, 0x11

    .line 3225
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3226
    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3227
    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v5, v6}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v5

    iget-object v6, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v6, v7}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v1, v5, v1, v6}, Landroid/widget/RadioButton;->setPadding(IIII)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 3228
    invoke-virtual {v3, v5, v6}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 3229
    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v6, "tgs_aics_questionnaire_radio_selector"

    invoke-static {v5, v6}, Lcom/tgs/aics/utils/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5, v6, v6}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v5, 0x106000d

    .line 3230
    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 3231
    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3233
    :cond_1
    new-instance v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda24;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-object v0
.end method

.method private buildScoreList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2351
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;

    .line 2352
    iget v1, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;->score:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private canLoadNextPageOrSubmit()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    .line 2874
    :goto_0
    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 2875
    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 2876
    iget-boolean v6, v5, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isHidden:Z

    if-nez v6, :cond_3

    iget-boolean v6, v5, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isRelationHidden:Z

    if-eqz v6, :cond_0

    goto :goto_1

    .line 2879
    :cond_0
    iget-object v6, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isCanSubmit(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2881
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataSetChanged()V

    if-nez v4, :cond_2

    .line 2884
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->listener:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;

    if-eqz v3, :cond_1

    .line 2885
    invoke-interface {v3, v2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;->onSmoothToPosition(I)V

    :cond_1
    move v4, v0

    :cond_2
    move v3, v1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private checkboxOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V
    .locals 4

    .line 2034
    check-cast p2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    .line 2037
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    iget-boolean v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 2038
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    invoke-direct {p0, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getCheckboxQuoteOptions(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    .line 2039
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2041
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2044
    :goto_0
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroups:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2045
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2046
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;

    .line 2047
    iget-object v2, p2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroupsSetting:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;

    iget-boolean v2, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->showGroupName:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2048
    iget-object v2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->buildGroupNameView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2050
    :cond_1
    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->options:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->addCheckboxOptionLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;ILjava/util/List;)V

    goto :goto_1

    .line 2052
    :cond_2
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2053
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2054
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->addCheckboxOptionLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;ILjava/util/List;)V

    goto :goto_2

    .line 2056
    :cond_3
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_4
    :goto_2
    return-void
.end method

.method private checkboxOptionGroupsLogic(Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;)V
    .locals 7

    .line 4444
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4445
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;

    .line 4446
    iget-object v3, v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->options:Ljava/util/List;

    if-nez v3, :cond_1

    .line 4447
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->options:Ljava/util/List;

    .line 4448
    :cond_1
    iget-object v3, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 4449
    iget-object v5, v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->optionIds:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4450
    iget-object v5, v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->options:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4451
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4454
    :cond_3
    iget-boolean v3, v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->isRandom:Z

    if-eqz v3, :cond_0

    .line 4455
    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->options:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    goto :goto_0

    .line 4457
    :cond_4
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroupsSetting:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;

    iget-boolean v1, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->isRandom:Z

    if-eqz v1, :cond_5

    .line 4458
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroups:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 4459
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 4461
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 4463
    new-instance v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;

    invoke-direct {v2}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;-><init>()V

    .line 4465
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4466
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4467
    iput-object v3, v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->options:Ljava/util/List;

    .line 4469
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-void
.end method

.method private checkboxOptionsRandomLogic(Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;)V
    .locals 6

    .line 4316
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->type:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandomType;->all:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4318
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    goto/16 :goto_3

    .line 4319
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->type:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandomType;->partial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4321
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->randomIds:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->randomIds:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 4323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4324
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    if-nez v2, :cond_1

    goto :goto_0

    .line 4327
    :cond_1
    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4329
    :cond_2
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->randomIds:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->findShuffleIndexFromList(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4332
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4333
    iget-object v4, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4336
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 4338
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4339
    iget-object v3, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method private checkboxTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;I)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v0, p1

    move-object/from16 v4, p2

    move-object/from16 v2, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    if-nez v4, :cond_0

    goto/16 :goto_8

    .line 3585
    :cond_0
    iget-object v3, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v5, "tgs_aics_options_checkbox_image_layout"

    invoke-static {v3, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 3587
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->optionImages:Ljava/util/List;

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->optionImages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 3588
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->optionImages:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3589
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 3590
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3591
    iget-object v3, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v9, "tgs_aics_options_checkbox_image"

    invoke-static {v3, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3592
    iget-object v9, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v11, "tgs_aics_white_image_placeholder"

    invoke-static {v10, v11}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v9

    check-cast v9, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v9, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 3593
    iget-object v9, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v10, "tgs_aics_options_checkbox_image_enlarge"

    invoke-static {v9, v10}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 3594
    new-instance v10, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda30;

    invoke-direct {v10, p0, v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda30;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 3598
    :cond_1
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3601
    :cond_2
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    move-object v3, v7

    .line 3604
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3605
    iget-object v9, v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v9, v9, Ljava/util/List;

    if-eqz v9, :cond_4

    .line 3606
    iget-object v9, v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 3607
    instance-of v11, v10, Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 3608
    check-cast v10, Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3613
    :cond_4
    iget-object v9, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v10, "tgs_aics_options_checkbox"

    invoke-static {v9, v10}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 3614
    iget-object v10, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 3615
    iget-object v10, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_5

    .line 3616
    invoke-virtual {v9, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_5
    if-eqz v3, :cond_6

    .line 3619
    new-instance v10, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda31;

    invoke-direct {v10, v9}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda31;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3621
    :cond_6
    iget-object v3, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v10, "tgs_aics_options_title"

    invoke-static {v3, v10}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3622
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3623
    iget-object v10, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->label:Ljava/lang/String;

    iget-object v12, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v13

    const/16 v14, 0x28

    invoke-static {v10, v12, v7, v13, v14}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3624
    new-instance v10, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda33;

    invoke-direct {v10, v9}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda33;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3626
    iget-object v3, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v10, "tgs_aics_options_checkbox_description"

    invoke-static {v3, v10}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3627
    iget-object v10, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->optionDescription:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    move v10, v8

    goto :goto_3

    :cond_7
    move v10, v1

    :goto_3
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3628
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3629
    iget-object v10, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->optionDescription:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 3630
    iget-object v10, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->optionDescription:Ljava/lang/String;

    iget-object v12, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v13

    invoke-static {v10, v12, v7, v13, v14}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3631
    new-instance v7, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda34;

    invoke-direct {v7, v9}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda34;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3634
    :cond_8
    iget-object v3, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v7, "tgs_aics_inner_question_layout"

    invoke-static {v3, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 3635
    iget-object v7, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    if-eqz v7, :cond_e

    .line 3636
    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 3637
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3638
    iget-object v3, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v10, "tgs_aics_is_must"

    invoke-static {v3, v10}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3639
    iget-boolean v10, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->isRequired:Z

    if-eqz v10, :cond_9

    move v10, v1

    goto :goto_4

    :cond_9
    const/4 v10, 0x4

    :goto_4
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3641
    iget-object v3, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v10, "tgs_aics_inner_question_edittext"

    invoke-static {v3, v10}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 3642
    iget-object v10, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3643
    new-instance v10, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$12;

    invoke-direct {v10, p0, v7, v3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$12;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;Landroid/widget/EditText;)V

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3657
    iget-object v10, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v12, "tgs_aics_inner_question_spinner"

    invoke-static {v10, v12}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 3658
    iget-object v10, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->type:Ljava/lang/String;

    sget-object v12, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionFormType;->select:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 3659
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3660
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 3661
    new-instance v3, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$13;

    invoke-direct {v3, p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$13;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3672
    iget-object v3, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->option:Ljava/util/List;

    if-eqz v3, :cond_b

    iget-object v3, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->option:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 3673
    iget-object v3, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->option:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 3674
    :goto_5
    iget-object v8, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->option:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_a

    .line 3675
    iget-object v8, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->option:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm$Option;

    iget-object v8, v8, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm$Option;->label:Ljava/lang/String;

    aput-object v8, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3677
    :cond_a
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v7, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const v8, 0x1090008

    invoke-direct {v1, v7, v8, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v3, 0x1090009

    .line 3678
    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 3679
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_7

    .line 3681
    :cond_b
    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_7

    .line 3683
    :cond_c
    iget-object v10, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->type:Ljava/lang/String;

    sget-object v12, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionFormType;->input:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 3684
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3685
    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 3686
    iget-object v0, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->placeholder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_redemption_placeholder"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_d
    iget-object v0, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->placeholder:Ljava/lang/String;

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 3689
    :cond_e
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3692
    :cond_f
    :goto_7
    new-instance v7, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda35;

    move-object v0, v7

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v3, v5

    move-object/from16 v4, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda35;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;Ljava/util/List;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;I)V

    invoke-virtual {v9, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return v11

    :cond_10
    :goto_8
    return v1
.end method

.method private commonDealWith(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V
    .locals 6

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 869
    :cond_0
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->paginator:Ljava/lang/String;

    .line 870
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->end:Ljava/lang/String;

    .line 871
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 874
    :cond_1
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->isRequiredSymbol:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 875
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->isRequiredSymbol:Landroid/widget/TextView;

    iget-boolean v2, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isRequired:Z

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 876
    :cond_3
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 877
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->title:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 878
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object v0

    new-instance v2, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda41;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda41;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;ILcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;)V

    invoke-virtual {v0, v2}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    .line 916
    :cond_4
    iget-object p3, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    const/16 v0, 0x8

    if-eqz p3, :cond_6

    .line 917
    iget-object p3, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 918
    iget-object p3, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 919
    iget-object p3, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->description:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 920
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object p3

    new-instance v2, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda42;

    invoke-direct {v2, p0, p2, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda42;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;)V

    invoke-virtual {p3, v2}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    .line 940
    :cond_6
    iget-object p3, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->titleConfig:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;

    if-eqz p3, :cond_7

    iget-object p3, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->titleConfig:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;

    iget-object p3, p3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;->video:Ljava/util/List;

    if-eqz p3, :cond_7

    iget-object p3, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->titleConfig:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;

    iget-object p3, p3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;->video:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_7

    .line 941
    iget-object p3, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 943
    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    .line 944
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 945
    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 946
    iget p3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, p3

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    mul-double/2addr v2, v4

    double-to-int p3, v2

    .line 949
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->videoCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 950
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 951
    iget-object p3, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->videoCoverView:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 953
    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->titleConfig:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;->video:Ljava/util/List;

    .line 954
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;->poster:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_gray_image_placeholder"

    .line 955
    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->videoCoverView:Landroid/widget/ImageView;

    .line 956
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 958
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->videoCoverView:Landroid/widget/ImageView;

    new-instance p3, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda43;

    invoke-direct {p3, p0, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda43;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 963
    :cond_7
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method private createNewOptions(Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;",
            ">;"
        }
    .end annotation

    .line 3900
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_8

    .line 3902
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 3903
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3904
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 3905
    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

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

    .line 3906
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3907
    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3911
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 3913
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3914
    iget-object v4, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->originalOptions:Ljava/util/List;

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

    .line 3915
    iget-object v6, v5, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3916
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3920
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3921
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->originalOptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 3922
    iget-object v4, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3923
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3926
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 3929
    :cond_7
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->originalOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    :goto_3
    return-object v0
.end method

.method private descriptionOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V
    .locals 0

    return-void
.end method

.method private endOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V
    .locals 0

    .line 2894
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->button:Landroid/widget/Button;

    new-instance p2, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda13;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private fileUpload(ILcom/tgs/aics/bean/questionnaire/FileUploadBean;ILcom/tgs/aics/ui/dialog/LoadingDialog;Ljava/util/ArrayList;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tgs/aics/bean/questionnaire/FileUploadBean;",
            "I",
            "Lcom/tgs/aics/ui/dialog/LoadingDialog;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    move-object v3, p2

    move v6, p3

    move-object/from16 v7, p4

    move-object/from16 v4, p5

    move-object/from16 v8, p6

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-eqz v7, :cond_1

    .line 2753
    invoke-virtual/range {p4 .. p4}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2755
    invoke-virtual/range {p4 .. p4}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->show()V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v7, :cond_2

    .line 2759
    iget-object v2, v3, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2760
    iget-object v5, v9, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v10, "tgs_aics_questionnaire_file_upload_doing_tips"

    invoke-static {v5, v10}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    sub-int v11, v2, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v1

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->setLoadingText(Ljava/lang/String;)V

    :cond_2
    if-ltz v6, :cond_3

    .line 2764
    iget-object v0, v3, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;

    .line 2765
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object v10

    new-instance v11, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda20;

    move-object v0, v11

    move-object v1, p0

    move-object v3, p2

    move-object/from16 v4, p5

    move v5, p1

    move v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda20;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;Lcom/tgs/aics/bean/questionnaire/FileUploadBean;Ljava/util/ArrayList;IILcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;)V

    invoke-virtual {v10, v11}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_4

    .line 2804
    invoke-virtual/range {p4 .. p4}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2805
    invoke-virtual/range {p4 .. p4}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dismiss()V

    .line 2807
    :cond_4
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 2809
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "http"

    .line 2810
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    if-nez v0, :cond_7

    .line 2816
    iget-object v0, v9, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_file_upload_fail_tips"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_7
    const-string v0, ","

    .line 2822
    invoke-static {v0, v4}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->currentValue:Ljava/lang/Object;

    if-eqz v8, :cond_8

    add-int/lit8 v0, p1, 0x1

    .line 2825
    invoke-interface {v8, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;->onFileUploadComplete(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method private fileUploadOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V
    .locals 3

    .line 571
    check-cast p2, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    .line 572
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 573
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_file_grid_layout"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 574
    invoke-direct {p0, v0, p2, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->fileUploadTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/FileUploadBean;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 575
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private fileUploadTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/FileUploadBean;I)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    const/4 v0, 0x0

    if-nez v7, :cond_0

    return v0

    .line 582
    :cond_0
    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isReverseLandscape:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x7

    .line 584
    :goto_1
    iget-object v2, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_file_upload_gird_view"

    invoke-static {v2, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/GridLayout;

    .line 585
    invoke-virtual {v8}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 586
    invoke-virtual {v8, v1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 587
    iget-object v9, v7, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;

    .line 588
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 589
    iget-object v2, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/tgs/aics/utils/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    iget-object v3, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    sget-boolean v4, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/tgs/aics/utils/ConstantUtil;->isReverseLandscape:Z

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v4, 0x42600000    # 56.0f

    goto :goto_3

    :cond_4
    :goto_2
    const/high16 v4, 0x42d40000    # 106.0f

    :goto_3
    invoke-static {v3, v4}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    .line 590
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 591
    iget-object v1, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v11, v1, v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 592
    iget v1, v7, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->maxFileCount:I

    const/4 v12, 0x0

    const-string v13, "tgs_aics_a_layout_file_select"

    if-lt v10, v1, :cond_5

    move v14, v0

    :goto_4
    if-ge v14, v10, :cond_7

    .line 594
    iget-object v0, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 595
    invoke-virtual {v15, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v14

    move-object v3, v9

    move/from16 v4, p3

    move-object/from16 v5, p2

    .line 597
    invoke-direct/range {v0 .. v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->setPicItemClick(Landroid/view/View;ILjava/util/ArrayList;ILcom/tgs/aics/bean/questionnaire/FileUploadBean;)V

    .line 598
    invoke-virtual {v8, v15}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_5
    move v14, v0

    :goto_5
    if-gt v14, v10, :cond_7

    if-ne v14, v10, :cond_6

    const/4 v0, -0x1

    move v2, v0

    goto :goto_6

    :cond_6
    move v2, v14

    .line 604
    :goto_6
    iget-object v0, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 605
    invoke-virtual {v15, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v3, v9

    move/from16 v4, p3

    move-object/from16 v5, p2

    .line 607
    invoke-direct/range {v0 .. v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->setPicItemClick(Landroid/view/View;ILjava/util/ArrayList;ILcom/tgs/aics/bean/questionnaire/FileUploadBean;)V

    .line 608
    invoke-virtual {v8, v15}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method private fillBlankOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V
    .locals 12

    .line 2178
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->editTextList:Ljava/util/List;

    iget-object v1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2180
    check-cast p2, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

    .line 2181
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_redemption_placeholder"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2182
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2183
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2184
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2185
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->etTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2187
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2188
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->etTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_please_select"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2190
    :goto_0
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    const-string v1, "textarea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2191
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    goto :goto_1

    .line 2193
    :cond_1
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 2194
    :goto_1
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 2195
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    new-instance v4, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda44;

    invoke-direct {v4, p0, p2, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda44;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2203
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2204
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    .line 2205
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    const-string v5, "yearMonth"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "date"

    const/16 v7, 0x8

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 2209
    :cond_2
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2210
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->etTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 2206
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2207
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->etTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2212
    :goto_3
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 2213
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2214
    iget-object v8, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    const/high16 v9, 0x42100000    # 36.0f

    invoke-static {v3, v9, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2215
    iget-object v8, p2, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x3

    const/4 v11, -0x1

    sparse-switch v9, :sswitch_data_0

    :goto_4
    move v2, v11

    goto/16 :goto_5

    :sswitch_0
    const-string v1, "integer"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move v2, v7

    goto :goto_5

    :sswitch_1
    const-string v1, "decimal"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x7

    goto :goto_5

    :sswitch_2
    const-string v1, "phone"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x6

    goto :goto_5

    :sswitch_3
    const-string v1, "email"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x5

    goto :goto_5

    :sswitch_4
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x4

    goto :goto_5

    :sswitch_5
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    move v2, v10

    goto :goto_5

    :sswitch_6
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x2

    goto :goto_5

    :sswitch_7
    const-string v1, "landline"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    move v2, v3

    goto :goto_5

    :sswitch_8
    const-string v1, "phoneOrLandline"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    :cond_c
    :goto_5
    const/16 v1, 0xa

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    .line 2223
    :pswitch_0
    iget-object p2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    const/16 p3, 0x1002

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_6

    .line 2226
    :pswitch_1
    iget-object p2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    const/16 p3, 0x3002

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_6

    .line 2248
    :pswitch_2
    iget-object p2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    const/16 p3, 0x20

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 2249
    iget-object p2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_icon_email"

    invoke-static {p3, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3, v4, v4, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2250
    iget-object p2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    goto :goto_6

    .line 2230
    :pswitch_3
    iget-object v1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->etTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda45;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda45;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2237
    iget-object p2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->etTextView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_icon_year_month_date"

    invoke-static {p3, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2238
    iget-object p2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->etTextView:Landroid/widget/TextView;

    const/16 p3, 0x14

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_6

    .line 2219
    :pswitch_4
    iget-object p2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    const p3, 0x20001

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 2220
    iget-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p3, 0x42d80000    # 108.0f

    invoke-static {v3, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_6

    .line 2243
    :pswitch_5
    iget-object p2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {p2, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 2244
    iget-object p2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_icon_phone"

    invoke-static {p3, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3, v4, v4, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2245
    iget-object p2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    .line 2253
    :goto_6
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x69e62490 -> :sswitch_8
        -0x605baba1 -> :sswitch_7
        -0x3bcc48c6 -> :sswitch_6
        -0x1d9ab7bd -> :sswitch_5
        0x2eefae -> :sswitch_4
        0x5c24b9c -> :sswitch_3
        0x65b3d6e -> :sswitch_2
        0x5bed1351 -> :sswitch_1
        0x74b5813e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private fillingDataNext(Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3936
    iget-object v2, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 3937
    iget-object v4, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    invoke-static {v4}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->isNotNeedDealWithQuestionType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 3940
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 3941
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3942
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3944
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "_"

    .line 3945
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v8, :cond_3

    .line 3946
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3947
    aget-object v8, v5, v10

    .line 3948
    aget-object v5, v5, v11

    move-object/from16 v16, v8

    move-object v8, v5

    move-object/from16 v5, v16

    goto :goto_2

    :cond_3
    move-object v8, v9

    .line 3950
    :goto_2
    iget-object v12, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3952
    instance-of v12, v3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;

    const-string v13, ","

    if-eqz v12, :cond_6

    instance-of v12, v6, Ljava/lang/Integer;

    if-nez v12, :cond_6

    .line 3954
    move-object v5, v6

    check-cast v5, Ljava/lang/String;

    .line 3955
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3956
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3958
    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v10

    iput-object v6, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    .line 3959
    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3961
    move-object v6, v3

    check-cast v6, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;

    .line 3962
    iget-object v6, v6, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;

    .line 3963
    iget-object v8, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->id:Ljava/lang/String;

    iget-object v9, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3964
    iget-object v6, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    if-eqz v6, :cond_2

    .line 3965
    iget-object v6, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iput-object v5, v6, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

    goto/16 :goto_1

    .line 3970
    :cond_5
    iput-object v6, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 3973
    :cond_6
    instance-of v12, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    if-eqz v12, :cond_a

    instance-of v12, v6, Lorg/json/JSONObject;

    if-eqz v12, :cond_a

    .line 3974
    move-object v7, v3

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    .line 3975
    check-cast v6, Lorg/json/JSONObject;

    .line 3976
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 3977
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3978
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3980
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 3981
    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3982
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3983
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 3984
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3985
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3986
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 3987
    iget-object v11, v7, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 3988
    iget-object v13, v12, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 3989
    iget-object v9, v12, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    if-eqz v9, :cond_7

    .line 3990
    iget-object v9, v12, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iput-object v10, v9, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

    goto :goto_3

    .line 3997
    :cond_9
    iput-object v8, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 4000
    :cond_a
    instance-of v12, v3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    if-eqz v12, :cond_c

    instance-of v12, v6, Ljava/lang/Integer;

    if-nez v12, :cond_c

    .line 4001
    move-object v5, v3

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    .line 4002
    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    if-eqz v7, :cond_b

    .line 4003
    iget-object v9, v7, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->id:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 4004
    check-cast v6, Ljava/lang/String;

    iput-object v6, v7, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    goto/16 :goto_1

    .line 4008
    :cond_c
    instance-of v12, v3, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

    if-eqz v12, :cond_d

    .line 4009
    iput-object v6, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 4010
    :cond_d
    instance-of v12, v3, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

    if-eqz v12, :cond_e

    instance-of v12, v6, Ljava/lang/Integer;

    if-nez v12, :cond_e

    .line 4011
    iput-object v6, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 4012
    :cond_e
    instance-of v12, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    if-eqz v12, :cond_12

    instance-of v12, v6, Lorg/json/JSONObject;

    if-eqz v12, :cond_12

    .line 4013
    move-object v8, v3

    check-cast v8, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    .line 4014
    check-cast v6, Lorg/json/JSONObject;

    .line 4015
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 4016
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4017
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 4019
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 4020
    :cond_f
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 4021
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v11

    .line 4022
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 4023
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4024
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4025
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 4026
    iget-object v13, v8, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_10
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 4027
    iget-object v15, v14, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 4028
    iget-object v10, v14, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    if-eqz v10, :cond_f

    .line 4029
    iget-object v10, v14, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iput-object v12, v10, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

    goto :goto_4

    .line 4036
    :cond_11
    iput-object v9, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    .line 4038
    invoke-direct {v0, v8}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->createNewOptions(Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v8, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    goto/16 :goto_1

    .line 4041
    :cond_12
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v7, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->weight:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 4042
    move-object v5, v3

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    .line 4043
    check-cast v6, Lorg/json/JSONObject;

    if-eqz v6, :cond_2

    .line 4046
    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    .line 4047
    iget-object v8, v7, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->id:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_13

    .line 4049
    iput v8, v7, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    .line 4050
    iput-boolean v11, v7, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->isWritten:Z

    goto :goto_5

    .line 4054
    :cond_14
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v7, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixRadio:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 4055
    move-object v5, v3

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    .line 4059
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 4060
    check-cast v6, Ljava/lang/String;

    .line 4061
    invoke-virtual {v6, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 4062
    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4063
    aget-object v7, v6, v10

    .line 4064
    aget-object v9, v6, v11

    move-object v6, v7

    .line 4072
    :cond_15
    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 4073
    iget-object v10, v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->id:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 4074
    iput-object v6, v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    .line 4075
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_16

    .line 4076
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 4077
    invoke-virtual {v10, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4079
    iput-object v10, v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentFormValue:Ljava/util/HashMap;

    goto :goto_6

    .line 4083
    :cond_17
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v7, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixCheckbox:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 4084
    move-object v5, v3

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    .line 4086
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4088
    instance-of v9, v6, Lorg/json/JSONObject;

    if-eqz v9, :cond_2

    .line 4089
    check-cast v6, Lorg/json/JSONObject;

    .line 4091
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 4092
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 4093
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 4096
    :cond_18
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_19

    goto/16 :goto_1

    .line 4100
    :cond_19
    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 4101
    iget-object v10, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->id:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 4102
    iput-object v7, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    .line 4103
    invoke-static {v6}, Lcom/tgs/aics/utils/Utils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v10

    iput-object v10, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentFormValue:Ljava/util/HashMap;

    goto :goto_8

    .line 4107
    :cond_1b
    instance-of v5, v3, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    if-eqz v5, :cond_2

    .line 4108
    move-object v5, v3

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    .line 4109
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 4110
    iput-object v6, v5, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->currentValue:Ljava/lang/Object;

    .line 4111
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4112
    array-length v7, v6

    :goto_9
    if-ge v10, v7, :cond_2

    aget-object v8, v6, v10

    .line 4113
    iget-object v9, v5, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;

    if-nez v9, :cond_1c

    .line 4114
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v5, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;

    .line 4115
    :cond_1c
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4116
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 4117
    new-instance v11, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;

    invoke-direct {v11}, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;-><init>()V

    .line 4118
    iput-object v8, v11, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    .line 4119
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v11, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->fileName:Ljava/lang/String;

    .line 4120
    iget-object v8, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/tgs/aics/utils/Utils;->getFileSizeInBytes(Landroid/content/Context;Ljava/io/File;)J

    move-result-wide v8

    iput-wide v8, v11, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->fileSize:J

    .line 4121
    iget-object v8, v5, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 4129
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private findShuffleIndexFromList(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3563
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3564
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3565
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getAllQuestions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;",
            ">;"
        }
    .end annotation

    .line 1051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1052
    :goto_0
    iget v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->totalPageNumber:I

    if-gt v1, v2, :cond_1

    .line 1053
    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questionMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1055
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getAllQuestionsFromCurrentPage()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;",
            ">;"
        }
    .end annotation

    .line 1040
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1041
    :goto_0
    iget v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentIndex:I

    if-gt v1, v2, :cond_1

    .line 1042
    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questionMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1044
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getCheckboxQuoteOptions(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;",
            ")",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;",
            ">;"
        }
    .end annotation

    .line 2073
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2074
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2075
    iget-boolean v2, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->isEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->quoteTopicIds:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->quoteTopicIds:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 2076
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getAllQuestionsFromCurrentPage()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 2077
    iget-object v4, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->quoteTopicIds:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2078
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2082
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 2084
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    if-eqz v2, :cond_5

    .line 2085
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    .line 2086
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 2087
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_3

    .line 2088
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 2089
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 2090
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2091
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2094
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 2100
    :cond_5
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    if-eqz v2, :cond_2

    .line 2101
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    .line 2102
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 2103
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_6

    .line 2104
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 2105
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 2106
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2107
    new-instance v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    invoke-direct {v4}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;-><init>()V

    .line 2108
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->label:Ljava/lang/String;

    iput-object v5, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->label:Ljava/lang/String;

    .line 2109
    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    iput-object v3, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    .line 2110
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2113
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    :cond_8
    return-object v0
.end method

.method private getMatrixRadioQuoteOptions(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;",
            "Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;",
            ">;"
        }
    .end annotation

    .line 1958
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1959
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1960
    iget-boolean v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->isEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->quoteTopicIds:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->quoteTopicIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1961
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getAllQuestionsFromCurrentPage()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 1962
    iget-object v4, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->quoteTopicIds:Ljava/util/List;

    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1963
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1967
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 1969
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 1970
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    .line 1971
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 1972
    iget-object v6, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v6, v6, Ljava/util/List;

    if-eqz v6, :cond_3

    .line 1973
    iget-object v6, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 1974
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 1975
    iget-object v7, v5, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1977
    iget-object v6, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 1978
    iget-object v8, v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->id:Ljava/lang/String;

    iget-object v9, v5, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1980
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, v4

    :goto_3
    if-nez v6, :cond_3

    .line 1986
    new-instance v6, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    invoke-direct {v6}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;-><init>()V

    .line 1987
    iget-object v7, v5, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->label:Ljava/lang/String;

    iput-object v7, v6, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->title:Ljava/lang/String;

    .line 1988
    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    iput-object v5, v6, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->id:Ljava/lang/String;

    .line 1989
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1993
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 1999
    :cond_7
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    if-eqz v2, :cond_2

    .line 2000
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    .line 2001
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 2002
    iget-object v6, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v6, v6, Ljava/util/List;

    if-eqz v6, :cond_8

    .line 2003
    iget-object v6, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 2004
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 2005
    iget-object v7, v5, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2007
    iget-object v6, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 2008
    iget-object v8, v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->id:Ljava/lang/String;

    iget-object v9, v5, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2010
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v3

    goto :goto_5

    :cond_a
    move v6, v4

    :goto_5
    if-nez v6, :cond_8

    .line 2016
    new-instance v6, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    invoke-direct {v6}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;-><init>()V

    .line 2017
    iget-object v7, v5, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->label:Ljava/lang/String;

    iput-object v7, v6, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->title:Ljava/lang/String;

    .line 2018
    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    iput-object v5, v6, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->id:Ljava/lang/String;

    .line 2019
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2023
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    :cond_c
    return-object v0
.end method

.method private getQuoteRows(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;",
            ">;"
        }
    .end annotation

    .line 1790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1792
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1793
    iget-boolean v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;->isEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;->quoteTopicIds:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;->quoteTopicIds:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1794
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getAllQuestionsFromCurrentPage()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 1795
    iget-object v4, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;->quoteTopicIds:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1796
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1800
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 1802
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    if-eqz v2, :cond_5

    .line 1803
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    .line 1804
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 1805
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_3

    .line 1806
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 1807
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 1808
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1809
    new-instance v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    invoke-direct {v4}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;-><init>()V

    .line 1810
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    iput-object v5, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->id:Ljava/lang/String;

    .line 1811
    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->label:Ljava/lang/String;

    iput-object v3, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->title:Ljava/lang/String;

    .line 1812
    iget-object v3, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->id:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    .line 1813
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1816
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 1821
    :cond_5
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    if-eqz v2, :cond_2

    .line 1822
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    .line 1823
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 1824
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_6

    .line 1825
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 1826
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 1827
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1828
    new-instance v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    invoke-direct {v4}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;-><init>()V

    .line 1829
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    iput-object v5, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->id:Ljava/lang/String;

    .line 1830
    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->label:Ljava/lang/String;

    iput-object v3, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->title:Ljava/lang/String;

    .line 1831
    iget-object v3, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->id:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    .line 1832
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1835
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    :cond_8
    return-object v0
.end method

.method private getRadioQuoteOptions(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;",
            ")",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;",
            ">;"
        }
    .end annotation

    .line 1846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1847
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1848
    iget-boolean v2, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->isEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->quoteTopicIds:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->quoteTopicIds:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1849
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getAllQuestionsFromCurrentPage()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 1850
    iget-object v4, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->quoteTopicIds:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1851
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1855
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 1857
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    if-eqz v2, :cond_5

    .line 1858
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    .line 1859
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 1860
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_3

    .line 1861
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 1862
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 1863
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1864
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1867
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 1872
    :cond_5
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    if-eqz v2, :cond_2

    .line 1873
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    .line 1874
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 1875
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_6

    .line 1876
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 1877
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 1878
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1879
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1882
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_8
    return-object v0
.end method

.method private getSortQuoteOptions(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;",
            ")",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;",
            ">;"
        }
    .end annotation

    .line 2124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2126
    iget-boolean v2, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->isEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->quoteTopicIds:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->quoteTopicIds:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 2127
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getAllQuestionsFromCurrentPage()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 2128
    iget-object v4, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->quoteTopicIds:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2129
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2133
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 2135
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    if-eqz v2, :cond_5

    .line 2136
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    .line 2137
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 2138
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_3

    .line 2139
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 2140
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2141
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2142
    new-instance v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    invoke-direct {v4}, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;-><init>()V

    .line 2143
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->label:Ljava/lang/String;

    iput-object v5, v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->label:Ljava/lang/String;

    .line 2144
    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    iput-object v3, v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    .line 2145
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2148
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 2154
    :cond_5
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    if-eqz v2, :cond_2

    .line 2155
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    .line 2156
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 2157
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_6

    .line 2158
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 2159
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2160
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2161
    new-instance v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    invoke-direct {v4}, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;-><init>()V

    .line 2162
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->label:Ljava/lang/String;

    iput-object v5, v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->label:Ljava/lang/String;

    .line 2163
    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    iput-object v3, v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    .line 2164
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2167
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    :cond_8
    return-object v0
.end method

.method private getStringByQuestionType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 968
    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->radio:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\u3011"

    const-string v2, "\u3010"

    if-eqz v0, :cond_0

    .line 969
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_type_radio"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 970
    :cond_0
    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->checkbox:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 971
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_type_checkbox"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 972
    :cond_1
    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->fillBlank:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 973
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_type_fill_blank"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 974
    :cond_2
    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixScale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 975
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_type_matrix_scale"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 976
    :cond_3
    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->regularScale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 977
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_type_regular_scale"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 978
    :cond_4
    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->npsScale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 979
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_type_nps_scale"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 980
    :cond_5
    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->sort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_type_sort"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 982
    :cond_6
    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->weight:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 983
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_type_weight"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 984
    :cond_7
    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixRadio:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 985
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_type_matrix_radio"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 986
    :cond_8
    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixCheckbox:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 987
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_type_matrix_checkbox"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 988
    :cond_9
    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->scoreRadio:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 989
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_type_score_radio"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 990
    :cond_a
    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->scoreCheckbox:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 991
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_type_score_checkbox"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 992
    :cond_b
    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->fileUpload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 993
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_type_file_upload"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    const-string p1, ""

    return-object p1
.end method

.method private getWeightQuoteOptions(Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;",
            "Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;",
            ">;"
        }
    .end annotation

    .line 1893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1894
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1895
    iget-boolean v2, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;->isEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;->quoteTopicIds:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;->quoteTopicIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1896
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getAllQuestionsFromCurrentPage()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 1897
    iget-object v4, p1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;->quoteTopicIds:Ljava/util/List;

    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1898
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1902
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 1904
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    if-eqz v2, :cond_7

    .line 1905
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    .line 1906
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 1907
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_3

    .line 1908
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 1909
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 1910
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1912
    iget-object v4, p2, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->showRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    .line 1913
    iget-object v6, v5, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->id:Ljava/lang/String;

    iget-object v7, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1915
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_3

    .line 1921
    new-instance v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    invoke-direct {v4}, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;-><init>()V

    .line 1922
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->label:Ljava/lang/String;

    iput-object v5, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->title:Ljava/lang/String;

    .line 1923
    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    iput-object v3, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->id:Ljava/lang/String;

    .line 1924
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1928
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 1934
    :cond_7
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    if-eqz v2, :cond_2

    .line 1935
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    .line 1936
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 1937
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_8

    .line 1938
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 1939
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 1940
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1941
    new-instance v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    invoke-direct {v4}, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;-><init>()V

    .line 1942
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->label:Ljava/lang/String;

    iput-object v5, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->title:Ljava/lang/String;

    .line 1943
    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    iput-object v3, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->id:Ljava/lang/String;

    .line 1944
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1947
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    :cond_a
    return-object v0
.end method

.method public static isNotNeedDealWithQuestionType(Ljava/lang/String;)Z
    .locals 1

    .line 3245
    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->description:Ljava/lang/String;

    .line 3246
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->paginator:Ljava/lang/String;

    .line 3247
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->end:Ljava/lang/String;

    .line 3248
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isOptionRelationHidden(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;)Z
    .locals 7

    .line 1064
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionRelations:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionRelations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1065
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionRelations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1066
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionRelations:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;

    invoke-direct {p0, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->isOptionSingleRelationHidden(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;)Z

    move-result v1

    goto :goto_2

    .line 1068
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionRelationsType:Ljava/lang/String;

    sget-object v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelationsType;->or:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1069
    iget-object v3, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionRelations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;

    .line 1070
    iget-object v5, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionRelationsType:Ljava/lang/String;

    sget-object v6, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelationsType;->or:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_3

    .line 1071
    invoke-direct {p0, v4}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->isOptionSingleRelationHidden(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 1072
    :cond_4
    iget-object v5, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionRelationsType:Ljava/lang/String;

    sget-object v6, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionRelationsType;->and:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_2

    .line 1073
    invoke-direct {p0, v4}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->isOptionSingleRelationHidden(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_5
    move v1, v0

    :cond_6
    :goto_2
    return v1
.end method

.method private isOptionSingleRelationHidden(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;)Z
    .locals 8

    .line 1088
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationTopicId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationRowId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_f

    .line 1091
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationTopicId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_16

    .line 1094
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getAllQuestionsFromCurrentPage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 1095
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    invoke-static {v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->isNotNeedDealWithQuestionType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 1098
    :cond_2
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    iget-object v6, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationTopicId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, v4

    :cond_3
    if-eqz v2, :cond_1d

    .line 1109
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationType:Ljava/lang/String;

    sget-object v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$RelationType;->all:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1112
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationValues:[Ljava/lang/String;

    array-length v0, p1

    move v4, v1

    move v5, v3

    :goto_1
    if-ge v4, v0, :cond_6

    aget-object v6, p1, v4

    .line 1114
    iget-object v7, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    instance-of v7, v7, Ljava/util/List;

    if-eqz v7, :cond_5

    if-eqz v5, :cond_4

    .line 1115
    iget-object v5, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v1

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    xor-int/lit8 p1, v5, 0x1

    :goto_3
    move v1, p1

    goto/16 :goto_f

    .line 1119
    :cond_7
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationType:Ljava/lang/String;

    sget-object v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$RelationType;->none:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1122
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationValues:[Ljava/lang/String;

    array-length v0, p1

    move v4, v1

    move v5, v3

    :goto_4
    if-ge v4, v0, :cond_a

    aget-object v6, p1, v4

    .line 1124
    iget-object v7, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    instance-of v7, v7, Ljava/util/List;

    if-eqz v7, :cond_9

    if-eqz v5, :cond_8

    new-array v5, v3, [Ljava/util/List;

    .line 1125
    iget-object v7, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    aput-object v7, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v3

    goto :goto_5

    :cond_8
    move v5, v1

    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1128
    :cond_a
    iget-object p1, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    move v3, v5

    :goto_6
    move v1, v3

    goto/16 :goto_f

    .line 1131
    :cond_c
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationType:Ljava/lang/String;

    sget-object v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$RelationType;->some:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1134
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationValues:[Ljava/lang/String;

    array-length v0, p1

    move v4, v1

    move v5, v4

    :goto_7
    if-ge v4, v0, :cond_6

    aget-object v6, p1, v4

    .line 1135
    iget-object v7, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    instance-of v7, v7, Ljava/util/List;

    if-eqz v7, :cond_f

    if-nez v5, :cond_e

    .line 1136
    iget-object v5, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_8

    :cond_d
    move v5, v1

    goto :goto_9

    :cond_e
    :goto_8
    move v5, v3

    goto :goto_9

    .line 1137
    :cond_f
    iget-object v7, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_10

    if-nez v5, :cond_e

    .line 1138
    iget-object v5, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_8

    :cond_10
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1142
    :cond_11
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationType:Ljava/lang/String;

    sget-object v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$RelationType;->incomplete:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1145
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationValues:[Ljava/lang/String;

    array-length v0, p1

    move v4, v1

    move v5, v4

    :goto_a
    if-ge v4, v0, :cond_15

    aget-object v6, p1, v4

    .line 1147
    iget-object v7, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    instance-of v7, v7, Ljava/util/List;

    if-eqz v7, :cond_14

    if-nez v5, :cond_13

    .line 1148
    iget-object v5, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_b

    :cond_12
    move v5, v1

    goto :goto_c

    :cond_13
    :goto_b
    move v5, v3

    :cond_14
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1151
    :cond_15
    iget-object p1, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_b

    goto :goto_6

    .line 1160
    :cond_16
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationRowId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1164
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getAllQuestionsFromCurrentPage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 1165
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    invoke-static {v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->isNotNeedDealWithQuestionType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_d

    .line 1168
    :cond_18
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v6, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixScale:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    instance-of v5, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    if-eqz v5, :cond_17

    .line 1170
    check-cast v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    .line 1171
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    .line 1172
    iget-object v6, v6, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->id:Ljava/lang/String;

    iget-object v7, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationRowId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_e

    :cond_1a
    move-object v4, v2

    :goto_e
    if-eqz v4, :cond_1d

    .line 1183
    iget-object v0, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    .line 1184
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->id:Ljava/lang/String;

    iget-object v6, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationRowId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object v2, v4

    :cond_1c
    if-eqz v2, :cond_1d

    .line 1190
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionRelation;->relationValues:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    goto/16 :goto_3

    :cond_1d
    :goto_f
    return v1
.end method

.method static synthetic lambda$checkboxTypeInitView$35(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 3619
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method static synthetic lambda$checkboxTypeInitView$36(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 3624
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method static synthetic lambda$checkboxTypeInitView$37(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 3631
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method static synthetic lambda$commonDealWith$4(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Ljava/lang/CharSequence;)V
    .locals 0

    .line 913
    iget-object p0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$commonDealWith$6(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Ljava/lang/CharSequence;)V
    .locals 0

    .line 934
    iget-object p0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$radioTypeInitView$40(Landroid/widget/RadioButton;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 3808
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method static synthetic lambda$radioTypeInitView$41(Landroid/widget/RadioButton;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 3817
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method static synthetic lambda$radioTypeInitView$42(Landroid/widget/RadioButton;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 3824
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method static synthetic lambda$showTipsDialog$21(Lcom/tgs/aics/ui/dialog/TipsDialog;Landroid/view/View;)V
    .locals 0

    .line 2744
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$titleOnBindViewHolder$9(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private loadNextPage()V
    .locals 6

    .line 4190
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4192
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questionMap:Ljava/util/Map;

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4193
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questionMap:Ljava/util/Map;

    iget v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4195
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->next()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4199
    invoke-direct {p0, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->modelHiddenOrRelationHidden(Z)V

    .line 4204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4205
    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 4206
    iget-object v4, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v5, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->paginator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 4208
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4210
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 4211
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->next()V

    return-void

    .line 4216
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_4
    :goto_1
    move v3, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    if-eqz v3, :cond_5

    .line 4217
    iget-boolean v3, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isHidden:Z

    if-nez v3, :cond_4

    iget-boolean v3, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isRelationHidden:Z

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v3, v0

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    .line 4220
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->next()V

    return-void

    .line 4225
    :cond_7
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->nextAllPageEndButtonHandle()V

    .line 4227
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->randomSort()V

    .line 4228
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->listener:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;

    if-eqz v0, :cond_8

    .line 4229
    invoke-interface {v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;->onNextPageClick()V

    .line 4230
    :cond_8
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method private matrixCheckboxOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V
    .locals 2

    .line 2568
    check-cast p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    .line 2571
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rowsQuote:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rowsQuote:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;

    iget-boolean v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 2572
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rowsQuote:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;

    invoke-direct {p0, v0, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getMatrixRadioQuoteOptions(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    .line 2573
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    iput-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->showRows:Ljava/util/List;

    .line 2574
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2576
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2579
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->addMatrixCheckBoxOptionLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;I)V

    return-void
.end method

.method private matrixRadioOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V
    .locals 2

    .line 2552
    check-cast p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    .line 2555
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rowsQuote:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rowsQuote:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;

    iget-boolean v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 2556
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rowsQuote:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;

    invoke-direct {p0, v0, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getMatrixRadioQuoteOptions(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$RowsQuote;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    .line 2557
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    iput-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->showRows:Ljava/util/List;

    .line 2558
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2560
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2563
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->addMatrixRadioOptionLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;I)V

    return-void
.end method

.method private matrixScaleNpsTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;ILcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 2316
    :cond_0
    iget-object v4, p4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->columns:Ljava/util/List;

    .line 2318
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_item_matrix_scale_nps_title"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2319
    sget-boolean v2, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/tgs/aics/utils/ConstantUtil;->isReverseLandscape:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x42a00000    # 80.0f

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 v2, 0x43480000    # 200.0f

    :goto_1
    invoke-static {v2}, Lcom/tgs/aics/utils/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2320
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2321
    iget-object v2, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    const/16 v6, 0x28

    const/4 v7, 0x0

    invoke-static {v2, v3, v7, v5, v6}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2322
    iget-object v2, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2324
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_item_matrix_scale_nps_rating_bar"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;

    .line 2325
    invoke-direct {p0, v4}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->buildScoreList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setScoreList(Ljava/util/List;)V

    .line 2326
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setMax(I)V

    .line 2327
    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2328
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2329
    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;

    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2330
    invoke-virtual {p1, v0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setProgress(I)Z

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2335
    :cond_5
    :goto_4
    new-instance v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda26;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda26;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;Ljava/util/List;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;I)V

    invoke-virtual {p1, v0}, Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;->setOnSeekBarChangeListener(Lcom/tgs/aics/thirdtool/nps/NewNpsRatingBar$OnRatingSeekBarChangeListener;)V

    return v7

    :cond_6
    :goto_5
    return v0
.end method

.method private matrixScaleOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V
    .locals 4

    .line 2453
    check-cast p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    .line 2455
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rowQuote:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rowQuote:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;

    iget-boolean v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;->isEnabled:Z

    if-eqz v0, :cond_1

    .line 2456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2457
    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    .line 2458
    iget-object v3, v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->id:Ljava/lang/String;

    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2461
    :cond_0
    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rowQuote:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;

    invoke-direct {p0, v1, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getQuoteRows(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowQuote;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    .line 2462
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2464
    :cond_1
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2467
    :goto_1
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2468
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto/16 :goto_4

    .line 2470
    :cond_2
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->columns:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    goto/16 :goto_4

    .line 2473
    :cond_3
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->scoreDisplayType:Ljava/lang/String;

    const-string v1, "star"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->scoreDisplayType:Ljava/lang/String;

    const-string v1, "heart"

    .line 2474
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->scoreDisplayType:Ljava/lang/String;

    const-string v1, "thumb"

    .line 2475
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->scoreDisplayType:Ljava/lang/String;

    const-string v1, "nps"

    .line 2476
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 2488
    :cond_4
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_matrix_scale_radio_outer"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2489
    invoke-direct {p0, v0, p3, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->matrixScaleRadioTypeInitView(Landroid/view/View;ILcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 2490
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 2477
    :cond_5
    :goto_2
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->optionGroups:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2478
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;

    .line 2479
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2480
    iget-object v2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->buildGroupNameView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2482
    :cond_6
    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->rows:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->addMatrixScaleOtherLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;ILjava/util/List;)V

    goto :goto_3

    .line 2485
    :cond_7
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->addMatrixScaleOtherLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;ILjava/util/List;)V

    :cond_8
    :goto_4
    return-void
.end method

.method private matrixScaleOptionGroupsLogic(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;)V
    .locals 7

    .line 4476
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4477
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;

    .line 4478
    iget-object v3, v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->rows:Ljava/util/List;

    if-nez v3, :cond_1

    .line 4479
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->rows:Ljava/util/List;

    .line 4480
    :cond_1
    iget-object v3, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    .line 4481
    iget-object v5, v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->rowIds:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->id:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4482
    iget-object v5, v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->rows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4483
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4487
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 4488
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    .line 4489
    new-instance v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;

    invoke-direct {v2}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;-><init>()V

    .line 4490
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4491
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4492
    iput-object v3, v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->rows:Ljava/util/List;

    .line 4493
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method private matrixScaleOtherTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;ILcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 2260
    :cond_0
    iget-object v1, p4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->scoreDisplayType:Ljava/lang/String;

    .line 2261
    iget-boolean v2, p4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->isHalfScore:Z

    .line 2262
    iget-object v9, p4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->columns:Ljava/util/List;

    .line 2264
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v4, "tgs_aics_questionnaire_item_matrix_scale_other_title"

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2265
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2266
    iget-object v4, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    const/16 v7, 0x28

    const/4 v8, 0x0

    invoke-static {v4, v5, v8, v6, v7}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2267
    iget-object v4, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2269
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v4, "tgs_aics_questionnaire_item_matrix_scale_other_rating_bar"

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;

    const-string v3, "star"

    .line 2270
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2271
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_icon_star_uncheck"

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2272
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_icon_star_checked"

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setFilledDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    const-string v3, "thumb"

    .line 2273
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2274
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_icon_thumb_uncheck"

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2275
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_icon_thumb_checked"

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setFilledDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    const-string v3, "heart"

    .line 2276
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2277
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_icon_heart_uncheck"

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setEmptyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2278
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_icon_heart_checked"

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setFilledDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2280
    :cond_4
    :goto_1
    invoke-virtual {p1, v2}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setHalf(Z)V

    .line 2281
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setNumStars(I)V

    .line 2283
    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    const/4 v10, 0x1

    if-eqz v1, :cond_7

    .line 2284
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 2285
    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;

    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_5

    add-int/2addr v0, v10

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2287
    invoke-virtual {p1, v0}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setRating(F)V

    .line 2288
    invoke-virtual {p1, v0}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->publicFillRatingBar(F)V

    goto :goto_3

    :cond_5
    add-int/2addr v0, v10

    int-to-float v0, v0

    .line 2290
    invoke-virtual {p1, v0}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setRating(F)V

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2296
    :cond_7
    :goto_3
    new-instance v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda19;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p4

    move v7, p3

    move-object v8, p2

    invoke-direct/range {v3 .. v9}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda19;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;ILcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->setOnRatingChangeListener(Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar$OnRatingChangeListener;)V

    return v10

    :cond_8
    :goto_4
    return v0
.end method

.method private matrixScaleRadioTypeInitView(Landroid/view/View;ILcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2418
    :cond_0
    iget-object v2, p3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    .line 2419
    iget-object v10, p3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->columns:Ljava/util/List;

    if-eqz v2, :cond_6

    if-nez v10, :cond_1

    goto/16 :goto_2

    .line 2423
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 2425
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_questionnaire_item_matrix_scale_radio_title_layout"

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2426
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;

    .line 2427
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2428
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x11

    .line 2429
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 2430
    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;->title:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x2

    const/high16 v6, 0x41800000    # 16.0f

    .line 2431
    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2432
    iget-object v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v4, v6}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v4

    iget-object v7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v0, v4, v0, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2433
    iget-object v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v6, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v7, "normalBlack"

    invoke-static {v6, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2434
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2437
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_matrix_scale_radio_content_layout"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 2438
    iget-object v0, p3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->optionGroups:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2439
    iget-object v0, p3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;

    .line 2440
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2441
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->buildGroupNameView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2443
    :cond_3
    iget-object v4, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$MatrixScaleOptionGroup;->rows:Ljava/util/List;

    move-object v3, p0

    move v5, v11

    move-object v6, v10

    move-object v7, p3

    move v8, p2

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->addMatrixScaleRadioLayout(Ljava/util/List;ILjava/util/List;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;ILandroid/widget/LinearLayout;)V

    goto :goto_1

    :cond_4
    move-object v1, p0

    move v3, v11

    move-object v4, v10

    move-object v5, p3

    move v6, p2

    move-object v7, p1

    .line 2446
    invoke-direct/range {v1 .. v7}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->addMatrixScaleRadioLayout(Ljava/util/List;ILjava/util/List;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;ILandroid/widget/LinearLayout;)V

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_2
    return v0
.end method

.method private matrixScaleRowsRandomLogic(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;)V
    .locals 6

    .line 4378
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rowRandom:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;

    if-eqz v0, :cond_4

    .line 4380
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rowRandom:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;->type:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandomType;->all:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4382
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    goto/16 :goto_3

    .line 4383
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rowRandom:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;->type:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandomType;->partial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4385
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rowRandom:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;->randomIds:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rowRandom:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;->randomIds:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 4387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4388
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    if-nez v2, :cond_1

    goto :goto_0

    .line 4391
    :cond_1
    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4393
    :cond_2
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rowRandom:Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$RowRandom;->randomIds:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->findShuffleIndexFromList(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4395
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4396
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4397
    iget-object v4, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4400
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 4402
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4403
    iget-object v3, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method private modelHiddenOrRelationHidden(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 4277
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getAllQuestions()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getAllQuestionsFromCurrentPage()Ljava/util/List;

    move-result-object p1

    .line 4278
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 4279
    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->refreshData(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private next()V
    .locals 2

    .line 2856
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->minCountDownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2857
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2858
    iput-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->minCountDownTimer:Landroid/os/CountDownTimer;

    .line 2860
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->maxCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 2861
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2862
    iput-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->maxCountDownTimer:Landroid/os/CountDownTimer;

    .line 2865
    :cond_1
    iget v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentIndex:I

    .line 2866
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->loadNextPage()V

    .line 2867
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->txtMaxFillSecond:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private nextAllPageEndButtonHandle()V
    .locals 8

    .line 4239
    iget v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :goto_0
    iget v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->totalPageNumber:I

    if-ge v0, v2, :cond_9

    .line 4241
    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questionMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_8

    .line 4243
    invoke-direct {p0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->modelHiddenOrRelationHidden(Z)V

    .line 4247
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    move v4, v3

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 4248
    iget-object v6, v5, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v7, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->paginator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v5, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v7, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->end:Ljava/lang/String;

    .line 4249
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    .line 4252
    iget-boolean v4, v5, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isHidden:Z

    if-nez v4, :cond_0

    iget-boolean v4, v5, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isRelationHidden:Z

    if-nez v4, :cond_0

    :cond_3
    move v4, v1

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_6

    .line 4255
    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 4256
    instance-of v5, v4, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;

    if-eqz v5, :cond_5

    .line 4257
    check-cast v4, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;

    .line 4258
    sget-object v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->paginator:Ljava/lang/String;

    iput-object v0, v4, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->questionType:Ljava/lang/String;

    .line 4259
    iput-boolean v3, v4, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->isEnd:Z

    goto :goto_3

    .line 4264
    :cond_6
    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 4265
    instance-of v4, v3, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;

    if-eqz v4, :cond_7

    .line 4266
    check-cast v3, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;

    .line 4267
    sget-object v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->end:Ljava/lang/String;

    iput-object v4, v3, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->questionType:Ljava/lang/String;

    .line 4268
    iput-boolean v1, v3, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->isEnd:Z

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_3
    return-void
.end method

.method private notifyDataChanged(I)V
    .locals 1

    .line 848
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->nextAllPageEndButtonHandle()V

    .line 849
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->refreshData()V

    .line 850
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->clearAllEditTextFocus()V

    .line 851
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method private paginatorOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V
    .locals 12

    .line 2608
    check-cast p2, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;

    .line 2610
    iget-boolean v0, p2, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->isRenderedUI:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2614
    iput-boolean v0, p2, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->isRenderedUI:Z

    .line 2616
    iget v0, p2, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->minFillTSecond:I

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    if-lez v0, :cond_1

    .line 2618
    iget v0, p2, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->minFillTSecond:I

    iput v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->minCountDownTime:I

    .line 2619
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2620
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_diagnose_button_disable"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2621
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->minCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_2

    .line 2622
    new-instance v11, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$7;

    iget v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->minCountDownTime:I

    int-to-long v0, v0

    mul-long v2, v0, v8

    const-wide/16 v4, 0x3e8

    move-object v0, v11

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$7;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;JJLcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;)V

    iput-object v11, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->minCountDownTimer:Landroid/os/CountDownTimer;

    .line 2633
    invoke-virtual {v11}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 2636
    :cond_1
    iget-boolean v0, p2, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->isEnd:Z

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->resetButtonNormalState(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Z)V

    .line 2639
    :cond_2
    :goto_0
    iget v0, p2, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->maxFillTSecond:I

    if-lez v0, :cond_3

    .line 2640
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->txtMaxFillSecond:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2641
    iget v0, p2, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->maxFillTSecond:I

    iput v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->maxCountDownTime:I

    .line 2642
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->maxCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_4

    .line 2643
    new-instance v7, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;

    iget v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->maxCountDownTime:I

    int-to-long v0, v0

    mul-long v2, v0, v8

    const-wide/16 v4, 0x3e8

    move-object v0, v7

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$8;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;JJLcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;)V

    iput-object v7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->maxCountDownTimer:Landroid/os/CountDownTimer;

    .line 2689
    invoke-virtual {v7}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1

    .line 2692
    :cond_3
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->txtMaxFillSecond:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2695
    :cond_4
    :goto_1
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->button:Landroid/widget/Button;

    new-instance v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda28;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private radioOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V
    .locals 4

    .line 1761
    check-cast p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;

    .line 1764
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    iget-boolean v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 1765
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    invoke-direct {p0, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getRadioQuoteOptions(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    .line 1766
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1768
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1772
    :goto_0
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionGroups:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1773
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1774
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;

    .line 1775
    iget-object v2, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionGroupsSetting:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;

    iget-boolean v2, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->showGroupName:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1776
    iget-object v2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->buildGroupNameView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1778
    :cond_1
    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;->options:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->addRadioOptionLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;ILjava/util/List;)V

    goto :goto_1

    .line 1780
    :cond_2
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1782
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1783
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->addRadioOptionLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;ILjava/util/List;)V

    goto :goto_2

    .line 1785
    :cond_3
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_4
    :goto_2
    return-void
.end method

.method private radioOptionGroupsLogic(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;)V
    .locals 7

    .line 4412
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4413
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;

    .line 4414
    iget-object v3, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;->options:Ljava/util/List;

    if-nez v3, :cond_1

    .line 4415
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;->options:Ljava/util/List;

    .line 4416
    :cond_1
    iget-object v3, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;

    .line 4417
    iget-object v5, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;->optionIds:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v4, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->id:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4418
    iget-object v5, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;->options:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4419
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4422
    :cond_3
    iget-boolean v3, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;->isRandom:Z

    if-eqz v3, :cond_0

    .line 4423
    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;->options:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    goto :goto_0

    .line 4425
    :cond_4
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionGroupsSetting:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;

    iget-boolean v1, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->isRandom:Z

    if-eqz v1, :cond_5

    .line 4426
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 4427
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 4429
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;

    .line 4431
    new-instance v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;

    invoke-direct {v2}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;-><init>()V

    .line 4433
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4434
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4435
    iput-object v3, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroup;->options:Ljava/util/List;

    .line 4437
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-void
.end method

.method private radioOptionsRandomLogic(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;)V
    .locals 6

    .line 4285
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->type:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandomType;->all:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4287
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    goto/16 :goto_3

    .line 4288
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->type:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandomType;->partial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4290
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->randomIds:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->randomIds:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 4292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4293
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;

    if-nez v2, :cond_1

    goto :goto_0

    .line 4296
    :cond_1
    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4298
    :cond_2
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->randomIds:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->findShuffleIndexFromList(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4302
    iget-object v4, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4305
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 4307
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4308
    iget-object v3, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method private radioTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;I)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    if-nez p2, :cond_0

    goto/16 :goto_7

    .line 3782
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_options_radio_group_image_layout"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 3784
    iget-object v2, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionImages:Ljava/util/List;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 3785
    iget-object v2, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionImages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3786
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3787
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3788
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v5, "tgs_aics_options_radio_group_image"

    invoke-static {v1, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3789
    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v7, "tgs_aics_white_image_placeholder"

    invoke-static {v6, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v5, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 3790
    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v6, "tgs_aics_options_radio_group_image_enlarge"

    invoke-static {v5, v6}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 3791
    new-instance v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda46;

    invoke-direct {v6, p0, v2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda46;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 3795
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3798
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    move-object v1, v3

    .line 3801
    :goto_1
    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v5, "tgs_aics_options_radio_button"

    invoke-static {v2, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 3802
    iget-object v5, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 3803
    iget-object v5, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->id:Ljava/lang/String;

    iget-object v6, p3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 3804
    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    if-eqz v1, :cond_4

    .line 3808
    new-instance v5, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RadioButton;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3810
    :cond_4
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v5, "tgs_aics_options_title"

    invoke-static {v1, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3811
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3812
    iget-object v5, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->label:Ljava/lang/String;

    iget-object v7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    .line 3815
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    const/16 v9, 0x28

    .line 3812
    invoke-static {v5, v7, v3, v8, v9}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3817
    new-instance v5, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/widget/RadioButton;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3819
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v5, "tgs_aics_options_radio_button_description"

    invoke-static {v1, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3820
    iget-object v5, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionDescription:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v4

    goto :goto_2

    :cond_5
    move v5, v0

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3821
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3822
    iget-object v5, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionDescription:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3823
    iget-object v5, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionDescription:Ljava/lang/String;

    iget-object v7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    invoke-static {v5, v7, v3, v8, v9}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3824
    new-instance v3, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/widget/RadioButton;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3827
    :cond_6
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_inner_question_layout"

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3828
    iget-object p2, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    if-eqz p2, :cond_c

    .line 3829
    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3830
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3832
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_is_must"

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3833
    iget-boolean v3, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->isRequired:Z

    if-eqz v3, :cond_7

    move v3, v0

    goto :goto_3

    :cond_7
    const/4 v3, 0x4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3835
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_inner_question_edittext"

    invoke-static {v1, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3836
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 3837
    iget-object v3, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3838
    new-instance v3, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$14;

    invoke-direct {v3, p0, p2, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$14;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3852
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v5, "tgs_aics_inner_question_spinner"

    invoke-static {v3, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    .line 3853
    iget-object v3, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->type:Ljava/lang/String;

    sget-object v5, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionFormType;->select:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3854
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3855
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 3856
    new-instance v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$15;

    invoke-direct {v1, p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$15;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3865
    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->option:Ljava/util/List;

    if-eqz v1, :cond_9

    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->option:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 3866
    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->option:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 3867
    :goto_4
    iget-object v3, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->option:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 3868
    iget-object v3, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->option:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm$Option;

    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm$Option;->label:Ljava/lang/String;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3870
    :cond_8
    new-instance p2, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const v3, 0x1090008

    invoke-direct {p2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    .line 3871
    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 3872
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_6

    .line 3874
    :cond_9
    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_6

    .line 3876
    :cond_a
    iget-object v3, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->type:Ljava/lang/String;

    sget-object v5, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionFormType;->input:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3877
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3878
    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 3879
    iget-object p1, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->placeholder:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string p2, "tgs_aics_redemption_placeholder"

    invoke-static {p1, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_b
    iget-object p1, p2, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->placeholder:Ljava/lang/String;

    :goto_5
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 3882
    :cond_c
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3885
    :cond_d
    :goto_6
    new-instance p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p3, p4}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;I)V

    invoke-virtual {v2, p1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return v6

    :cond_e
    :goto_7
    return v0
.end method

.method private randomSort()V
    .locals 6

    .line 4500
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 4501
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->radio:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->checkbox:Ljava/lang/String;

    .line 4502
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixScale:Ljava/lang/String;

    .line 4503
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->sort:Ljava/lang/String;

    .line 4504
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->scoreRadio:Ljava/lang/String;

    .line 4505
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->scoreCheckbox:Ljava/lang/String;

    .line 4506
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4509
    :cond_1
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;

    if-eqz v2, :cond_6

    .line 4510
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;

    .line 4513
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4514
    iget-object v3, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;

    if-eqz v4, :cond_2

    .line 4515
    iget-boolean v5, v4, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->isHidden:Z

    if-eqz v5, :cond_3

    goto :goto_1

    .line 4517
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4519
    :cond_4
    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    .line 4522
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionGroups:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 4523
    invoke-direct {p0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->radioOptionGroupsLogic(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;)V

    goto/16 :goto_0

    .line 4525
    :cond_5
    invoke-direct {p0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->radioOptionsRandomLogic(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;)V

    goto/16 :goto_0

    .line 4527
    :cond_6
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    if-eqz v2, :cond_b

    .line 4528
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    .line 4531
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4532
    iget-object v3, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    if-eqz v4, :cond_7

    .line 4533
    iget-boolean v5, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->isHidden:Z

    if-eqz v5, :cond_8

    goto :goto_2

    .line 4535
    :cond_8
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4537
    :cond_9
    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    .line 4540
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroups:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 4541
    invoke-direct {p0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->checkboxOptionGroupsLogic(Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;)V

    goto/16 :goto_0

    .line 4543
    :cond_a
    invoke-direct {p0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->checkboxOptionsRandomLogic(Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;)V

    goto/16 :goto_0

    .line 4545
    :cond_b
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    if-eqz v2, :cond_d

    .line 4546
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    .line 4548
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->optionGroups:Ljava/util/List;

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 4549
    invoke-direct {p0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->matrixScaleOptionGroupsLogic(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;)V

    goto/16 :goto_0

    .line 4551
    :cond_c
    invoke-direct {p0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->matrixScaleRowsRandomLogic(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;)V

    goto/16 :goto_0

    .line 4553
    :cond_d
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    if-eqz v2, :cond_0

    .line 4554
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    .line 4557
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4558
    iget-object v3, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    if-eqz v4, :cond_e

    .line 4559
    iget-boolean v5, v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->isHidden:Z

    if-eqz v5, :cond_f

    goto :goto_3

    .line 4561
    :cond_f
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4563
    :cond_10
    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    .line 4565
    invoke-direct {p0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->sortOptionsRandomLogic(Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;)V

    .line 4567
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->originalOptions:Ljava/util/List;

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method private refreshData()V
    .locals 3

    .line 855
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getAllQuestionsFromCurrentPage()Ljava/util/List;

    move-result-object v0

    .line 856
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 857
    invoke-virtual {v2, v0}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->refreshData(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private regularScaleOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V
    .locals 3

    .line 2954
    check-cast p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

    .line 2956
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2957
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2960
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_regular_scale_common"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2961
    invoke-direct {p0, v0, p2, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->regularScaleTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2962
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private regularScaleTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2969
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_regular_scale_worst_desc"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2970
    iget-object v2, p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->label:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2971
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_regular_scale_best_desc"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2972
    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    iget-object v2, p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2973
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_regular_scale_content_layout"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 2975
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->scoreDisplayType:Ljava/lang/String;

    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2976
    invoke-direct {p0, p2, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->buildRegularScaleNumberRadio(Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2977
    :cond_1
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->scoreDisplayType:Ljava/lang/String;

    const-string v1, "radio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2978
    invoke-direct {p0, p2, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->buildRegularScaleRadioGroup(Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2979
    :cond_2
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->scoreDisplayType:Ljava/lang/String;

    const-string v1, "nps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2980
    invoke-direct {p0, p2, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->buildRegularScaleNPS(Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2981
    :cond_3
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->scoreDisplayType:Ljava/lang/String;

    const-string v1, "star"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->scoreDisplayType:Ljava/lang/String;

    const-string v1, "thumb"

    .line 2982
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->scoreDisplayType:Ljava/lang/String;

    const-string v1, "heart"

    .line 2983
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2984
    :cond_4
    invoke-direct {p0, p2, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->buildRegularScaleOther(Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    :goto_0
    return v3
.end method

.method private resetButtonNormalState(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Z)V
    .locals 3

    .line 2587
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->button:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2588
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_diagnose_selector_button"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2589
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->button:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    if-eqz p2, :cond_0

    const-string p2, "tgs_aics_sumbit"

    goto :goto_0

    :cond_0
    const-string p2, "tgs_aics_next_page"

    :goto_0
    invoke-static {v0, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2590
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->minCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    .line 2591
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    const/4 p1, 0x0

    .line 2592
    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->minCountDownTimer:Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method private saveCurrentPageData()Z
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 3258
    :try_start_0
    iget-object v0, v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->finalSubmitJsonData:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 3259
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->finalSubmitJsonData:Lorg/json/JSONObject;

    .line 3261
    :cond_0
    iget-object v0, v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->finalSubmitJsonDataWithPage:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 3262
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->finalSubmitJsonDataWithPage:Lorg/json/JSONObject;

    .line 3264
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3266
    iget-object v3, v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 3267
    iget-object v6, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    invoke-static {v6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->isNotNeedDealWithQuestionType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 3270
    :cond_3
    iget-boolean v6, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isHidden:Z

    if-eqz v6, :cond_4

    goto :goto_0

    .line 3273
    :cond_4
    instance-of v6, v4, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ""

    const/4 v8, -0x3

    if-eqz v6, :cond_a

    .line 3274
    :try_start_1
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    if-eqz v5, :cond_9

    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 3279
    :cond_5
    check-cast v4, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;

    .line 3281
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;

    .line 3282
    iget-object v8, v6, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->id:Ljava/lang/String;

    iget-object v9, v4, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3283
    iget-object v8, v6, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    if-eqz v8, :cond_6

    iget-object v8, v6, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iget-object v8, v8, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 3284
    iget-object v5, v6, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iget-object v7, v5, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

    .line 3289
    :cond_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 3290
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->id:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 3292
    :cond_8
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->id:Ljava/lang/String;

    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 3275
    :cond_9
    :goto_1
    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 3294
    :cond_a
    instance-of v6, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    if-eqz v6, :cond_12

    .line 3295
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    if-eqz v5, :cond_11

    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    instance-of v5, v5, Ljava/util/List;

    if-eqz v5, :cond_b

    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_b

    goto :goto_5

    .line 3300
    :cond_b
    check-cast v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    .line 3301
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 3302
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3303
    iget-object v8, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v8, v8, Ljava/util/List;

    if-eqz v8, :cond_d

    .line 3304
    iget-object v8, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 3305
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_c

    .line 3306
    check-cast v9, Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3310
    :cond_d
    iget-object v8, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 3311
    iget-object v10, v9, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 3312
    iget-object v10, v9, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    iget-object v11, v9, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    if-eqz v11, :cond_f

    iget-object v11, v9, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iget-object v11, v11, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

    if-eqz v11, :cond_f

    .line 3313
    iget-object v9, v9, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iget-object v9, v9, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

    goto :goto_4

    :cond_f
    move-object v9, v7

    .line 3312
    :goto_4
    invoke-virtual {v5, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 3316
    :cond_10
    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 3296
    :cond_11
    :goto_5
    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 3317
    :cond_12
    instance-of v6, v4, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

    if-eqz v6, :cond_14

    .line 3318
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    if-nez v5, :cond_13

    .line 3319
    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 3323
    :cond_13
    check-cast v4, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

    .line 3324
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->id:Ljava/lang/String;

    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 3325
    :cond_14
    instance-of v6, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "_"

    if-eqz v6, :cond_16

    .line 3326
    :try_start_2
    check-cast v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    .line 3327
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    .line 3328
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->id:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v6, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->id:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3329
    iget-object v10, v6, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    if-eqz v10, :cond_15

    iget-object v6, v6, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    goto :goto_7

    :cond_15
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_7
    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 3331
    :cond_16
    instance-of v6, v4, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

    if-eqz v6, :cond_19

    .line 3332
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    if-eqz v5, :cond_18

    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_8

    .line 3337
    :cond_17
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 3333
    :cond_18
    :goto_8
    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 3338
    :cond_19
    iget-object v6, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v10, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->weight:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 3340
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 3341
    move-object v6, v4

    check-cast v6, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    iget-object v6, v6, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    .line 3342
    iget-object v8, v7, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->id:Ljava/lang/String;

    iget v7, v7, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    float-to-double v9, v7

    invoke-virtual {v5, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_9

    .line 3344
    :cond_1a
    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 3345
    :cond_1b
    iget-object v6, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v10, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixRadio:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v10, "%s_%s"

    const/4 v11, 0x2

    if-eqz v6, :cond_1f

    .line 3346
    :try_start_3
    check-cast v4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    .line 3347
    iget-object v6, v4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    new-array v12, v11, [Ljava/lang/Object;

    .line 3348
    iget-object v13, v4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->id:Ljava/lang/String;

    aput-object v13, v12, v2

    iget-object v13, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->id:Ljava/lang/String;

    aput-object v13, v12, v5

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 3350
    iget-object v13, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_1d

    .line 3353
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1d

    .line 3354
    iget-object v14, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentFormValue:Ljava/util/HashMap;

    if-eqz v14, :cond_1c

    .line 3355
    iget-object v9, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentFormValue:Ljava/util/HashMap;

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_b

    :cond_1c
    move-object v9, v7

    :goto_b
    if-eqz v9, :cond_1e

    .line 3359
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1e

    const-string v14, "%s,%s"

    new-array v15, v11, [Ljava/lang/Object;

    aput-object v13, v15, v2

    aput-object v9, v15, v5

    .line 3360
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_c

    .line 3365
    :cond_1d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 3367
    :cond_1e
    :goto_c
    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a

    .line 3369
    :cond_1f
    iget-object v6, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v12, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixCheckbox:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 3370
    check-cast v4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    .line 3371
    iget-object v6, v4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 3372
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    new-array v13, v11, [Ljava/lang/Object;

    .line 3373
    iget-object v14, v4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->id:Ljava/lang/String;

    aput-object v14, v13, v2

    iget-object v14, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->id:Ljava/lang/String;

    aput-object v14, v13, v5

    invoke-static {v10, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 3375
    iget-object v14, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_23

    .line 3377
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_23

    .line 3378
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_22

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3379
    iget-object v11, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentFormValue:Ljava/util/HashMap;

    if-eqz v11, :cond_21

    .line 3380
    iget-object v11, v9, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentFormValue:Ljava/util/HashMap;

    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_20

    .line 3381
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_20

    .line 3382
    invoke-virtual {v12, v15, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    .line 3384
    :cond_20
    invoke-virtual {v12, v15, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    .line 3387
    :cond_21
    invoke-virtual {v12, v15, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_f
    const/4 v11, 0x2

    goto :goto_e

    .line 3391
    :cond_22
    invoke-virtual {v0, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_10

    .line 3393
    :cond_23
    invoke-virtual {v0, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_10
    const/4 v11, 0x2

    goto :goto_d

    .line 3396
    :cond_24
    instance-of v6, v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    if-eqz v6, :cond_2d

    .line 3397
    iget-object v6, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    if-eqz v6, :cond_2c

    iget-object v6, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    instance-of v6, v6, Ljava/util/List;

    if-eqz v6, :cond_25

    iget-object v6, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_25

    goto/16 :goto_14

    .line 3402
    :cond_25
    check-cast v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    .line 3403
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 3404
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3405
    iget-object v10, v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    instance-of v10, v10, Ljava/util/List;

    if-eqz v10, :cond_27

    .line 3406
    iget-object v10, v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_26
    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_27

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 3407
    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_26

    .line 3408
    check-cast v11, Ljava/lang/String;

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 3413
    :cond_27
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v10, v2

    :cond_28
    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    add-int/2addr v10, v5

    .line 3415
    iget-object v12, v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_29
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_28

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 3416
    iget-object v14, v13, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_29

    .line 3417
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sort"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v13, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v13, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    if-eqz v12, :cond_2a

    iget-object v12, v13, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iget-object v12, v12, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

    if-eqz v12, :cond_2a

    .line 3418
    iget-object v12, v13, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->optionForm:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;

    iget-object v12, v12, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options$OptionForm;->currentValue:Ljava/lang/String;

    goto :goto_13

    :cond_2a
    move-object v12, v7

    .line 3417
    :goto_13
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_12

    .line 3423
    :cond_2b
    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 3398
    :cond_2c
    :goto_14
    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 3424
    :cond_2d
    instance-of v5, v4, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    if-eqz v5, :cond_2

    .line 3426
    check-cast v4, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    .line 3427
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->id:Ljava/lang/String;

    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 3431
    :cond_2e
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 3432
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3433
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3434
    iget-object v6, v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->finalSubmitJsonData:Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_15

    .line 3436
    :cond_2f
    iget-object v3, v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->finalSubmitJsonDataWithPage:Lorg/json/JSONObject;

    iget v4, v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentIndex:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return v5

    :catch_0
    move-exception v0

    .line 3440
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return v2
.end method

.method private setCommonViewVisibility(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;I)V
    .locals 1

    .line 999
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1001
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1002
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1003
    :cond_1
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->dividerView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1004
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->dividerView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    :cond_2
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 1006
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1007
    :cond_3
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 1008
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1009
    :cond_4
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    .line 1010
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1011
    :cond_5
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->etTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1012
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->etTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1013
    :cond_6
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->weightTipMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1014
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->weightTipMsg:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method private setPicItemClick(Landroid/view/View;ILjava/util/ArrayList;ILcom/tgs/aics/bean/questionnaire/FileUploadBean;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;",
            ">;I",
            "Lcom/tgs/aics/bean/questionnaire/FileUploadBean;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move/from16 v3, p2

    move-object/from16 v7, p5

    .line 638
    iget-object v1, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_file_select_layout"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    .line 639
    new-instance v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda38;

    move/from16 v5, p4

    invoke-direct {v1, v6, v7, v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda38;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/FileUploadBean;I)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v1, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_file_select_max_size"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 641
    iget-object v2, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v4, "tgs_aics_questionnaire_file_upload_max_size"

    invoke-static {v2, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v9, v7, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->maxFileSize:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v4, v10

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v1, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_document_preview_layout"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    .line 644
    iget-object v1, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_document_preview_desc"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    .line 646
    iget-object v1, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_file_preview_layout"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/FrameLayout;

    .line 647
    iget-object v1, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_file_preview"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/ImageView;

    .line 648
    iget-object v1, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_video_play_icon"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/ImageView;

    .line 649
    iget-object v1, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_remove_file"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/ImageView;

    const/16 v4, 0x8

    if-ltz v3, :cond_3

    move-object/from16 v2, p3

    .line 651
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;

    .line 652
    new-instance v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda39;

    invoke-direct {v0, v6, v1, v7}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda39;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;Lcom/tgs/aics/bean/questionnaire/FileUploadBean;)V

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    new-instance v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda40;

    move-object/from16 p1, v0

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move/from16 v3, p2

    move v10, v4

    move-object/from16 v4, p5

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda40;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Ljava/util/ArrayList;ILcom/tgs/aics/bean/questionnaire/FileUploadBean;I)V

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 674
    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, v16

    .line 675
    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    iget-object v2, v7, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->allowedFileTypeMap:Ljava/util/HashMap;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/Utils;->isSpecifiedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, v10

    :goto_0
    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    iget-object v2, v7, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->allowedFileTypeMap:Ljava/util/HashMap;

    const-string v4, "image"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/Utils;->isSpecifiedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    iget-object v2, v7, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->allowedFileTypeMap:Ljava/util/HashMap;

    .line 677
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/Utils;->isSpecifiedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 682
    :cond_1
    invoke-virtual {v12, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x0

    .line 683
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 684
    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 678
    invoke-virtual {v12, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 679
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 680
    iget-object v1, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_2

    :cond_3
    move v1, v10

    move v10, v4

    .line 688
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 690
    invoke-virtual {v12, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 691
    invoke-virtual {v15, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 693
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private showDatePickerDialog(Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;Landroid/widget/TextView;I)V
    .locals 11

    .line 3509
    iget-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    if-eqz p2, :cond_3

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_3

    .line 3516
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 3517
    iget-wide v0, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lez v0, :cond_0

    .line 3518
    new-instance v0, Ljava/util/Date;

    iget-wide v6, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minDate:J

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3519
    invoke-virtual {p2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 3520
    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v5

    .line 3521
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    goto :goto_0

    :cond_0
    const/16 v0, 0x76c

    move v6, v5

    move v7, v6

    .line 3523
    :goto_0
    iget-wide v8, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxDate:J

    cmp-long v2, v8, v2

    if-lez v2, :cond_1

    .line 3524
    new-instance v2, Ljava/util/Date;

    iget-wide v8, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxDate:J

    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3525
    invoke-virtual {p2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 3526
    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v5

    .line 3527
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    goto :goto_1

    :cond_1
    const/16 v2, 0x833

    const/16 v3, 0xc

    const/16 p2, 0x1f

    .line 3530
    :goto_1
    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;

    iget-object v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;-><init>(Landroid/app/Activity;)V

    .line 3531
    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->getWheelLayout()Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    move-result-object v4

    .line 3532
    iget-object v8, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    const-string v9, "yearMonth"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 3533
    invoke-virtual {v4, v5}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setDateMode(I)V

    goto :goto_2

    .line 3535
    :cond_2
    invoke-virtual {v4, v9}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setDateMode(I)V

    .line 3536
    :goto_2
    new-instance v8, Lcom/tgs/aics/thirdtool/datapicker/impl/UnitDateFormatter;

    iget-object v10, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v8, v10}, Lcom/tgs/aics/thirdtool/datapicker/impl/UnitDateFormatter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setDateFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;)V

    .line 3538
    invoke-static {v0, v6, v7}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->target(III)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object v0

    .line 3539
    invoke-static {v2, v3, p2}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->target(III)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object p2

    .line 3540
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->today()Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object v2

    .line 3537
    invoke-virtual {v4, v0, p2, v2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V

    .line 3541
    invoke-virtual {v4, v5}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setCurtainEnabled(Z)V

    const p2, -0xce8204

    .line 3542
    invoke-virtual {v4, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setCurtainColor(I)V

    .line 3543
    invoke-virtual {v4, v5}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setIndicatorEnabled(Z)V

    .line 3544
    invoke-virtual {v4, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setIndicatorColor(I)V

    .line 3545
    iget-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    invoke-virtual {v4, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setIndicatorSize(F)V

    const p2, -0xafa39a

    .line 3546
    invoke-virtual {v4, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setTextColor(I)V

    .line 3547
    iget-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v0, 0x41600000    # 14.0f

    mul-float/2addr p2, v0

    invoke-virtual {v4, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setTextSize(F)V

    const/4 p2, -0x1

    .line 3548
    invoke-virtual {v4, p2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setSelectedTextColor(I)V

    .line 3549
    new-instance p2, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0, p1, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda14;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;I)V

    invoke-virtual {v1, p2}, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->setOnDatePickedListener(Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatePickedListener;)V

    .line 3556
    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->getWheelLayout()Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setResetWhenLinkage(Z)V

    .line 3557
    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->show()V

    :cond_3
    return-void
.end method

.method private showDatimePickerDialog(Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;Landroid/widget/TextView;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3446
    iget-object v2, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 3459
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 3460
    iget-wide v3, v1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minDate:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/16 v4, 0xd

    const/16 v7, 0xb

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/16 v10, 0xc

    const/4 v12, 0x1

    if-lez v3, :cond_0

    .line 3461
    iget-wide v13, v1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->minDate:J

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3462
    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 3463
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v13, v12

    .line 3464
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 3465
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 3466
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 3467
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v13

    move v13, v3

    goto :goto_0

    :cond_0
    const/16 v3, 0x76c

    move v13, v3

    move v14, v12

    move v15, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 3469
    :goto_0
    iget-wide v10, v1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxDate:J

    cmp-long v5, v10, v5

    if-lez v5, :cond_1

    .line 3470
    iget-wide v5, v1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->maxDate:J

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3471
    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 3472
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v12

    .line 3473
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 3474
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v9, 0xc

    .line 3475
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 3476
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move/from16 v24, v2

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v22, v7

    move/from16 v21, v8

    move/from16 v23, v9

    goto :goto_1

    :cond_1
    const/16 v9, 0xc

    const/16 v2, 0x3b

    const/16 v5, 0x833

    const/16 v8, 0x1f

    const/16 v7, 0x17

    move/from16 v23, v2

    move/from16 v24, v23

    move/from16 v19, v5

    move/from16 v22, v7

    move/from16 v21, v8

    move/from16 v20, v9

    .line 3479
    :goto_1
    new-instance v2, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;

    iget-object v4, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-direct {v2, v4}, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;-><init>(Landroid/app/Activity;)V

    .line 3480
    invoke-virtual {v2}, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->getWheelLayout()Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;

    move-result-object v4

    .line 3481
    new-instance v5, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda9;

    move/from16 v6, p3

    invoke-direct {v5, v0, v1, v6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda9;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;I)V

    invoke-virtual {v2, v5}, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->setOnDatimePickedListener(Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatimePickedListener;)V

    .line 3487
    invoke-virtual {v2}, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->getWheelLayout()Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setResetWhenLinkage(ZZ)V

    .line 3488
    invoke-virtual {v4, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setDateMode(I)V

    .line 3489
    invoke-virtual {v4, v12}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setTimeMode(I)V

    .line 3490
    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/impl/UnitDateFormatter;

    iget-object v3, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/tgs/aics/thirdtool/datapicker/impl/UnitDateFormatter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setDateFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;)V

    .line 3491
    new-instance v1, Lcom/tgs/aics/thirdtool/datapicker/impl/UnitTimeFormatter;

    iget-object v3, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/tgs/aics/thirdtool/datapicker/impl/UnitTimeFormatter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setTimeFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;)V

    .line 3493
    invoke-static/range {v13 .. v18}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->target(IIIIII)Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object v1

    .line 3494
    invoke-static/range {v19 .. v24}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->target(IIIIII)Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object v3

    .line 3495
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->now()Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object v5

    .line 3492
    invoke-virtual {v4, v1, v3, v5}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;)V

    .line 3496
    invoke-virtual {v4, v12}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setCurtainEnabled(Z)V

    const v1, -0xce8204

    .line 3497
    invoke-virtual {v4, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setCurtainColor(I)V

    .line 3498
    invoke-virtual {v4, v12}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setIndicatorEnabled(Z)V

    .line 3499
    invoke-virtual {v4, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setIndicatorColor(I)V

    .line 3500
    iget-object v1, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    invoke-virtual {v4, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setIndicatorSize(F)V

    const v1, -0xafa39a

    .line 3501
    invoke-virtual {v4, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setTextColor(I)V

    .line 3502
    iget-object v1, v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v1, v3

    invoke-virtual {v4, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setTextSize(F)V

    const/4 v1, -0x1

    .line 3503
    invoke-virtual {v4, v1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setSelectedTextColor(I)V

    .line 3504
    invoke-virtual {v2}, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->show()V

    :cond_2
    return-void
.end method

.method private showMatrixRadioPopupEditText(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;)V
    .locals 4

    .line 3077
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 3078
    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p3, 0x1

    .line 3079
    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setInputType(I)V

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x2

    .line 3080
    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 3081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;->required:Z

    if-eqz v3, :cond_0

    const-string v3, "* "

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p2, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;->placeholder:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3082
    new-instance p2, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$11;

    invoke-direct {p2, p0, p5, p4}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$11;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3102
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/high16 p5, 0x43480000    # 200.0f

    invoke-static {p4, p5}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result p4

    const/4 v1, -0x2

    invoke-direct {p2, p4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3103
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3104
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {p4, p5}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result p4

    sub-int/2addr p2, p4

    div-int/2addr p2, v2

    .line 3106
    new-instance p4, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    .line 3107
    invoke-static {v2, p5}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result p5

    invoke-direct {p4, v0, p5, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 3109
    invoke-virtual {p4, p3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 3110
    invoke-virtual {p4, p3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 p3, 0x0

    .line 3111
    invoke-virtual {p4, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method private showPopupWindow(Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;FLcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;ILjava/lang/String;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v0, p5

    .line 3117
    :try_start_0
    iget-object v1, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_rating_pop"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3119
    iget-object v2, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_questionnaire_rating_pop_half_star"

    invoke-static {v2, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    .line 3120
    iget-object v2, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_questionnaire_rating_pop_full_star"

    invoke-static {v2, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    const-string v2, "heart"

    .line 3121
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3122
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_icon_heart_checked_half"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3123
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_icon_heart_checked"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const-string v2, "thumb"

    .line 3124
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3125
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_icon_thumb_checked_half"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3126
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_icon_thumb_checked"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const-string v2, "star"

    .line 3127
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3128
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_icon_star_checked_half"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3129
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_icon_star_checked"

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3133
    :cond_2
    :goto_0
    new-instance v11, Landroid/widget/PopupWindow;

    const/4 v0, -0x2

    invoke-direct {v11, v1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 3138
    iget-object v0, v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 3139
    invoke-virtual {v11, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 3140
    invoke-virtual {v11, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3142
    invoke-virtual/range {p1 .. p1}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->getPartialViews()Ljava/util/List;

    move-result-object v2

    move/from16 v12, p2

    float-to-int v3, v12

    sub-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x0

    .line 3144
    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 3145
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    .line 3146
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    neg-int v0, v0

    move-object/from16 v13, p1

    .line 3148
    invoke-virtual {v11, v13, v2, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 3150
    new-instance v14, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v11

    move/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda36;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Landroid/widget/PopupWindow;FLcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;I)V

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3165
    new-instance v9, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda37;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v11

    move/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda37;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Landroid/widget/PopupWindow;FLcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;I)V

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private showTipsDialog(Ljava/lang/String;)V
    .locals 2

    .line 2739
    new-instance v0, Lcom/tgs/aics/ui/dialog/TipsDialog;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 2740
    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setTitle(Ljava/lang/String;)V

    .line 2741
    invoke-virtual {v0, p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setContent(Ljava/lang/String;)V

    const/16 p1, 0x11

    .line 2742
    invoke-virtual {v0, p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setContentAlign(I)V

    const/4 p1, 0x0

    .line 2743
    invoke-virtual {v0, p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setLeftButtonVisible(Z)V

    .line 2744
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_confirm"

    invoke-static {p1, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda25;

    invoke-direct {v1, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda25;-><init>(Lcom/tgs/aics/ui/dialog/TipsDialog;)V

    invoke-virtual {v0, p1, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 2745
    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->show()V

    return-void
.end method

.method private sortOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V
    .locals 2

    .line 748
    check-cast p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    .line 750
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    iget-boolean v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    invoke-direct {p0, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getSortQuoteOptions(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    .line 752
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 754
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 757
    :goto_0
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 758
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 759
    invoke-direct {p0, p1, p2, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->addSortOptionLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;I)V

    goto :goto_1

    .line 761
    :cond_1
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_1
    return-void
.end method

.method private sortOptionsRandomLogic(Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;)V
    .locals 6

    .line 4347
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->type:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandomType;->all:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4349
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    goto/16 :goto_3

    .line 4350
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->type:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandomType;->partial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4352
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->randomIds:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->randomIds:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 4354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4355
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    if-nez v2, :cond_1

    goto :goto_0

    .line 4358
    :cond_1
    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4360
    :cond_2
    iget-object v1, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionsRandom:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionsRandom;->randomIds:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->findShuffleIndexFromList(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4363
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4364
    iget-object v4, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4367
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 4369
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4370
    iget-object v3, p1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method private sortTypeInitView(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;I)Z
    .locals 3

    .line 775
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 776
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_options_sort_recycler_view"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    .line 780
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 781
    new-instance v1, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p2, p1, p3}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;I)V

    .line 782
    new-instance v2, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda15;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)V

    invoke-virtual {v1, v2}, Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;->setRecyclerViewRefreshListener(Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter$OnRecyclerViewRefreshListener;)V

    .line 783
    invoke-virtual {p1, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 784
    new-instance v2, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;

    invoke-direct {v2, p0, p2, v0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$1;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;Ljava/util/List;Lcom/tgs/aics/adapter/SortQuestionnaireRecyclerAdapter;)V

    .line 832
    invoke-virtual {p1, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setOnItemMoveListener(Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;)V

    .line 833
    new-instance p2, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda16;

    invoke-direct {p2, p0, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda16;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;I)V

    invoke-virtual {p1, p2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setOnItemStateChangedListener(Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private submitDataOrNextPage(Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;)V
    .locals 4

    .line 2840
    :try_start_0
    iget-boolean p1, p1, Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;->isEnd:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->finalSubmitJsonData:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 2842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->startTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2843
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->finalSubmitJsonData:Lorg/json/JSONObject;

    const-string v2, "time_taken"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2845
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->listener:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;

    if-eqz p1, :cond_1

    .line 2846
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->finalSubmitJsonData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;->onSubmitClick(Ljava/lang/String;)V

    goto :goto_0

    .line 2848
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->next()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2851
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private titleOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V
    .locals 2

    .line 1018
    check-cast p2, Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;

    .line 1019
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1021
    iget-object v0, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->description:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1022
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p2, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda21;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private titleQuoteHandler(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "\\[q(\\d+)]"

    .line 494
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 495
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 498
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 499
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 503
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getAllQuestionsFromCurrentPage()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 504
    iget v4, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->topicNumber:I

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 509
    iget-object v2, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    instance-of v4, v3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;

    if-eqz v4, :cond_4

    .line 514
    move-object v4, v3

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;

    .line 515
    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;

    .line 516
    iget-object v6, v5, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->id:Ljava/lang/String;

    iget-object v7, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 517
    iget-object v3, v5, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->label:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->titleQuoteHtmlHandler(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 521
    :cond_4
    instance-of v4, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    if-eqz v4, :cond_6

    .line 522
    check-cast v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    .line 523
    iget-object v4, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_b

    .line 524
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 525
    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 526
    iget-object v6, v5, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 527
    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->label:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->titleQuoteHtmlHandler(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 531
    :cond_6
    instance-of v4, v3, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;

    if-eqz v4, :cond_7

    .line 532
    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->titleQuoteHtmlHandler(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 533
    :cond_7
    instance-of v4, v3, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

    if-eqz v4, :cond_9

    .line 534
    move-object v4, v3

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

    .line 535
    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    .line 536
    iget-object v6, v5, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->id:Ljava/lang/String;

    iget-object v7, v3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 537
    iget-object v3, v5, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->label:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->titleQuoteHtmlHandler(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 541
    :cond_9
    instance-of v4, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    if-eqz v4, :cond_b

    .line 542
    check-cast v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    .line 543
    iget-object v4, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->currentValue:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_b

    .line 544
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 545
    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 546
    iget-object v6, v5, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->id:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 547
    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->label:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->titleQuoteHtmlHandler(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 552
    :cond_b
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\[q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_c
    return-object p1
.end method

.method private titleQuoteHtmlHandler(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<br/>"

    const-string v1, ""

    .line 563
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<p"

    .line 564
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "</p>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "<span"

    .line 565
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</span>"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private weightOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V
    .locals 9

    .line 2495
    move-object v0, p2

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    .line 2498
    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rowsQuote:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rowsQuote:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;

    iget-boolean v1, v1, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;->isEnabled:Z

    if-eqz v1, :cond_0

    .line 2499
    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rowsQuote:Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;

    invoke-direct {p0, v1, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getWeightQuoteOptions(Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$RowsQuote;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    .line 2500
    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    iput-object v1, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->showRows:Ljava/util/List;

    .line 2501
    iget-object v1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2503
    :cond_0
    iget-object v1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtQuoteTip:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2507
    :goto_0
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->weightSeekBarListMap:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2508
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->weightEditTextListMap:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->id:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2509
    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->optionGroups:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2510
    iget-object v1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2511
    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;

    .line 2512
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2513
    iget-object v5, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->buildGroupNameView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    .line 2514
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 2515
    iget-object v7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v7, v8}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2516
    iget-object v7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2517
    iget-object v7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v7, v8}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2518
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2519
    iget-object v6, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2521
    :cond_1
    iget-object v4, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$OptionGroup;->rows:Ljava/util/List;

    invoke-direct {p0, p1, v0, p3, v4}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->addWeightOptionLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;ILjava/util/List;)V

    goto :goto_1

    .line 2523
    :cond_2
    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2525
    iget-object v1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2526
    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->addWeightOptionLayout(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;ILjava/util/List;)V

    goto :goto_2

    .line 2528
    :cond_3
    iget-object p3, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->optionsRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_4
    :goto_2
    move p3, v3

    move v1, p3

    .line 2532
    :goto_3
    iget-object v4, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p3, v4, :cond_5

    int-to-float v1, v1

    .line 2533
    iget-object v4, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    iget v4, v4, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 2536
    :cond_5
    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const/16 v4, 0x64

    if-gt v1, v4, :cond_7

    iget-boolean p2, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->canSubmit:Z

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    const-string p2, "tgs_aics_questionnaire_weight_tip"

    goto :goto_5

    :cond_7
    :goto_4
    const-string p2, "tgs_aics_questionnaire_weight_modify_tip"

    :goto_5
    invoke-static {p3, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "%d"

    .line 2538
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    .line 2539
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 2540
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2542
    iget-object v1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->weightTipMsg:Landroid/widget/TextView;

    const/high16 v5, -0x10000

    invoke-static {p2, p3, v4, v5}, Lcom/tgs/aics/utils/Utils;->getColoredText(Ljava/lang/String;III)Landroid/text/SpannableString;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2544
    iget-object p2, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    if-eqz p2, :cond_9

    iget-object p2, v0, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_6

    .line 2547
    :cond_8
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->weightTipMsg:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 2545
    :cond_9
    :goto_6
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->weightTipMsg:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    return-void
.end method

.method private weightTypeInitView(Landroid/widget/TextView;Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;I)Z
    .locals 12

    move-object v6, p0

    move-object v0, p2

    move-object v7, p3

    move-object/from16 v8, p4

    .line 1224
    iget-object v1, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_item_weight_row_title"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1225
    iget-object v2, v7, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->title:Ljava/lang/String;

    iget-object v3, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    const/4 v5, 0x0

    const/16 v9, 0x28

    invoke-static {v2, v3, v5, v4, v9}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    iget-object v1, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_item_weight_row_edit"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/EditText;

    const/4 v1, 0x6

    .line 1228
    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1229
    iget-boolean v1, v7, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->isWritten:Z

    if-eqz v1, :cond_0

    .line 1230
    iget v1, v7, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    invoke-static {v1}, Lcom/tgs/aics/utils/Utils;->formatNumber(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 1232
    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    :goto_0
    iget-object v1, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_item_weight_row_seekbar"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/SeekBar;

    .line 1237
    invoke-static {v9, v9}, Lcom/tgs/aics/utils/Utils;->createThumbImage(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1238
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1239
    iget v0, v7, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1240
    new-instance v9, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v10

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$5;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Landroid/widget/EditText;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;Landroid/widget/TextView;)V

    invoke-virtual {v11, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1317
    new-instance v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;

    invoke-direct {v0, p0, v10, p3, v11}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$6;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Landroid/widget/EditText;Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;Landroid/widget/SeekBar;)V

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1403
    iget-object v0, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->weightEditTextListMap:Ljava/util/HashMap;

    iget-object v1, v8, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1405
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    :cond_1
    iget-object v0, v6, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->weightSeekBarListMap:Ljava/util/HashMap;

    iget-object v1, v8, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1409
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public clearAllEditTextFocus()V
    .locals 2

    .line 2831
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2832
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->editTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2833
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public filePick(Lcom/tgs/aics/bean/questionnaire/FileUploadBean;I)V
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 625
    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentFileUploadBean:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    .line 626
    iput p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentFileUploadPosition:I

    .line 628
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x20

    if-gt p1, p2, :cond_0

    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 630
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->QUESTIONNAIRE_SELECT_FILE_REQUEST_STORAGE:I

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 632
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getMultipleContents:Landroidx/activity/result/ActivityResultLauncher;

    const-string p2, "*/*"

    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public fillingDataAndJump2LastAnsweredPage(Ljava/lang/String;)V
    .locals 5

    .line 4136
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4138
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4139
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 4140
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4143
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4145
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4147
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 4149
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4152
    :goto_2
    iget v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentIndex:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->fillingDataNext(Lorg/json/JSONObject;)V

    .line 4153
    iget v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_2

    goto :goto_3

    .line 4155
    :cond_2
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->saveCurrentPageData()Z

    .line 4157
    iget v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentIndex:I

    .line 4158
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->loadNextPage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :goto_3
    return-void
.end method

.method public getAnsweredQuestionJsonData()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->finalSubmitJsonDataWithPage:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFileUploadBean()Lcom/tgs/aics/bean/questionnaire/FileUploadBean;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentFileUploadBean:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    return-object v0
.end method

.method public getCurrentFileUploadPosition()I
    .locals 1

    .line 620
    iget v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentFileUploadPosition:I

    return v0
.end method

.method public getCurrentPageNo()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentIndex:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 3896
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->radio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    .line 254
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->scoreRadio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->checkbox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    .line 257
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->scoreCheckbox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->fillBlank:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixScale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x5

    return p1

    .line 265
    :cond_5
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->paginator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x6

    return p1

    .line 267
    :cond_6
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->end:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x7

    return p1

    .line 269
    :cond_7
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->regularScale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x8

    return p1

    .line 271
    :cond_8
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->npsScale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0x9

    return p1

    .line 273
    :cond_9
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->weight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0xb

    return p1

    .line 275
    :cond_a
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixRadio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0xc

    return p1

    .line 277
    :cond_b
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixCheckbox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p1, 0xd

    return p1

    .line 279
    :cond_c
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->sort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p1, 0xa

    return p1

    .line 281
    :cond_d
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->fileUpload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p1, 0xe

    return p1

    .line 284
    :cond_e
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_f
    :goto_0
    const/4 p1, 0x2

    return p1

    :cond_10
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public handleFileSelected(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 698
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentFileUploadBean:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    if-nez v0, :cond_1

    return-void

    .line 704
    :cond_1
    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentFileUploadBean:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;

    .line 709
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 710
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 711
    iget-object v3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tgs/aics/utils/Utils;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 712
    iget-object v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/tgs/aics/utils/Utils;->getFileSizeFromUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 714
    new-instance v6, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;

    invoke-direct {v6}, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;-><init>()V

    const-string v7, ""

    if-eqz v3, :cond_4

    move-object v8, v3

    goto :goto_1

    :cond_4
    move-object v8, v7

    .line 715
    :goto_1
    iput-object v8, v6, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    if-eqz v3, :cond_5

    move-object v7, v3

    .line 716
    :cond_5
    iput-object v7, v6, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->fileName:Ljava/lang/String;

    .line 717
    iput-wide v4, v6, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->fileSize:J

    .line 718
    iget-object v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentFileUploadBean:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v5, v7, v6}, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->otherLimit(Landroid/content/Context;ILcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 p1, 0x0

    goto :goto_2

    .line 723
    :cond_6
    iget-object v4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questionnaireId:Ljava/lang/String;

    invoke-static {v4, v2, v3, v5}, Lcom/tgs/aics/utils/FileProviderUtils;->getFileAbsolutePath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    .line 727
    :cond_7
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 729
    new-instance v4, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;

    invoke-direct {v4}, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;-><init>()V

    .line 730
    iput-object v2, v4, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    .line 731
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->fileName:Ljava/lang/String;

    .line 732
    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/tgs/aics/utils/Utils;->getFileSizeInBytes(Landroid/content/Context;Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, v4, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->fileSize:J

    .line 733
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_a

    .line 737
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentFileUploadBean:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 738
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 739
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentFileUploadBean:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;

    .line 740
    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 742
    :cond_9
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentFileUploadBean:Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    const-string v1, ","

    invoke-static {v1, p1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->currentValue:Ljava/lang/Object;

    .line 744
    :cond_a
    iget p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->currentFileUploadPosition:I

    invoke-direct {p0, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    :cond_b
    :goto_4
    return-void
.end method

.method public isCurrentPageAllNullCurrentValue()Z
    .locals 8

    .line 195
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 196
    instance-of v3, v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 197
    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    .line 198
    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    .line 199
    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 204
    :cond_2
    instance-of v3, v2, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    if-nez v3, :cond_9

    instance-of v3, v2, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    if-eqz v3, :cond_3

    goto/16 :goto_1

    .line 212
    :cond_3
    instance-of v3, v2, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    if-eqz v3, :cond_5

    .line 213
    check-cast v2, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;

    .line 214
    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;

    .line 215
    iget v3, v3, Lcom/tgs/aics/bean/questionnaire/WeightQuestionBean$Row;->value:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    goto :goto_2

    .line 220
    :cond_5
    instance-of v3, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    if-eqz v3, :cond_8

    .line 221
    move-object v3, v2

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    .line 222
    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 223
    iget-object v6, v5, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    if-eqz v6, :cond_6

    .line 224
    iget-object v6, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v7, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixRadio:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 225
    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 226
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    .line 231
    :cond_7
    iget-object v5, v5, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .line 232
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    move v1, v4

    goto/16 :goto_0

    .line 240
    :cond_8
    iget-object v3, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 205
    :cond_9
    :goto_1
    iget-object v3, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 206
    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 207
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    :goto_2
    move v1, v4

    :cond_a
    return v1
.end method

.method synthetic lambda$addMatrixCheckBoxOptionLayout$13$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Ljava/util/List;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;ILjava/util/List;Landroid/widget/CheckBox;ILandroid/view/View;)V
    .locals 6

    .line 1662
    move-object v0, p7

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 1663
    invoke-virtual {p7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    if-eqz v0, :cond_7

    .line 1665
    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1666
    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    .line 1669
    :cond_0
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-boolean v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionMutex:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1670
    :goto_0
    invoke-interface {p4, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-eq v0, p3, :cond_1

    .line 1672
    invoke-interface {p4, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1673
    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1676
    :cond_2
    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object p4, p4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast p4, Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move v0, v1

    .line 1679
    :goto_1
    invoke-interface {p4, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 1680
    invoke-interface {p4, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    .line 1681
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-boolean v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionMutex:Z

    if-eqz v2, :cond_4

    .line 1682
    invoke-interface {p4, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1683
    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object v3, v3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1687
    :cond_5
    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object p4, p4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast p4, Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1690
    :goto_2
    iget-object p4, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object p4, p4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionForm:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;

    if-eqz p4, :cond_8

    .line 1692
    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object p4, p4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentFormValue:Ljava/util/HashMap;

    if-eqz p4, :cond_6

    .line 1694
    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_3

    :cond_6
    const-string p4, ""

    :goto_3
    move-object v3, p4

    .line 1697
    iget-object p4, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object v2, p4, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionForm:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;

    iget-object p4, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object v4, p3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    move-object v0, p0

    move-object v1, p5

    invoke-direct/range {v0 .. v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->showMatrixRadioPopupEditText(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;)V

    goto :goto_4

    .line 1700
    :cond_7
    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object p4, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object p3, p3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1703
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->isCanSubmit(Landroid/content/Context;)Z

    const/4 p1, -0x1

    .line 1704
    iput p1, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteRowIndex:I

    .line 1705
    iput p1, p2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteColumnIndex:I

    .line 1706
    invoke-direct {p0, p6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method synthetic lambda$addMatrixCheckBoxOptionLayout$14$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;Ljava/util/List;Ljava/util/List;Landroid/widget/HorizontalScrollView;I)V
    .locals 2

    .line 1738
    iget v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteRowIndex:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteColumnIndex:I

    if-ltz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    .line 1740
    iget-object v0, v0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteRowIndex:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getTop()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 1742
    iget p2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteRowIndex:I

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget p3, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteColumnIndex:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 1743
    iget p1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteColumnIndex:I

    mul-int/2addr p1, p5

    invoke-virtual {p4, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1744
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda18;

    invoke-direct {p1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda18;-><init>(Landroid/widget/CheckBox;)V

    const-wide/16 p3, 0x64

    invoke-virtual {p2, p1, p3, p4}, Landroid/widget/CheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method synthetic lambda$addMatrixRadioOptionLayout$11$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Ljava/util/List;Ljava/util/List;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;ILandroid/widget/RadioButton;ILandroid/view/View;)V
    .locals 7

    .line 1507
    invoke-virtual {p7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 1508
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1509
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1511
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object v1, p3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object v1, v1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    iput-object v1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    .line 1513
    check-cast p7, Landroid/widget/RadioButton;

    const/4 p1, 0x1

    invoke-virtual {p7, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1515
    iget-object p1, p3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object v3, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->optionForm:Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;

    if-eqz v3, :cond_2

    .line 1518
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentFormValue:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 1520
    iget-object p7, p3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {p7, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object p7, p7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    invoke-virtual {p1, p7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    move-object v4, p1

    .line 1522
    iget-object p1, p3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->columns:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;

    iget-object v5, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Column;->id:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    move-object v1, p0

    move-object v2, p5

    invoke-direct/range {v1 .. v6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->showMatrixRadioPopupEditText(Landroid/view/View;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$OptionForm;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;)V

    .line 1524
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3, p1}, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->isCanSubmit(Landroid/content/Context;)Z

    const/4 p1, -0x1

    .line 1525
    iput p1, p3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteRowIndex:I

    .line 1526
    iput p1, p3, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteColumnIndex:I

    .line 1527
    invoke-direct {p0, p6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method synthetic lambda$addMatrixRadioOptionLayout$12$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;Ljava/util/List;Ljava/util/List;Landroid/widget/HorizontalScrollView;I)V
    .locals 2

    .line 1557
    iget v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteRowIndex:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteColumnIndex:I

    if-ltz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    check-cast v0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    .line 1559
    iget-object v0, v0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteRowIndex:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getTop()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 1561
    iget p2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteRowIndex:I

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget p3, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteColumnIndex:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    .line 1562
    iget p1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->requireFormNotWriteColumnIndex:I

    mul-int/2addr p1, p5

    invoke-virtual {p4, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1564
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda23;

    invoke-direct {p1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda23;-><init>(Landroid/widget/RadioButton;)V

    const-wide/16 p3, 0x64

    invoke-virtual {p2, p1, p3, p4}, Landroid/widget/RadioButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method synthetic lambda$addMatrixScaleRadioLayout$19$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;ILandroid/widget/RadioGroup;I)V
    .locals 0

    .line 2405
    invoke-virtual {p4, p5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iput-object p4, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    .line 2406
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->isCanSubmit(Landroid/content/Context;)Z

    .line 2407
    invoke-direct {p0, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method synthetic lambda$buildRegularScaleNPS$30$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;ILcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;I)V
    .locals 0

    if-ltz p4, :cond_0

    .line 3204
    iget-object p3, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    iget-object p3, p3, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->id:Ljava/lang/String;

    iput-object p3, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->currentValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 3206
    iput-object p3, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->currentValue:Ljava/lang/Object;

    .line 3208
    :goto_0
    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->isCanSubmit(Landroid/content/Context;)Z

    .line 3209
    invoke-direct {p0, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method synthetic lambda$buildRegularScaleNumberRadio$26$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;ILandroid/widget/CompoundButton;Z)V
    .locals 0

    .line 3015
    invoke-virtual {p3}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->currentValue:Ljava/lang/Object;

    .line 3016
    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->isCanSubmit(Landroid/content/Context;)Z

    .line 3017
    invoke-direct {p0, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method synthetic lambda$buildRegularScaleOther$27$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;ILcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;FZZ)V
    .locals 7

    if-eqz p7, :cond_0

    .line 3062
    iget-object v5, p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->scoreDisplayType:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p5

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->showPopupWindow(Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;FLcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;ILjava/lang/String;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p4, p5, p1

    if-gez p4, :cond_1

    move p5, p1

    .line 3066
    :cond_1
    iget-object p1, p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    float-to-int p4, p5

    add-int/lit8 p4, p4, -0x1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->id:Ljava/lang/String;

    iput-object p1, p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->currentValue:Ljava/lang/Object;

    .line 3067
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->isCanSubmit(Landroid/content/Context;)Z

    .line 3068
    invoke-direct {p0, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$buildRegularScaleRadioGroup$31$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;ILandroid/widget/RadioGroup;I)V
    .locals 0

    .line 3235
    invoke-virtual {p3, p4}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->currentValue:Ljava/lang/Object;

    .line 3236
    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->isCanSubmit(Landroid/content/Context;)Z

    .line 3237
    invoke-direct {p0, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method synthetic lambda$checkboxTypeInitView$34$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 3594
    iget-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const-string v2, "2000"

    .line 3595
    invoke-direct {p0, v2, p1, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->buildMediaInfo(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "aics_media_info_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "aics_current_media_unique_id"

    .line 3596
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3594
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$checkboxTypeInitView$38$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;Ljava/util/List;Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;ILandroid/widget/CompoundButton;Z)V
    .locals 4

    .line 3693
    invoke-virtual {p5}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 3694
    iget-object p6, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroups:Ljava/util/List;

    if-eqz p6, :cond_b

    iget-object p6, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p6

    if-lez p6, :cond_b

    .line 3695
    invoke-interface {p2, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3696
    invoke-interface {p2, p5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 3699
    :cond_0
    iget-object p3, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroupsSetting:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;

    iget-boolean p3, p3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->groupMutex:Z

    const/4 p6, 0x0

    if-eqz p3, :cond_5

    .line 3702
    iget-object p3, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;

    .line 3704
    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->optionIds:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->optionIds:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, p6

    .line 3709
    :goto_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 3710
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3711
    iget-object v3, v0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->optionIds:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v2}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->isOptionBelongGroup(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3712
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3716
    :cond_4
    invoke-interface {p2, p3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 3720
    :cond_5
    iget-object p3, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroupsSetting:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;

    iget-boolean p3, p3, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionGroupsSetting;->withinGroupMutex:Z

    if-eqz p3, :cond_a

    .line 3722
    iget-object p3, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionGroups:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;

    .line 3724
    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->optionIds:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->optionIds:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object p6, v0

    .line 3729
    :cond_7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 3730
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p6, :cond_8

    .line 3731
    iget-object v2, p6, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckboxOptionGroup;->optionIds:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3732
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3736
    :cond_9
    invoke-interface {p2, p3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 3739
    :cond_a
    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3742
    :cond_b
    iget-boolean p3, p3, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->isOptionMutex:Z

    if-eqz p3, :cond_d

    .line 3746
    invoke-interface {p2, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 3747
    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_5

    .line 3749
    :cond_c
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 3750
    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3753
    :cond_d
    invoke-interface {p2, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 3754
    invoke-interface {p2, p5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3757
    :cond_e
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 3758
    iget-object p6, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :cond_f
    :goto_3
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 3759
    iget-boolean v1, v0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->isOptionMutex:Z

    if-eqz v1, :cond_f

    .line 3760
    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->id:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3762
    :cond_10
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_11
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_12

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 3763
    invoke-interface {p2, p6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3764
    invoke-interface {p2, p6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3766
    :cond_12
    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3770
    :goto_5
    iput-object p2, p1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->currentValue:Ljava/lang/Object;

    .line 3771
    iget-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->isCanSubmit(Landroid/content/Context;)Z

    .line 3772
    invoke-direct {p0, p4}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method synthetic lambda$commonDealWith$5$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;ILcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;)V
    .locals 3

    .line 879
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->originalTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->displayedTitle:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    new-instance v2, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$2;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V

    .line 912
    iget-boolean p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->displayQuestionNumber:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x3c

    goto :goto_1

    :cond_1
    const/16 p1, 0x28

    :goto_1
    const/4 p2, 0x0

    .line 879
    invoke-static {v0, v1, v2, p2, p1}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object p1

    .line 913
    iget-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    new-instance v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda22;

    invoke-direct {v0, p3, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda22;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$commonDealWith$7$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;)V
    .locals 4

    .line 921
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->originalDescription:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->description:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    new-instance v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$3;

    invoke-direct {v1, p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$3;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)V

    const/4 v2, 0x0

    const/16 v3, 0x28

    .line 921
    invoke-static {p1, v0, v1, v2, v3}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object p1

    .line 934
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda29;

    invoke-direct {v1, p2, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda29;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$commonDealWith$8$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;Landroid/view/View;)V
    .locals 3

    .line 959
    iget-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->titleConfig:Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig;->video:Ljava/util/List;

    const/4 v1, 0x0

    .line 960
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$TitleConfig$VideoConfig;->url:Ljava/lang/String;

    const-string v1, "video_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 959
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$endOnBindViewHolder$25$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Landroid/view/View;)V
    .locals 9

    .line 2896
    :try_start_0
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->canLoadNextPageOrSubmit()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2898
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2899
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 2900
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    if-eqz v2, :cond_0

    .line 2901
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2904
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 2907
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    new-instance v6, Lcom/tgs/aics/ui/dialog/LoadingDialog;

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$10;

    invoke-direct {v8, p0, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$10;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->fileUpload(ILcom/tgs/aics/bean/questionnaire/FileUploadBean;ILcom/tgs/aics/ui/dialog/LoadingDialog;Ljava/util/ArrayList;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;)V

    goto :goto_1

    .line 2935
    :cond_2
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->saveCurrentPageData()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2937
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->startTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2938
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->finalSubmitJsonData:Lorg/json/JSONObject;

    const-string v2, "time_taken"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2940
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->listener:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;

    if-eqz p1, :cond_3

    .line 2941
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->finalSubmitJsonData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;->onSubmitClick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2948
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method synthetic lambda$fileUpload$22$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/UploadResultBean;Ljava/util/ArrayList;ILcom/tgs/aics/bean/questionnaire/FileUploadBean;ILcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;)V
    .locals 7

    .line 2778
    invoke-virtual {p1}, Lcom/tgs/aics/bean/UploadResultBean;->isSuccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2780
    sget-boolean v0, Lcom/tgs/aics/utils/ConstantUtil;->isDomestic:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tgs/aics/bean/UploadResultBean;->getFileUrlCn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/tgs/aics/bean/UploadResultBean;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, p5, -0x1

    move-object v0, p0

    move v1, p3

    move-object v2, p4

    move-object v4, p6

    move-object v5, p2

    move-object v6, p7

    .line 2781
    invoke-direct/range {v0 .. v6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->fileUpload(ILcom/tgs/aics/bean/questionnaire/FileUploadBean;ILcom/tgs/aics/ui/dialog/LoadingDialog;Ljava/util/ArrayList;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;)V

    goto :goto_1

    :cond_1
    if-eqz p6, :cond_2

    .line 2784
    invoke-virtual {p6}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2785
    invoke-virtual {p6}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dismiss()V

    .line 2786
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_questionnaire_file_upload_fail_tips"

    invoke-static {v2, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p5, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2787
    invoke-virtual {p1}, Lcom/tgs/aics/bean/UploadResultBean;->getMsg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image check failure"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2788
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v3, "tgs_aics_questionnaire_file_upload_fail_tips_check_fail"

    invoke-static {v0, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2790
    :cond_3
    invoke-direct {p0, v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->showTipsDialog(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$fileUpload$23$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(ILcom/tgs/aics/ui/dialog/LoadingDialog;)V
    .locals 3

    .line 2797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v2, "tgs_aics_questionnaire_file_upload_fail_tips"

    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->showTipsDialog(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2798
    invoke-virtual {p2}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2799
    invoke-virtual {p2}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method synthetic lambda$fileUpload$24$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;Lcom/tgs/aics/bean/questionnaire/FileUploadBean;Ljava/util/ArrayList;IILcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;)V
    .locals 12

    move-object v10, p0

    move-object v0, p1

    move-object v6, p2

    .line 2767
    :try_start_0
    new-instance v1, Lcom/tgs/aics/http/HttpPostMultipart;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tgs/aics/http/HttpPostMultipart;-><init>(Ljava/util/Map;)V

    .line 2769
    iget-object v2, v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    iget-object v3, v6, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->allowedFileTypeMap:Ljava/util/HashMap;

    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tgs/aics/utils/Utils;->isSpecifiedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2770
    iget-object v2, v10, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tgs/aics/utils/Utils;->getCompressBitmapPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 2772
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 2774
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v6, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->allowedFileTypeMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Lcom/tgs/aics/utils/Utils;->buildMimeTypeByFilePath(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    .line 2775
    invoke-virtual {v1, v3, v0, v2}, Lcom/tgs/aics/http/HttpPostMultipart;->addFilePartWithContentType(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 2776
    invoke-virtual {v1}, Lcom/tgs/aics/http/HttpPostMultipart;->finish()Lcom/tgs/aics/bean/UploadResultBean;

    move-result-object v3

    .line 2777
    iget-object v0, v10, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v11, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;

    move-object v1, v11

    move-object v2, p0

    move-object v4, p3

    move/from16 v5, p4

    move-object v6, p2

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda11;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Lcom/tgs/aics/bean/UploadResultBean;Ljava/util/ArrayList;ILcom/tgs/aics/bean/questionnaire/FileUploadBean;ILcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;)V

    invoke-virtual {v0, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2794
    invoke-static {v0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    .line 2796
    iget-object v0, v10, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda12;

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v1, p0, v2, v3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda12;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;ILcom/tgs/aics/ui/dialog/LoadingDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$fillBlankOnBindViewHolder$15$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Landroid/view/View;Z)V
    .locals 0

    .line 2196
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p4, :cond_0

    .line 2197
    iget p4, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->mFocusPosition:I

    if-ne p4, p3, :cond_0

    .line 2198
    iget-object p2, p2, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    goto :goto_0

    .line 2200
    :cond_0
    iput p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->mFocusPosition:I

    :goto_0
    return-void
.end method

.method synthetic lambda$fillBlankOnBindViewHolder$16$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;ILandroid/view/View;)V
    .locals 1

    .line 2231
    iget-object p4, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    const-string v0, "yearMonth"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 2232
    iget-object p2, p2, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->etTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->showDatePickerDialog(Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;Landroid/widget/TextView;I)V

    goto :goto_0

    .line 2233
    :cond_0
    iget-object p4, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    const-string v0, "date"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 2234
    iget-object p2, p2, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->etTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->showDatimePickerDialog(Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;Landroid/widget/TextView;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$matrixScaleNpsTypeInitView$18$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;Ljava/util/List;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;ILcom/tgs/aics/thirdtool/nps/NewNpsRatingBar;I)V
    .locals 0

    if-ltz p6, :cond_0

    .line 2338
    invoke-interface {p2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;

    iget-object p2, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;->id:Ljava/lang/String;

    iput-object p2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 2340
    iput-object p2, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    .line 2342
    :goto_0
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3, p1}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->isCanSubmit(Landroid/content/Context;)Z

    .line 2343
    invoke-direct {p0, p4}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method synthetic lambda$matrixScaleOtherTypeInitView$17$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;ILcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;Ljava/util/List;Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;FZZ)V
    .locals 8

    move-object v7, p0

    move-object v3, p2

    if-eqz p9, :cond_0

    .line 2299
    iget-object v5, v3, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->scoreDisplayType:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p7

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->showPopupWindow(Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;FLcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;ILjava/lang/String;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;)V

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p7, v0

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p7

    :goto_0
    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    move-object v1, p5

    .line 2303
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;->id:Ljava/lang/String;

    move-object v1, p4

    iput-object v0, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    .line 2304
    iget-object v0, v7, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->isCanSubmit(Landroid/content/Context;)Z

    move v0, p3

    .line 2305
    invoke-direct {p0, p3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    :goto_1
    return-void
.end method

.method synthetic lambda$paginatorOnBindViewHolder$20$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;Landroid/view/View;)V
    .locals 9

    .line 2697
    :try_start_0
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->clearAllEditTextFocus()V

    .line 2698
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->canLoadNextPageOrSubmit()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2700
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2701
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 2702
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    if-eqz v2, :cond_0

    .line 2703
    check-cast v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2706
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 2709
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->selectedFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    new-instance v6, Lcom/tgs/aics/ui/dialog/LoadingDialog;

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$9;

    invoke-direct {v8, p0, p2, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$9;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;Ljava/util/ArrayList;Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;)V

    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->fileUpload(ILcom/tgs/aics/bean/questionnaire/FileUploadBean;ILcom/tgs/aics/ui/dialog/LoadingDialog;Ljava/util/ArrayList;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IFileUploadCompleteListener;)V

    goto :goto_1

    .line 2727
    :cond_2
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->saveCurrentPageData()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2728
    invoke-direct {p0, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->submitDataOrNextPage(Lcom/tgs/aics/bean/questionnaire/PaginationQuestionBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2733
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method synthetic lambda$radioTypeInitView$39$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 3791
    iget-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const-string v2, "1000"

    .line 3792
    invoke-direct {p0, v2, p1, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->buildMediaInfo(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "aics_media_info_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "aics_current_media_unique_id"

    .line 3793
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3791
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$radioTypeInitView$43$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;ILandroid/widget/CompoundButton;Z)V
    .locals 0

    .line 3886
    invoke-virtual {p3}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->currentValue:Ljava/lang/Object;

    .line 3887
    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->isCanSubmit(Landroid/content/Context;)Z

    .line 3888
    invoke-direct {p0, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method synthetic lambda$setPicItemClick$0$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/FileUploadBean;ILandroid/view/View;)V
    .locals 0

    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->filePick(Lcom/tgs/aics/bean/questionnaire/FileUploadBean;I)V

    return-void
.end method

.method synthetic lambda$setPicItemClick$1$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;Lcom/tgs/aics/bean/questionnaire/FileUploadBean;Landroid/view/View;)V
    .locals 2

    .line 653
    iget-object p3, p1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    iget-object v0, p2, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->allowedFileTypeMap:Ljava/util/HashMap;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/tgs/aics/utils/Utils;->isSpecifiedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 655
    iget-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    new-instance p3, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-class v1, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "video_url"

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 656
    :cond_0
    iget-object p3, p1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    iget-object p2, p2, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->allowedFileTypeMap:Ljava/util/HashMap;

    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/tgs/aics/utils/Utils;->isSpecifiedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 658
    iget-object p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    new-instance p3, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-class v1, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "image_url"

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$setPicItemClick$2$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Ljava/util/ArrayList;ILcom/tgs/aics/bean/questionnaire/FileUploadBean;ILandroid/view/View;)V
    .locals 0

    .line 662
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 663
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 664
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;

    .line 665
    iget-object p5, p5, Lcom/tgs/aics/bean/questionnaire/FileUploadBean$FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, ","

    .line 667
    invoke-static {p1, p2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->currentValue:Ljava/lang/Object;

    .line 669
    invoke-direct {p0, p4}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method synthetic lambda$showDatePickerDialog$33$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;IIII)V
    .locals 4

    .line 3550
    iget-object v0, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->inputType:Ljava/lang/String;

    const-string v1, "yearMonth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array p5, v1, [Ljava/lang/Object;

    .line 3551
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p5, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p5, v2

    const-string p3, "%04d-%02d"

    invoke-static {p3, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "%04d-%02d-%02d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 3552
    :goto_0
    iput-object p3, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    .line 3553
    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->isCanSubmit(Landroid/content/Context;)Z

    .line 3554
    invoke-direct {p0, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method synthetic lambda$showDatimePickerDialog$32$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;IIIIIII)V
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3482
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const/4 p3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, p3

    const/4 p3, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, p3

    const/4 p3, 0x3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, p3

    const/4 p3, 0x4

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, p3

    const/4 p3, 0x5

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, p3

    const-string p3, "%04d-%02d-%02d %02d:%02d:%02d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 3483
    iput-object p3, p1, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->currentValue:Ljava/lang/Object;

    .line 3484
    iget-object p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lcom/tgs/aics/bean/questionnaire/FillBlankQuestionBean;->isCanSubmit(Landroid/content/Context;)Z

    .line 3485
    invoke-direct {p0, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method synthetic lambda$showPopupWindow$28$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Landroid/widget/PopupWindow;FLcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;ILandroid/view/View;)V
    .locals 0

    .line 3151
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    const/high16 p1, 0x3f000000    # 0.5f

    sub-float/2addr p2, p1

    .line 3153
    invoke-virtual {p3, p2}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->publicFillRatingBar(F)V

    .line 3155
    instance-of p1, p4, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 p7, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 3156
    move-object p1, p4

    check-cast p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

    .line 3157
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    mul-float/2addr p2, p7

    sub-float/2addr p2, p3

    float-to-int p2, p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->id:Ljava/lang/String;

    iput-object p1, p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    goto :goto_0

    .line 3158
    :cond_0
    instance-of p1, p4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    if-eqz p1, :cond_1

    .line 3159
    move-object p1, p4

    check-cast p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    .line 3160
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->columns:Ljava/util/List;

    mul-float/2addr p2, p7

    sub-float/2addr p2, p3

    float-to-int p2, p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;->id:Ljava/lang/String;

    iput-object p1, p5, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    .line 3162
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p4, p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isCanSubmit(Landroid/content/Context;)Z

    .line 3163
    invoke-direct {p0, p6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method synthetic lambda$showPopupWindow$29$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Landroid/widget/PopupWindow;FLcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;ILandroid/view/View;)V
    .locals 0

    .line 3166
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    float-to-double p1, p2

    .line 3167
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 3168
    invoke-virtual {p3, p1}, Lcom/tgs/aics/thirdtool/ratingbar/NewBaseRatingBar;->publicFillRatingBar(F)V

    .line 3170
    instance-of p2, p4, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 p7, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 3171
    move-object p2, p4

    check-cast p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

    .line 3172
    iget-object p2, p2, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;->options:Ljava/util/List;

    mul-float/2addr p1, p7

    sub-float/2addr p1, p3

    float-to-int p1, p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean$RegularScaleOption;->id:Ljava/lang/String;

    iput-object p1, p4, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    goto :goto_0

    .line 3173
    :cond_0
    instance-of p2, p4, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    if-eqz p2, :cond_1

    .line 3174
    move-object p2, p4

    check-cast p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    .line 3175
    iget-object p2, p2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->columns:Ljava/util/List;

    mul-float/2addr p1, p7

    sub-float/2addr p1, p3

    float-to-int p1, p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Columns;->id:Ljava/lang/String;

    iput-object p1, p5, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    .line 3177
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p4, p1}, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isCanSubmit(Landroid/content/Context;)Z

    .line 3178
    invoke-direct {p0, p6}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    return-void
.end method

.method synthetic lambda$sortTypeInitView$3$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    .line 840
    invoke-direct {p0, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->notifyDataChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$titleOnBindViewHolder$10$com-tgs-aics-adapter-QuestionnaireRecyclerAdapter(Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;)V
    .locals 4

    .line 1023
    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/TitleQuestionBean;->description:Ljava/lang/String;

    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    new-instance v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$4;

    invoke-direct {v1, p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$4;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;)V

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-static {p1, v0, v1, v2, v3}, Lcom/tgs/aics/utils/Utils;->getClickableHtml(Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IHtmlHrefClickListener;FI)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1035
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda17;

    invoke-direct {v1, p2, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$$ExternalSyntheticLambda17;-><init>(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 113
    check-cast p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->onBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;I)V
    .locals 13

    .line 318
    invoke-virtual {p0, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getItemViewType(I)I

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questions:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    if-nez v1, :cond_0

    return-void

    .line 324
    :cond_0
    iget-boolean v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isHidden:Z

    const/16 v3, 0x8

    if-nez v2, :cond_36

    iget-boolean v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isRelationHidden:Z

    if-eqz v2, :cond_1

    goto/16 :goto_d

    .line 330
    :cond_1
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    .line 331
    move-object v6, v1

    check-cast v6, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;

    .line 332
    iget-object v7, v6, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    iget-boolean v7, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->isEnabled:Z

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_0

    :cond_2
    move v7, v4

    .line 335
    :goto_0
    iget-object v6, v6, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean;->options:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;

    .line 336
    invoke-direct {p0, v8}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->isOptionRelationHidden(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;)Z

    move-result v9

    iput-boolean v9, v8, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->isOptionRelationHidden:Z

    if-eqz v7, :cond_4

    .line 337
    iget-boolean v7, v8, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->isHidden:Z

    if-nez v7, :cond_3

    iget-boolean v7, v8, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;->isOptionRelationHidden:Z

    if-eqz v7, :cond_4

    :cond_3
    move v7, v4

    goto :goto_1

    :cond_4
    move v7, v5

    goto :goto_1

    .line 339
    :cond_5
    instance-of v6, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    if-eqz v6, :cond_9

    .line 340
    move-object v6, v1

    check-cast v6, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    .line 341
    iget-object v7, v6, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    iget-boolean v7, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->isEnabled:Z

    if-eqz v7, :cond_6

    move v7, v5

    goto :goto_2

    :cond_6
    move v7, v4

    .line 344
    :goto_2
    iget-object v6, v6, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;->options:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;

    .line 345
    invoke-direct {p0, v8}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->isOptionRelationHidden(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;)Z

    move-result v9

    iput-boolean v9, v8, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->isOptionRelationHidden:Z

    if-eqz v7, :cond_8

    .line 346
    iget-boolean v7, v8, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->isHidden:Z

    if-nez v7, :cond_7

    iget-boolean v7, v8, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean$CheckBoxOptions;->isOptionRelationHidden:Z

    if-eqz v7, :cond_8

    :cond_7
    move v7, v4

    goto :goto_3

    :cond_8
    move v7, v5

    goto :goto_3

    .line 348
    :cond_9
    instance-of v6, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    if-eqz v6, :cond_d

    .line 349
    move-object v6, v1

    check-cast v6, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    .line 350
    iget-object v7, v6, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    if-eqz v7, :cond_a

    iget-object v7, v6, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->optionQuote:Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;

    iget-boolean v7, v7, Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$OptionQuote;->isEnabled:Z

    if-eqz v7, :cond_a

    move v7, v5

    goto :goto_4

    :cond_a
    move v7, v4

    .line 353
    :goto_4
    iget-object v6, v6, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;->options:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;

    .line 354
    invoke-direct {p0, v8}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->isOptionRelationHidden(Lcom/tgs/aics/bean/questionnaire/RadioQuestionBean$Options;)Z

    move-result v9

    iput-boolean v9, v8, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->isOptionRelationHidden:Z

    if-eqz v7, :cond_c

    .line 355
    iget-boolean v7, v8, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->isHidden:Z

    if-nez v7, :cond_b

    iget-boolean v7, v8, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean$SortOptions;->isOptionRelationHidden:Z

    if-eqz v7, :cond_c

    :cond_b
    move v7, v4

    goto :goto_5

    :cond_c
    move v7, v5

    goto :goto_5

    :cond_d
    move v7, v5

    :cond_e
    if-eqz v7, :cond_f

    .line 361
    invoke-direct {p0, p1, v3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->setCommonViewVisibility(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;I)V

    return-void

    .line 366
    :cond_f
    invoke-direct {p0, p1, v5}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->setCommonViewVisibility(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;I)V

    .line 369
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->topicNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 370
    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v8, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->description:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_10

    move-object v6, v8

    .line 372
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "<font color=\'#8a8a8a\'>"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getStringByQuestionType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "</font>"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 373
    iget-object v9, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v10, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->fileUpload:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    instance-of v9, v1, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    if-eqz v9, :cond_11

    .line 374
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "<font color=\'#8a8a8a\'>\u3010"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v11, "tgs_aics_questionnaire_file_upload_max_count"

    invoke-static {v10, v11}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    iget v12, v12, Lcom/tgs/aics/bean/questionnaire/FileUploadBean;->maxFileCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u3011</font>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_11
    move-object v9, v8

    .line 376
    :goto_6
    iget-object v10, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleNumber:Landroid/widget/TextView;

    if-eqz v10, :cond_12

    .line 377
    iget-object v10, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleNumber:Landroid/widget/TextView;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    :cond_12
    iget-boolean v10, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->displayQuestionNumber:Z

    if-eqz v10, :cond_14

    iget-boolean v11, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->displayQuestionTag:Z

    if-eqz v11, :cond_14

    .line 379
    iget-object v10, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleNumber:Landroid/widget/TextView;

    if-eqz v10, :cond_13

    .line 380
    iget-object v10, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleNumber:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v10, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleNumber:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->title:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->displayedTitle:Ljava/lang/String;

    goto :goto_7

    .line 384
    :cond_14
    iget-boolean v11, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->displayQuestionTag:Z

    if-eqz v11, :cond_15

    .line 385
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->title:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->displayedTitle:Ljava/lang/String;

    goto :goto_7

    :cond_15
    if-eqz v10, :cond_17

    .line 387
    iget-object v7, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleNumber:Landroid/widget/TextView;

    if-eqz v7, :cond_16

    .line 388
    iget-object v7, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleNumber:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v7, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->titleNumber:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    :cond_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->displayedTitle:Ljava/lang/String;

    goto :goto_7

    .line 393
    :cond_17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->displayedTitle:Ljava/lang/String;

    .line 396
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<font color=\'#888888\'>\u3010</font><a href=\'aics://questionnaire_clear_all_selections\'>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v9, "tgs_aics_questionnaire_clear_all_selections"

    invoke-static {v7, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</a><font color=\'#888888\'>\u3011</font>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 397
    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v9, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixScale:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v9, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->regularScale:Ljava/lang/String;

    .line 398
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v9, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->npsScale:Ljava/lang/String;

    .line 399
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v9, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->radio:Ljava/lang/String;

    .line 400
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v9, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->scoreRadio:Ljava/lang/String;

    .line 401
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v9, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->checkbox:Ljava/lang/String;

    .line 402
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v9, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->scoreCheckbox:Ljava/lang/String;

    .line 403
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v9, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->sort:Ljava/lang/String;

    .line 404
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v9, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixRadio:Ljava/lang/String;

    .line 405
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v9, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixCheckbox:Ljava/lang/String;

    .line 406
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    :cond_18
    iget-boolean v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->isRequired:Z

    if-nez v7, :cond_22

    .line 407
    instance-of v7, v1, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    if-eqz v7, :cond_1a

    .line 408
    move-object v2, v1

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;

    .line 409
    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;

    .line 410
    iget-object v7, v7, Lcom/tgs/aics/bean/questionnaire/MatrixScaleQuestionBean$Rows;->currentValue:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_19

    goto :goto_8

    .line 415
    :cond_1a
    instance-of v7, v1, Lcom/tgs/aics/bean/questionnaire/RegularScaleBean;

    if-nez v7, :cond_1b

    if-eqz v2, :cond_1c

    :cond_1b
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    :goto_8
    move v2, v4

    goto/16 :goto_9

    .line 417
    :cond_1c
    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/CheckboxQuestionBean;

    if-nez v2, :cond_1d

    instance-of v2, v1, Lcom/tgs/aics/bean/questionnaire/SortQuestionBean;

    if-eqz v2, :cond_1e

    :cond_1d
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    if-eqz v2, :cond_1e

    .line 418
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_22

    .line 419
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->currentValue:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 420
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_22

    goto :goto_8

    .line 423
    :cond_1e
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v7, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixRadio:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 424
    move-object v2, v1

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    .line 425
    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 426
    iget-object v7, v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 427
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1f

    goto :goto_8

    .line 432
    :cond_20
    iget-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v7, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->matrixCheckbox:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 433
    move-object v2, v1

    check-cast v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;

    .line 434
    iget-object v2, v2, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;

    .line 435
    iget-object v7, v7, Lcom/tgs/aics/bean/questionnaire/MatrixRadioQuestionBean$Row;->currentValue:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_21

    .line 436
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_21

    goto :goto_8

    :cond_22
    move v2, v5

    .line 443
    :goto_9
    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->displayedTitle:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->titleQuoteHandler(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->displayedTitle:Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->displayedTitle:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->displayedTitle:Ljava/lang/String;

    .line 447
    :cond_23
    invoke-direct {p0, p1, v1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->commonDealWith(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V

    if-nez v0, :cond_24

    .line 450
    invoke-direct {p0, p1, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->titleOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V

    goto/16 :goto_b

    :cond_24
    if-ne v0, v4, :cond_25

    .line 452
    invoke-direct {p0, p1, v1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->radioOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V

    goto/16 :goto_b

    :cond_25
    const/4 v2, 0x2

    if-ne v0, v2, :cond_26

    .line 454
    invoke-direct {p0, p1, v1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->checkboxOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V

    goto :goto_b

    :cond_26
    const/4 v2, 0x3

    if-ne v0, v2, :cond_27

    .line 456
    invoke-direct {p0, p1, v1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->fillBlankOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V

    goto :goto_b

    :cond_27
    const/4 v2, 0x4

    if-ne v0, v2, :cond_28

    .line 458
    invoke-direct {p0, p1, v1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->matrixScaleOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V

    goto :goto_b

    :cond_28
    const/4 v2, 0x5

    if-ne v0, v2, :cond_29

    .line 460
    invoke-direct {p0, p1, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->descriptionOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V

    goto :goto_b

    :cond_29
    const/4 v2, 0x6

    if-ne v0, v2, :cond_2a

    .line 462
    invoke-direct {p0, p1, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->paginatorOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V

    goto :goto_b

    :cond_2a
    const/4 v2, 0x7

    if-ne v0, v2, :cond_2b

    .line 464
    invoke-direct {p0, p1, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->endOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;)V

    goto :goto_b

    :cond_2b
    if-eq v0, v3, :cond_31

    const/16 v2, 0x9

    if-ne v0, v2, :cond_2c

    goto :goto_a

    :cond_2c
    const/16 v2, 0xb

    if-ne v0, v2, :cond_2d

    .line 468
    invoke-direct {p0, p1, v1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->weightOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V

    goto :goto_b

    :cond_2d
    const/16 v2, 0xc

    if-ne v0, v2, :cond_2e

    .line 470
    invoke-direct {p0, p1, v1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->matrixRadioOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V

    goto :goto_b

    :cond_2e
    const/16 v2, 0xd

    if-ne v0, v2, :cond_2f

    .line 472
    invoke-direct {p0, p1, v1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->matrixCheckboxOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V

    goto :goto_b

    :cond_2f
    const/16 v2, 0xa

    if-ne v0, v2, :cond_30

    .line 474
    invoke-direct {p0, p1, v1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->sortOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V

    goto :goto_b

    :cond_30
    const/16 v2, 0xe

    if-ne v0, v2, :cond_32

    .line 476
    invoke-direct {p0, p1, v1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->fileUploadOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V

    goto :goto_b

    .line 466
    :cond_31
    :goto_a
    invoke-direct {p0, p1, v1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->regularScaleOnBindViewHolder(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;I)V

    .line 479
    :cond_32
    :goto_b
    iget-object p2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtErrorMsg:Landroid/widget/TextView;

    if-eqz p2, :cond_35

    .line 480
    iget-object p2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtErrorMsg:Landroid/widget/TextView;

    iget-boolean v0, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->canSubmit:Z

    if-eqz v0, :cond_33

    move v5, v3

    :cond_33
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    iget-object p2, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtErrorMsg:Landroid/widget/TextView;

    iget-boolean v0, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->canSubmit:Z

    if-eqz v0, :cond_34

    goto :goto_c

    :cond_34
    iget-object v8, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->cannotSubmitReason:Ljava/lang/String;

    :goto_c
    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object p2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->cannotSubmitReason:Ljava/lang/String;

    if-eqz p2, :cond_35

    iget-object p2, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->cannotSubmitReason:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_35

    .line 485
    iget-object p1, p1, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;->txtErrorMsg:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_35
    return-void

    .line 325
    :cond_36
    :goto_d
    invoke-direct {p0, p1, v3}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->setCommonViewVisibility(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;
    .locals 3

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 292
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_title"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_b

    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_fill_blank"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_3

    :cond_2
    const/4 v0, 0x4

    if-eq p2, v0, :cond_a

    const/16 v0, 0x8

    if-eq p2, v0, :cond_a

    const/16 v0, 0x9

    if-ne p2, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 300
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_description"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_3

    :cond_4
    const/4 v0, 0x6

    if-ne p2, v0, :cond_5

    .line 302
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_paginator"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    :cond_5
    const/16 v0, 0xb

    if-ne p2, v0, :cond_6

    .line 304
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_weight"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    :cond_6
    const/16 v0, 0xc

    if-eq p2, v0, :cond_9

    const/16 v0, 0xd

    if-ne p2, v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0xe

    if-ne p2, v0, :cond_8

    .line 308
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_file_upload"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    .line 310
    :cond_8
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_end"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    .line 306
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_matrix_radio"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    .line 298
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_matrix_scale"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    .line 294
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    const-string v1, "tgs_aics_questionnaire_item_radio"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 312
    :goto_3
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    new-instance v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;

    iget-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, p1, p2, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapterViewHolder;-><init>(Landroid/view/View;ILandroid/content/Context;)V

    return-object v0
.end method

.method public publicSaveCurrentPageData()Z
    .locals 1

    .line 3253
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->saveCurrentPageData()Z

    move-result v0

    return v0
.end method

.method public releaseCountDownTimer()V
    .locals 2

    .line 2597
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->minCountDownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2598
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2599
    iput-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->minCountDownTimer:Landroid/os/CountDownTimer;

    .line 2601
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->maxCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 2602
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2603
    iput-object v1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->maxCountDownTimer:Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method public setButtonClickListener(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;)V
    .locals 0

    .line 4573
    iput-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->listener:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;

    return-void
.end method

.method public setData(Ljava/util/List;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;",
            ">;ZZ)V"
        }
    .end annotation

    .line 4166
    iput-boolean p2, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->displayQuestionNumber:Z

    .line 4167
    iput-boolean p3, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->displayQuestionTag:Z

    if-eqz p1, :cond_3

    .line 4169
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;

    .line 4172
    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->paginator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean;->questionType:Ljava/lang/String;

    sget-object v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireCommonBean$QuestionType;->end:Ljava/lang/String;

    .line 4173
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4178
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4174
    :cond_1
    :goto_1
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4175
    iget-object v0, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questionMap:Ljava/util/Map;

    add-int/lit8 v1, p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4176
    invoke-interface {p2}, Ljava/util/List;->clear()V

    move p3, v1

    goto :goto_0

    .line 4181
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4182
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questionMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4184
    :cond_3
    iget-object p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->questionMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iput p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->totalPageNumber:I

    .line 4185
    invoke-direct {p0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->loadNextPage()V

    .line 4186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->startTimestamp:J

    return-void
.end method
