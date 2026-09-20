.class public Lcom/tgs/aics/ui/activity/QuestionnaireActivity;
.super Lcom/tgs/aics/ui/activity/BaseActivity;
.source "QuestionnaireActivity.java"


# static fields
.field public static final DISTRIBUTE_ID:Ljava/lang/String; = "tgs_aics_distribute_id"

.field public static final PLAYER_ID:Ljava/lang/String; = "tgs_aics_player_id"

.field public static final QUESTIONNAIRE_ID:Ljava/lang/String; = "tgs_aics_questionnaire_id"

.field private static final QUESTIONNAIRE_SELECT_FILE_REQUEST_STORAGE:I = 0x2714

.field public static final REGION_ID:Ljava/lang/String; = "tgs_aics_region_id"

.field public static final SERVER_ID:Ljava/lang/String; = "tgs_aics_server_id"

.field public static final SUBMIT_EXPIRATION:Ljava/lang/String; = "time is out"

.field public static final SUBMIT_HAS_SUBMITTED:Ljava/lang/String; = "player has commit questionnaire"


# instance fields
.field private configErrorLayout:Landroid/widget/LinearLayout;

.field private distributeId:Ljava/lang/String;

.field private isSubmittedAnsweredQuestion:Z

.field private languageCode:Ljava/lang/String;

.field private playerId:Ljava/lang/String;

.field private questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

.field private questionnaireId:Ljava/lang/String;

.field private questionnaireRecyclerAdapter:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

.field public questionnaireRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private questionnaireVersion:Ljava/lang/String;

.field private regionId:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private submitSuccessLayout:Landroid/widget/LinearLayout;

.field private txtConfigErrorCode:Landroid/widget/TextView;

.field private txtConfigErrorMsg:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$TLlFV9FSXcrvfeY9dRXdOn6Jpzw(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getQuestionnaireData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->isSubmittedAnsweredQuestion:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerAdapter:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->isSubmittedAnsweredQuestion:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->showError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->isSubmittedAnsweredQuestion:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->distributeId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->languageCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->serverId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->playerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->regionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->submitSuccessLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private getQuestionnaireData()V
    .locals 4

    .line 187
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->distributeId:Ljava/lang/String;

    new-instance v3, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda4;-><init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tgs/aics/http/HttpApi;->getQuestionnaireData(Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    return-void
.end method

.method static synthetic lambda$initView$0(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 84
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 85
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    sput p1, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->navigationBarHeight:I

    const/4 p1, 0x1

    .line 86
    sput-boolean p1, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->isGetNavigationBarHeight:Z

    .line 88
    sget-boolean p1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    sget v0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->navigationBarHeight:I

    invoke-static {p0, p1, v0}, Lcom/ypx/imagepicker/utils/CommonUtil;->setSafeArea(Landroid/view/View;ZI)V

    return-object p2
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 3

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 231
    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setTitle(Ljava/lang/String;)V

    const-string v1, "tgs_aics_questionnaire_continue_answer_questions_tip"

    .line 232
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setContent(Ljava/lang/String;)V

    const-string v1, "tgs_aics_questionnaire_restart_answer"

    .line 233
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;Lcom/tgs/aics/ui/dialog/TipsDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const-string v1, "tgs_aics_questionnaire_continue_answer"

    .line 238
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;Lcom/tgs/aics/ui/dialog/TipsDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private showError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->txtConfigErrorMsg:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->txtConfigErrorCode:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->configErrorLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected getViewName()Ljava/lang/String;
    .locals 1

    const-string v0, "tgs_aics_activity_questionnaire"

    return-object v0
.end method

.method protected initView()V
    .locals 10

    .line 54
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$1;-><init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;Z)V

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 76
    invoke-static {p0}, Lcom/tgs/aics/utils/Utils;->isGestureNavigation(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/tgs/aics/utils/ConstantUtil;->isShowNavigationBar:Z

    const-string v0, "tgs_aics_questionnaire_root_layout"

    .line 78
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 79
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x23

    if-lt v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    sget-boolean v1, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->isGetNavigationBarHeight:Z

    if-nez v1, :cond_1

    .line 80
    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isReverseLandscape:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda5;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_1

    .line 93
    :cond_1
    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    sget-boolean v3, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->isGetNavigationBarHeight:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->navigationBarHeight:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ypx/imagepicker/utils/CommonUtil;->setSafeArea(Landroid/view/View;ZI)V

    .line 96
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tgs_aics_questionnaire_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireId:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tgs_aics_distribute_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->distributeId:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->distributeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_6

    .line 103
    :cond_4
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "tgs_aics_server_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, ""

    if-eqz v0, :cond_5

    move-object v0, v4

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->serverId:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "tgs_aics_player_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v4

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->playerId:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "tgs_aics_region_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    iput-object v4, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->regionId:Ljava/lang/String;

    const-string v0, "tgs_aics_questionnaire_config_error_layout"

    .line 107
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->configErrorLayout:Landroid/widget/LinearLayout;

    const-string v0, "tgs_aics_questionnaire_config_error_msg"

    .line 108
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->txtConfigErrorMsg:Landroid/widget/TextView;

    const-string v0, "tgs_aics_questionnaire_config_error_code"

    .line 109
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->txtConfigErrorCode:Landroid/widget/TextView;

    const-string v0, "tgs_aics_questionnaire_submit_success_layout"

    .line 110
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->submitSuccessLayout:Landroid/widget/LinearLayout;

    const-string v0, "tgs_aics_paginator_max_time_txt"

    .line 111
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const-string v0, "tgs_aics_questionnaire_root_recycler_view"

    .line 113
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    .line 114
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 115
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 116
    new-instance v0, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v5, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    const/16 v7, 0x2714

    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$GetMultipleContents;-><init>()V

    new-instance v2, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda6;-><init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)V

    invoke-virtual {p0, v1, v2}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v8

    iget-object v9, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireId:Ljava/lang/String;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;Landroid/widget/TextView;ILandroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerAdapter:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    .line 123
    new-instance v1, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$2;-><init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->setButtonClickListener(Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter$IQuestionnaireRecyclerButtonClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerAdapter:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 179
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->aicsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 180
    new-instance v0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda7;-><init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)V

    invoke-static {v0}, Lcom/tgs/aics/utils/CommonUtil;->getAicsServerAddress(Lcom/tgs/aics/listener/IBaseBeanListener;)V

    goto :goto_5

    .line 182
    :cond_8
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getQuestionnaireData()V

    :goto_5
    return-void

    .line 99
    :cond_9
    :goto_6
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->showLoadErrorLayout(Z)V

    return-void
.end method

.method synthetic lambda$getQuestionnaireData$3$com-tgs-aics-ui-activity-QuestionnaireActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 5

    .line 188
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->hideLoading()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "tgs_aics_questionnaire_error_code"

    const-string v3, "tgs_aics_questionnaire_config_default_error"

    if-eqz p1, :cond_5

    .line 190
    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseBean;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 191
    instance-of v0, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    if-eqz v0, :cond_6

    .line 192
    check-cast p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    .line 193
    iget-boolean p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->canAnswer:Z

    if-eqz p1, :cond_1

    .line 194
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->questionnaireVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireVersion:Ljava/lang/String;

    .line 195
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->languageCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->languageCode:Ljava/lang/String;

    .line 196
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireId:Ljava/lang/String;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->distributeId:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/tgs/aics/utils/Utils;->getQuestionnaireAnsweredQuestionData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerAdapter:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    iget-object v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->questions:Ljava/util/List;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    iget-boolean v1, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->displayQuestionNumber:Z

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    iget-boolean v2, v2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->displayQuestionTag:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->setData(Ljava/util/List;ZZ)V

    goto :goto_1

    .line 200
    :cond_0
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->showDialog(Ljava/lang/String;)V

    goto :goto_1

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->cannotAnswerReason:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "tgs_aics_questionnaire_come_earlier_next_time"

    .line 209
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "tgs_aics_questionnaire_config_error_expired"

    goto :goto_0

    .line 210
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    iget-object p1, p1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->cannotAnswerReason:Ljava/lang/String;

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "tgs_aics_questionnaire_each_role_only_one_reward"

    .line 212
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "tgs_aics_questionnaire_config_error_has_submit"

    goto :goto_0

    :cond_3
    const-string p1, ""

    .line 214
    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->showError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_4
    invoke-virtual {p0, v2}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseBean;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->showError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :cond_5
    invoke-virtual {p0, v2}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->showError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method synthetic lambda$getQuestionnaireData$4$com-tgs-aics-ui-activity-QuestionnaireActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    .line 187
    new-instance v0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;Lcom/tgs/aics/bean/BaseBean;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$initView$1$com-tgs-aics-ui-activity-QuestionnaireActivity(Ljava/util/List;)V
    .locals 1

    .line 118
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerAdapter:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->handleFileSelected(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initView$2$com-tgs-aics-ui-activity-QuestionnaireActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 0

    .line 180
    new-instance p1, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/ui/activity/QuestionnaireActivity;)V

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$showDialog$5$com-tgs-aics-ui-activity-QuestionnaireActivity(Lcom/tgs/aics/ui/dialog/TipsDialog;Landroid/view/View;)V
    .locals 2

    .line 234
    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->dismiss()V

    .line 235
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireId:Ljava/lang/String;

    iget-object p2, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->distributeId:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v0, p1, p2}, Lcom/tgs/aics/utils/Utils;->saveQuestionnaireAnsweredQuestionData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerAdapter:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object p2, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    iget-object p2, p2, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->questions:Ljava/util/List;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    iget-boolean v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->displayQuestionNumber:Z

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    iget-boolean v1, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->displayQuestionTag:Z

    invoke-virtual {p1, p2, v0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->setData(Ljava/util/List;ZZ)V

    return-void
.end method

.method synthetic lambda$showDialog$6$com-tgs-aics-ui-activity-QuestionnaireActivity(Lcom/tgs/aics/ui/dialog/TipsDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 239
    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->dismiss()V

    .line 241
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerAdapter:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    iget-object p3, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    iget-object p3, p3, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->questions:Ljava/util/List;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    iget-boolean v0, v0, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->displayQuestionNumber:Z

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireBean:Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;

    iget-boolean v1, v1, Lcom/tgs/aics/bean/questionnaire/QuestionnaireBean;->displayQuestionTag:Z

    invoke-virtual {p1, p3, v0, v1}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->setData(Ljava/util/List;ZZ)V

    .line 242
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerAdapter:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->fillingDataAndJump2LastAnsweredPage(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/16 v0, 0x2714

    if-ne p1, v0, :cond_1

    .line 259
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerAdapter:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getCurrentFileUploadBean()Lcom/tgs/aics/bean/questionnaire/FileUploadBean;

    move-result-object v1

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;->questionnaireRecyclerAdapter:Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;

    invoke-virtual {v2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->getCurrentFileUploadPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/adapter/QuestionnaireRecyclerAdapter;->filePick(Lcom/tgs/aics/bean/questionnaire/FileUploadBean;I)V

    goto :goto_0

    .line 263
    :cond_0
    invoke-static {p0}, Lcom/tgs/aics/utils/Utils;->showPermissionTipsDialog(Landroid/content/Context;)V

    .line 266
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/tgs/aics/ui/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
