.class public Lcom/tgs/aics/ui/activity/IMActivity;
.super Lcom/tgs/aics/ui/activity/BaseActivity;
.source "IMActivity.java"


# static fields
.field private static final IM_REQUEST_CODE:I = 0x2711

.field private static final IM_REQUEST_STORAGE:I = 0x2711

.field public static final LABEL_DIAGNOSE_UPLOAD_URL:Ljava/lang/String; = "DiagnoseUploadUrl"

.field private static final TAG:Ljava/lang/String; = "aics.IMActivity"


# instance fields
.field private bottomDialog:Landroid/app/Dialog;

.field private edInput:Landroid/widget/EditText;

.field private editLayout:Landroid/widget/FrameLayout;

.field private editText:Landroid/widget/EditText;

.field private emojiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emotionKeyboard:Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;

.field private emotionLayout:Landroid/widget/FrameLayout;

.field private evaluateContentConfigs:Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

.field private evaluationSystemMaxWordCount:I

.field private evaluationSystemStyle:Ljava/lang/String;

.field private hasResetCheckBoxHeight:Z

.field private inputDivideLine:Landroid/view/View;

.field private inputLayout:Landroid/widget/LinearLayout;

.field private lastGetHistoryMessageTimestamp:J

.field private lastVisibleItemPosition:I

.field private final messageCallBackCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tgs/aics/listener/ISendMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

.field public messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/Message;",
            ">;"
        }
    .end annotation
.end field

.field private npsRatingBar:Lcom/tgs/aics/thirdtool/nps/NpsRatingBar;

.field private npsRatingScore:I

.field private pickMultipleMedia:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/PickVisualMediaRequest;",
            ">;"
        }
    .end annotation
.end field

.field private ratingBar:Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;

.field private refreshLayout:Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

.field private scrollFlag:Z

.field private shouldPullEvaluationPage:Z

.field private submitBtn:Landroid/widget/Button;

.field private tagFlowLayout:Lcom/tgs/aics/widget/FlowLayout;

.field private tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

.field private tvTagRemark:Landroid/widget/TextView;

.field private tvWordCount:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$G2sZv_QBDDjB3n-PadjUdMmz4hc(Landroid/app/Dialog;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->lastVisibleItemPosition:I

    .line 95
    iput-boolean v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->scrollFlag:Z

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageCallBackCacheMap:Ljava/util/Map;

    const/16 v1, 0x3e8

    .line 120
    iput v1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemMaxWordCount:I

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tagList:Ljava/util/List;

    .line 123
    iput-boolean v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->hasResetCheckBoxHeight:Z

    .line 127
    iput-boolean v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->shouldPullEvaluationPage:Z

    .line 129
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$EvaluationSystemStyle;->star:Ljava/lang/String;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemStyle:Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/tgs/aics/utils/Utils;->getRealTimeStamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->lastGetHistoryMessageTimestamp:J

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->emojiList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/ui/activity/IMActivity;)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->emotionKeyboard:Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->emotionLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/view/animation/TranslateAnimation;
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->buildSlideDownAnimation()Landroid/view/animation/TranslateAnimation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/EditText;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->edInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tgs/aics/ui/activity/IMActivity;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemMaxWordCount:I

    return p0
.end method

.method static synthetic access$500(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/EditText;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/TextView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tvWordCount:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tgs/aics/ui/activity/IMActivity;)Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluateContentConfigs:Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tgs/aics/ui/activity/IMActivity;)Ljava/util/List;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tagList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tgs/aics/ui/activity/IMActivity;)Landroid/widget/Button;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->submitBtn:Landroid/widget/Button;

    return-object p0
.end method

.method private bottomDialogDismiss(Landroid/app/Dialog;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1093
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    .line 1094
    iput-boolean p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->hasResetCheckBoxHeight:Z

    return-void
.end method

.method private buildSlideDownAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 10

    .line 427
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0xc8

    .line 434
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    return-object v9
.end method

.method private createRatingRequestMessage()V
    .locals 2

    .line 470
    invoke-static {}, Lcom/tgs/aics/bean/Message;->createRatingRequestMessage()Lcom/tgs/aics/bean/Message;

    move-result-object v0

    .line 471
    new-instance v1, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda22;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    return-void
.end method

.method private dealImagePickComplete(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ypx/imagepicker/bean/ImageItem;

    .line 588
    invoke-virtual {v3}, Lcom/ypx/imagepicker/bean/ImageItem;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 589
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 590
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/tgs/aics/utils/Utils;->getFileSizeInBytes(Landroid/content/Context;Ljava/io/File;)J

    move-result-wide v7

    .line 591
    invoke-static {p0, v7, v8}, Lcom/tgs/aics/utils/Utils;->getFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 592
    invoke-static {v7, v8}, Lcom/tgs/aics/utils/Utils;->isFileSizeGreaterThan100MB(J)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {v3}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    .line 600
    invoke-static/range {v4 .. v10}, Lcom/tgs/aics/bean/Message;->createMessageWithVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    .line 602
    invoke-static/range {v4 .. v10}, Lcom/tgs/aics/bean/Message;->createMessageWithImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;

    move-result-object v3

    .line 605
    :goto_1
    new-instance v4, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda28;

    invoke-direct {v4, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda28;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {p0, v3, v4}, Lcom/tgs/aics/ui/activity/IMActivity;->preBuildMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    .line 624
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const-string p1, "tgs_aics_pic_or_video_over_size"

    .line 628
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 631
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 632
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/Message;

    .line 634
    invoke-virtual {v0}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getFiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    invoke-virtual {v2}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->uploadFile(Ljava/lang/String;Lcom/tgs/aics/bean/Message;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private getHistoryMessage(Lcom/tgs/aics/listener/ISendMessageListener;)V
    .locals 2

    .line 813
    iget-wide v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->lastGetHistoryMessageTimestamp:J

    invoke-static {v0, v1}, Lcom/tgs/aics/bean/Message;->createHistoryMessage(J)Lcom/tgs/aics/bean/Message;

    move-result-object v0

    .line 814
    invoke-virtual {p0, v0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    return-void
.end method

.method private imgPick()V
    .locals 3

    .line 558
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->pickMultipleMedia:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_1

    .line 563
    new-instance v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    invoke-direct {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    sget-object v2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    .line 564
    invoke-virtual {v1, v2}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v1

    .line 565
    invoke-virtual {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v1

    .line 563
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initData()V
    .locals 4

    const/4 v0, 0x0

    .line 747
    invoke-direct {p0, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->setInputLayoutVisible(Z)V

    .line 750
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 751
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const-string v0, ""

    .line 752
    sput-object v0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashFormMessageId:Ljava/lang/String;

    .line 754
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->initGetMessageListener()V

    .line 757
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda23;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initDialogView(Landroid/view/View;Landroid/app/Dialog;Lcom/tgs/aics/bean/Message;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 865
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->newEvaluationSystemBean:Lcom/tgs/aics/bean/NewEvaluationSystemBean;

    if-eqz v0, :cond_0

    .line 866
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->newEvaluationSystemBean:Lcom/tgs/aics/bean/NewEvaluationSystemBean;

    goto :goto_0

    .line 867
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/tgs/aics/bean/NewEvaluationSystemBean;->defaultNewEvaluationSystem(Landroid/content/Context;)Lcom/tgs/aics/bean/NewEvaluationSystemBean;

    move-result-object v0

    .line 869
    :goto_0
    invoke-virtual {v0}, Lcom/tgs/aics/bean/NewEvaluationSystemBean;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 870
    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$EvaluationSystemStyle;->star:Ljava/lang/String;

    goto :goto_1

    .line 871
    :cond_1
    invoke-virtual {v0}, Lcom/tgs/aics/bean/NewEvaluationSystemBean;->getStyle()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v6, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemStyle:Ljava/lang/String;

    .line 872
    invoke-virtual {v0}, Lcom/tgs/aics/bean/NewEvaluationSystemBean;->getEvaluationSystemConfig()Lcom/tgs/aics/bean/EvaluationSystemBean;

    move-result-object v1

    if-nez v1, :cond_2

    .line 873
    invoke-static/range {p0 .. p0}, Lcom/tgs/aics/bean/EvaluationSystemBean;->defaultEvaluationSystem(Landroid/content/Context;)Lcom/tgs/aics/bean/EvaluationSystemBean;

    move-result-object v0

    goto :goto_2

    .line 874
    :cond_2
    invoke-virtual {v0}, Lcom/tgs/aics/bean/NewEvaluationSystemBean;->getEvaluationSystemConfig()Lcom/tgs/aics/bean/EvaluationSystemBean;

    move-result-object v0

    :goto_2
    move-object v9, v0

    const-string v0, "tgs_aics_close_dialog_img_layout"

    .line 876
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, v6, v8}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tgs_aics_evaluate_dialog_title"

    .line 879
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 880
    invoke-virtual {v9}, Lcom/tgs/aics/bean/EvaluationSystemBean;->getTitleConfig()Lcom/tgs/aics/bean/EvaluationSystemBean$TitleConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tgs/aics/bean/EvaluationSystemBean$TitleConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    invoke-virtual {v9}, Lcom/tgs/aics/bean/EvaluationSystemBean;->getStarConfig()Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->getDefaultStar()I

    move-result v10

    const-string v0, "tgs_aics_evaluation_system_layout"

    .line 885
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/LinearLayout;

    .line 887
    iget-object v0, v6, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemStyle:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$EvaluationSystemStyle;->star:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 888
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "tgs_aics_evaluation_system_star"

    invoke-virtual {v6, v2}, Lcom/tgs/aics/ui/activity/IMActivity;->getLayoutId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v0, "tgs_aics_rating_bar"

    .line 891
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;

    iput-object v0, v6, Lcom/tgs/aics/ui/activity/IMActivity;->ratingBar:Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;

    int-to-float v2, v10

    .line 893
    invoke-virtual {v0, v2}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->setRating(F)V

    .line 894
    iget-object v0, v6, Lcom/tgs/aics/ui/activity/IMActivity;->ratingBar:Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;

    invoke-virtual {v9}, Lcom/tgs/aics/bean/EvaluationSystemBean;->getStarConfig()Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->isAllowZeroStar()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v0, v2}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->setMinimumStars(F)V

    .line 895
    iget-object v0, v6, Lcom/tgs/aics/ui/activity/IMActivity;->ratingBar:Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;

    new-instance v2, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, v6, v9}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/tgs/aics/bean/EvaluationSystemBean;)V

    invoke-virtual {v0, v2}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->setOnRatingChangeListener(Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar$OnRatingChangeListener;)V

    const-string v0, "tgs_aics_evaluate_worst_description"

    .line 902
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 903
    invoke-virtual {v9}, Lcom/tgs/aics/bean/EvaluationSystemBean;->getStarConfig()Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->getOneStarRemark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "tgs_aics_evaluate_best_description"

    .line 904
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 905
    invoke-virtual {v9}, Lcom/tgs/aics/bean/EvaluationSystemBean;->getStarConfig()Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->getFiveStarRemark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 906
    :cond_4
    iget-object v0, v6, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemStyle:Ljava/lang/String;

    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil$EvaluationSystemStyle;->nps:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 907
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "tgs_aics_evaluation_system_nps"

    invoke-virtual {v6, v2}, Lcom/tgs/aics/ui/activity/IMActivity;->getLayoutId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 909
    invoke-virtual {v9}, Lcom/tgs/aics/bean/EvaluationSystemBean;->getStarConfig()Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->getOneStarRemark()Ljava/lang/String;

    move-result-object v13

    .line 910
    invoke-virtual {v9}, Lcom/tgs/aics/bean/EvaluationSystemBean;->getStarConfig()Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/bean/EvaluationSystemBean$StarConfig;->getFiveStarRemark()Ljava/lang/String;

    move-result-object v14

    const-string v0, "tgs_aics_nps_rating_bar"

    .line 912
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/thirdtool/nps/NpsRatingBar;

    iput-object v0, v6, Lcom/tgs/aics/ui/activity/IMActivity;->npsRatingBar:Lcom/tgs/aics/thirdtool/nps/NpsRatingBar;

    .line 913
    invoke-virtual {v0, v10}, Lcom/tgs/aics/thirdtool/nps/NpsRatingBar;->setProgress(I)Z

    .line 914
    iput v10, v6, Lcom/tgs/aics/ui/activity/IMActivity;->npsRatingScore:I

    const-string v0, "tgs_aics_nps_score_txt"

    .line 915
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    .line 916
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    if-nez v10, :cond_5

    move-object v0, v13

    goto :goto_4

    .line 919
    :cond_5
    iget-object v1, v6, Lcom/tgs/aics/ui/activity/IMActivity;->npsRatingBar:Lcom/tgs/aics/thirdtool/nps/NpsRatingBar;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/nps/NpsRatingBar;->getMax()I

    move-result v1

    if-ne v10, v1, :cond_6

    move-object v0, v14

    .line 921
    :cond_6
    :goto_4
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    iget-object v5, v6, Lcom/tgs/aics/ui/activity/IMActivity;->npsRatingBar:Lcom/tgs/aics/thirdtool/nps/NpsRatingBar;

    new-instance v4, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda4;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v13

    move-object v8, v4

    move-object v4, v14

    move-object v7, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda4;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/bean/EvaluationSystemBean;)V

    invoke-virtual {v7, v8}, Lcom/tgs/aics/thirdtool/nps/NpsRatingBar;->setOnSeekBarChangeListener(Lcom/tgs/aics/thirdtool/nps/NpsRatingBar$OnRatingSeekBarChangeListener;)V

    .line 944
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, v6, v15, v10}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda5;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Landroid/widget/TextView;I)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "tgs_aics_evaluate_nps_worst_description"

    .line 947
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 948
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "tgs_aics_evaluate_nps_best_description"

    .line 949
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 950
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v12

    .line 952
    :cond_7
    :goto_5
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 954
    invoke-virtual {v9, v10}, Lcom/tgs/aics/bean/EvaluationSystemBean;->getEvaluateContentConfigs(I)Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    move-result-object v0

    iput-object v0, v6, Lcom/tgs/aics/ui/activity/IMActivity;->evaluateContentConfigs:Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    const-string v0, "tgs_aics_evaluate_tag_remark_txt"

    .line 957
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/tgs/aics/ui/activity/IMActivity;->tvTagRemark:Landroid/widget/TextView;

    const-string v0, "tgs_aics_evaluate_tag_flowlayout"

    .line 960
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/widget/FlowLayout;

    iput-object v0, v6, Lcom/tgs/aics/ui/activity/IMActivity;->tagFlowLayout:Lcom/tgs/aics/widget/FlowLayout;

    const-string v0, "tgs_aics_evaluate_dialog_edittext_layout"

    .line 963
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v6, Lcom/tgs/aics/ui/activity/IMActivity;->editLayout:Landroid/widget/FrameLayout;

    const-string v0, "tgs_aics_evaluate_dialog_edittext"

    .line 964
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v6, Lcom/tgs/aics/ui/activity/IMActivity;->editText:Landroid/widget/EditText;

    .line 965
    new-instance v2, Lcom/tgs/aics/ui/activity/IMActivity$5;

    invoke-direct {v2, v6}, Lcom/tgs/aics/ui/activity/IMActivity$5;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v0, "tgs_aics_evaluate_dialog_word_count"

    .line 989
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/tgs/aics/ui/activity/IMActivity;->tvWordCount:Landroid/widget/TextView;

    .line 990
    iget-object v2, v6, Lcom/tgs/aics/ui/activity/IMActivity;->evaluateContentConfigs:Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    const/16 v3, 0x8

    if-nez v2, :cond_8

    .line 991
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 993
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "0/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/tgs/aics/ui/activity/IMActivity;->evaluateContentConfigs:Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    invoke-virtual {v4}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->getInputLimit()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 994
    iget-object v0, v6, Lcom/tgs/aics/ui/activity/IMActivity;->tvWordCount:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/tgs/aics/ui/activity/IMActivity;->evaluateContentConfigs:Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    invoke-virtual {v2}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->getInputLimit()I

    move-result v2

    if-lez v2, :cond_9

    const/4 v3, 0x0

    :cond_9
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    const-string v0, "tgs_aics_evaluate_dialog_submit"

    .line 998
    invoke-static {v6, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v6, Lcom/tgs/aics/ui/activity/IMActivity;->submitBtn:Landroid/widget/Button;

    .line 999
    new-instance v1, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda6;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v1, v6, v3, v2}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda6;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/tgs/aics/bean/Message;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1040
    iget-object v0, v6, Lcom/tgs/aics/ui/activity/IMActivity;->evaluateContentConfigs:Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    invoke-virtual {v9}, Lcom/tgs/aics/bean/EvaluationSystemBean;->getSubmitConfig()Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;->getSubmitBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->updateEvaluationSystemConfig(Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;Ljava/lang/String;)V

    return-void
.end method

.method private initEmotionGrid()V
    .locals 3

    const-string v0, "tgs_aics_im_emoji_grid_view"

    .line 439
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 440
    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    .line 441
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 442
    :cond_0
    new-instance v1, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda18;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 455
    new-instance v1, Lcom/tgs/aics/adapter/EmotionAdapter;

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->emojiList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/tgs/aics/adapter/EmotionAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private initGetMessageListener()V
    .locals 1

    .line 701
    new-instance v0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda9;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    sput-object v0, Lcom/tgs/aics/utils/ConstantUtil;->getMessageListener:Lcom/tgs/aics/listener/IGetMessageListener;

    return-void
.end method

.method private inputLayoutConfig()V
    .locals 2

    .line 511
    invoke-static {}, Lcom/tgs/aics/bean/Message;->createStatusMessage()Lcom/tgs/aics/bean/Message;

    move-result-object v0

    .line 512
    new-instance v1, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda19;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    return-void
.end method

.method private isMediaAuditCheckFailure(Ljava/lang/String;)Z
    .locals 1

    .line 686
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 689
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "image check failure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$initView$10(Landroid/widget/LinearLayout;[Z[I)V
    .locals 3

    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 346
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    if-gtz v0, :cond_2

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 351
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 352
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    goto :goto_0

    .line 356
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 357
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 358
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    const/high16 v1, 0x43160000    # 150.0f

    .line 359
    invoke-static {v1}, Lcom/tgs/aics/utils/Utils;->dp2px(F)I

    move-result v1

    if-ge v0, v1, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    if-lez v0, :cond_4

    .line 365
    aget-boolean v1, p1, v2

    if-nez v1, :cond_3

    .line 366
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    aput v1, p2, v2

    const/4 p2, 0x1

    .line 367
    aput-boolean p2, p1, v2

    .line 369
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    .line 370
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    .line 371
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    .line 369
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    .line 373
    :cond_4
    aget-boolean v0, p1, v2

    if-eqz v0, :cond_5

    .line 374
    aput-boolean v2, p1, v2

    .line 375
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    .line 376
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    .line 377
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    aget p2, p2, v2

    .line 375
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic lambda$sendChatReadMessage$31(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    return-void
.end method

.method private refreshUI()V
    .locals 2

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->setData(Ljava/util/List;)V

    .line 836
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    invoke-virtual {v1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private sendChatReadMessage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/Message;",
            ">;)V"
        }
    .end annotation

    .line 818
    invoke-static {}, Lcom/tgs/aics/bean/Message;->createChatReadAllMessage()Lcom/tgs/aics/bean/Message;

    move-result-object p1

    .line 819
    new-instance v0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    .line 826
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->unreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 827
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->unreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener;

    invoke-interface {p1, v0}, Lcom/tgs/aics/listener/IUnreadMessageCountListener;->onResult(I)V

    .line 829
    :cond_0
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->gameUnreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener;

    if-eqz p1, :cond_1

    .line 830
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->gameUnreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener;

    invoke-interface {p1, v0}, Lcom/tgs/aics/listener/IUnreadMessageCountListener;->onResult(I)V

    :cond_1
    return-void
.end method

.method private sendIssueMessageIfNeed(Ljava/lang/String;)V
    .locals 3

    const-string v0, "aics.IMActivity"

    .line 792
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 794
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "showMsg"

    .line 795
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "sendIssueMessageIfNeed failed, showMsg is null"

    .line 797
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 800
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 802
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/tgs/aics/bean/Message;->createMessageWithIssue(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;

    move-result-object p1

    .line 803
    new-instance v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {p0, p1, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    .line 805
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->refreshUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendPayIssueMessage failed, ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setInputLayoutVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 502
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->inputDivideLine:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->inputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->inputDivideLine:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->inputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showEvaluatedDialog()V
    .locals 5

    .line 1098
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "BottomDialog"

    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1099
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "tgs_aics_layout_evaluate_finish_dialog"

    invoke-virtual {p0, v2}, Lcom/tgs/aics/ui/activity/IMActivity;->getLayoutId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1100
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1101
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    const/4 v1, 0x1

    .line 1102
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1103
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "BottomDialog_FadeAnimation"

    invoke-static {p0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1104
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1106
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda27;

    invoke-direct {v2, v0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda27;-><init>(Landroid/app/Dialog;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private smoothScrollToMediaAuditTip(Lcom/tgs/aics/bean/Message;)V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 694
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 697
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private tipsDialogConfig()V
    .locals 3

    .line 459
    new-instance v0, Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_force_evaluate_title"

    .line 460
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setTitle(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_force_evaluate_content"

    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setContent(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_force_evaluate_left_btn_text"

    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda24;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_force_evaluate_right_btn_text"

    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda25;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateEvaluationSystemConfig(Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_9

    .line 1046
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1047
    invoke-virtual {p1}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->getInputLimit()I

    move-result v0

    iput v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemMaxWordCount:I

    .line 1048
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tvWordCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemMaxWordCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    iget v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemMaxWordCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemMaxWordCount:I

    if-le v0, v2, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget v3, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemMaxWordCount:I

    invoke-interface {v2, v1, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->editText:Landroid/widget/EditText;

    iget v2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemMaxWordCount:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tvWordCount:Landroid/widget/TextView;

    iget v2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemMaxWordCount:I

    const/16 v3, 0x8

    if-lez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1057
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tvTagRemark:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->getTagRemark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tvTagRemark:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isShowTagRemark()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1061
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tagFlowLayout:Lcom/tgs/aics/widget/FlowLayout;

    invoke-virtual {v0}, Lcom/tgs/aics/widget/FlowLayout;->removeAllViews()V

    .line 1062
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tagFlowLayout:Lcom/tgs/aics/widget/FlowLayout;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isShowTags()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/tgs/aics/widget/FlowLayout;->setVisibility(I)V

    move v0, v1

    .line 1063
    :goto_3
    invoke-virtual {p1}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->getTags()[Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1064
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v4, "tgs_aics_evaluation_dialog_tag_checkbox"

    invoke-virtual {p0, v4}, Lcom/tgs/aics/ui/activity/IMActivity;->getLayoutId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1065
    invoke-virtual {p1}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->getTags()[Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    invoke-virtual {p1}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->getTags()[Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs$Tags;->getTagId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setId(I)V

    .line 1067
    new-instance v4, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda37;

    invoke-direct {v4, p0, v2, p1}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda37;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Landroid/widget/CheckBox;Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1075
    iget-object v4, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tagFlowLayout:Lcom/tgs/aics/widget/FlowLayout;

    invoke-virtual {v4, v2}, Lcom/tgs/aics/widget/FlowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1079
    :cond_4
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->getInputPrompt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1080
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->editLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isShowInput()Z

    move-result v2

    if-eqz v2, :cond_5

    move v3, v1

    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1082
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->submitBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isRequiredTag()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    :cond_6
    invoke-virtual {p1}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isRequiredInput()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1086
    :cond_9
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->submitBtn:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private updateLogFileUploadMessageContent(Lcom/tgs/aics/bean/Message;Ljava/lang/String;Z)V
    .locals 4

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<p>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "tgs_aics_upload_log_and_help_us_optimize"

    invoke-virtual {p0, v2}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</p><p>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</p>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 1242
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "</p><a href=\"aics://log_upload\">"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "</a>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1243
    :cond_0
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->setContent(Ljava/lang/String;)V

    .line 1244
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    invoke-virtual {p1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1264
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    if-eqz v0, :cond_1

    .line 1265
    invoke-virtual {v0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->getSelectableTextHelperList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    invoke-virtual {v0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->getSelectableTextHelperList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1266
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    invoke-virtual {v0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->getSelectableTextHelperList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/selecttext/SelectTextHelper;

    if-eqz v1, :cond_0

    .line 1268
    invoke-virtual {v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->reset()V

    goto :goto_0

    .line 1272
    :cond_1
    invoke-super {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getViewName()Ljava/lang/String;
    .locals 1

    const-string v0, "tgs_aics_activity_im"

    return-object v0
.end method

.method public handleMessageSendResult(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 2

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessageSendResult msg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "aics.IMActivity"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    sget p3, Lcom/tgs/aics/utils/ConstantUtil$MessageErrorCode;->NOT_RATED:I

    if-ne p2, p3, :cond_1

    .line 537
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p2}, Lcom/tgs/aics/ui/dialog/TipsDialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_0

    .line 538
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p2}, Lcom/tgs/aics/ui/dialog/TipsDialog;->show()V

    :cond_0
    const/4 p2, 0x0

    .line 539
    invoke-direct {p0, p2}, Lcom/tgs/aics/ui/activity/IMActivity;->setInputLayoutVisible(Z)V

    .line 542
    :cond_1
    new-instance p2, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda26;

    invoke-direct {p2, p0, p4, p1}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda26;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/tgs/aics/bean/Message;Z)V

    invoke-virtual {p0, p2}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected initView()V
    .locals 11

    .line 148
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/IMActivity$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/tgs/aics/ui/activity/IMActivity$1;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Z)V

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 167
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;-><init>(I)V

    new-instance v1, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda11;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->pickMultipleMedia:Landroidx/activity/result/ActivityResultLauncher;

    .line 194
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->setAppNameTitle()V

    .line 195
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "should_pull_evaluation_page"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->shouldPullEvaluationPage:Z

    const-string v0, "tgs_aics_im_root_layout"

    .line 196
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 197
    invoke-virtual {p0, v0, v3}, Lcom/tgs/aics/ui/activity/IMActivity;->loadBackgroundImage(Landroid/view/ViewGroup;Z)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->addSystemUiVisibilityChangeListener(Landroid/view/ViewGroup;)V

    const-string v1, "tgs_aics_im_to_newest_message_layout"

    .line 201
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 202
    new-instance v4, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda21;

    invoke-direct {v4, p0, v1}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda21;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v4, "tgs_aics_refresh_layout"

    .line 209
    invoke-virtual {p0, v4}, Lcom/tgs/aics/ui/activity/IMActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    iput-object v4, p0, Lcom/tgs/aics/ui/activity/IMActivity;->refreshLayout:Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    const-string v4, "tgs_aics_refresh_classic_header"

    .line 210
    invoke-virtual {p0, v4}, Lcom/tgs/aics/ui/activity/IMActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/scwang/smart/refresh/header/ClassicsHeader;

    .line 211
    invoke-virtual {v4, v3}, Lcom/scwang/smart/refresh/header/ClassicsHeader;->setEnableLastTime(Z)Lcom/scwang/smart/refresh/header/ClassicsHeader;

    .line 212
    iget-object v5, p0, Lcom/tgs/aics/ui/activity/IMActivity;->refreshLayout:Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshLayout;->getRefreshHeader()Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 213
    iget-object v5, p0, Lcom/tgs/aics/ui/activity/IMActivity;->refreshLayout:Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshLayout;->getRefreshHeader()Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    move-result-object v5

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;->getView()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/scwang/smart/refresh/header/ClassicsHeader;->ID_TEXT_TITLE:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v5, p0, Lcom/tgs/aics/ui/activity/IMActivity;->refreshLayout:Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshLayout;->getRefreshHeader()Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    move-result-object v5

    invoke-interface {v5}, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;->getView()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/scwang/smart/refresh/header/ClassicsHeader;->ID_IMAGE_ARROW:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 216
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0xd

    const/4 v8, -0x1

    .line 217
    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0x10

    .line 218
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 219
    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 220
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v6, p0, Lcom/tgs/aics/ui/activity/IMActivity;->refreshLayout:Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    invoke-interface {v6}, Lcom/scwang/smart/refresh/layout/api/RefreshLayout;->getRefreshHeader()Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    move-result-object v6

    invoke-interface {v6}, Lcom/scwang/smart/refresh/layout/api/RefreshHeader;->getView()Landroid/view/View;

    move-result-object v6

    sget v10, Lcom/scwang/smart/refresh/header/ClassicsHeader;->ID_IMAGE_PROGRESS:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 223
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 224
    invoke-virtual {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 225
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 226
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 227
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    :cond_0
    iget-object v5, p0, Lcom/tgs/aics/ui/activity/IMActivity;->refreshLayout:Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    new-instance v6, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda32;

    invoke-direct {v6, p0, v4}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda32;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/scwang/smart/refresh/header/ClassicsHeader;)V

    invoke-interface {v5, v6}, Lcom/scwang/smart/refresh/layout/api/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    const-string v4, "tgs_aics_im_message_recycler_view"

    .line 240
    invoke-virtual {p0, v4}, Lcom/tgs/aics/ui/activity/IMActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 241
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, p0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 242
    new-instance v4, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    iget-object v5, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    const/16 v6, 0x2711

    invoke-direct {v4, p0, v5, v6}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v4, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    .line 243
    iget-object v5, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 245
    iget-object v4, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lcom/tgs/aics/ui/activity/IMActivity$2;

    invoke-direct {v5, p0, v1}, Lcom/tgs/aics/ui/activity/IMActivity$2;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 255
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/tgs/aics/ui/activity/IMActivity$3;

    invoke-direct {v4, p0}, Lcom/tgs/aics/ui/activity/IMActivity$3;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    const-string v1, "tgs_aics_im_img_pick"

    .line 294
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 295
    new-instance v4, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda43;

    invoke-direct {v4, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda43;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "tgs_aics_im_message_emoji"

    .line 300
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v4, "tgs_aics_im_message_send"

    .line 302
    invoke-virtual {p0, v4}, Lcom/tgs/aics/ui/activity/IMActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 303
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 304
    new-instance v5, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda45;

    invoke-direct {v5, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda45;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v5, "tgs_aics_im_message_input"

    .line 318
    invoke-virtual {p0, v5}, Lcom/tgs/aics/ui/activity/IMActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/tgs/aics/ui/activity/IMActivity;->edInput:Landroid/widget/EditText;

    .line 319
    new-instance v6, Lcom/tgs/aics/ui/activity/IMActivity$4;

    invoke-direct {v6, p0, v4}, Lcom/tgs/aics/ui/activity/IMActivity$4;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v4, "tgs_aics_im_message_input_divider"

    .line 336
    invoke-virtual {p0, v4}, Lcom/tgs/aics/ui/activity/IMActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/tgs/aics/ui/activity/IMActivity;->inputDivideLine:Landroid/view/View;

    const-string v4, "tgs_aics_im_message_input_layout"

    .line 337
    invoke-virtual {p0, v4}, Lcom/tgs/aics/ui/activity/IMActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/tgs/aics/ui/activity/IMActivity;->inputLayout:Landroid/widget/LinearLayout;

    .line 338
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialogConfig()V

    .line 340
    sget-boolean v4, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/tgs/aics/utils/ConstantUtil;->isReverseLandscape:Z

    if-eqz v4, :cond_2

    :cond_1
    new-array v4, v2, [Z

    aput-boolean v3, v4, v3

    new-array v2, v2, [I

    aput v3, v2, v3

    .line 343
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v5, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda46;

    invoke-direct {v5, v0, v4, v2}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda46;-><init>(Landroid/widget/LinearLayout;[Z[I)V

    invoke-virtual {v3, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 383
    :cond_2
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x23

    if-lt v0, v2, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_4

    .line 384
    sget-boolean v0, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/tgs/aics/utils/ConstantUtil;->isReverseLandscape:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 387
    :cond_3
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda47;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda47;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 400
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->initData()V

    const-string v0, "tgsemoji"

    .line 403
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/Utils;->getListOfAssetsCertainFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->emojiList:Ljava/util/ArrayList;

    const-string v0, "tgs_aics_im_emoji_layout"

    .line 404
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->emotionLayout:Landroid/widget/FrameLayout;

    .line 405
    invoke-static {p0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->with(Landroid/app/Activity;)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;

    move-result-object v0

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->emotionLayout:Landroid/widget/FrameLayout;

    .line 406
    invoke-virtual {v0, v2}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->setEmotionView(Landroid/view/View;)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;

    move-result-object v0

    const-string v2, "tgs_aics_im_message_layout"

    .line 407
    invoke-virtual {p0, v2}, Lcom/tgs/aics/ui/activity/IMActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->bindToContent(Landroid/view/View;)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;

    move-result-object v0

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->edInput:Landroid/widget/EditText;

    .line 408
    invoke-virtual {v0, v2}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->bindToEditText(Landroid/widget/EditText;)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;

    move-result-object v0

    .line 409
    invoke-virtual {v0, v1}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->bindToEmotionButton(Landroid/view/View;)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;

    move-result-object v0

    sget v1, Lcom/tgs/aics/ui/activity/IMActivity;->navigationBarHeight:I

    .line 410
    invoke-virtual {v0, v1}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->setNavigationBarHeight(I)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->build()Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->emotionKeyboard:Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;

    const-string v0, "tgs_aics_im_emoji_delete"

    .line 412
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda48;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->initEmotionGrid()V

    .line 416
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 417
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->emojiList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tgsemoji/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".png"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 420
    :cond_5
    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->putAllEmojiMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method synthetic lambda$createRatingRequestMessage$16$com-tgs-aics-ui-activity-IMActivity(ZLcom/tgs/aics/bean/Message;)V
    .locals 4

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/Message;

    .line 476
    invoke-virtual {v1}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getRatingMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    move-object p1, v1

    .line 484
    :catch_0
    :cond_1
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p2}, Lcom/tgs/aics/ui/dialog/TipsDialog;->dismiss()V

    .line 486
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->bottomDialog:Landroid/app/Dialog;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 490
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->showBottomDialog(Lcom/tgs/aics/bean/Message;)V

    goto :goto_0

    .line 492
    :cond_3
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 493
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->dismiss()V

    :cond_4
    const-string p1, "tgs_aics_expired_tips"

    .line 494
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 495
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->setInputLayoutVisible(Z)V

    :goto_0
    return-void
.end method

.method synthetic lambda$createRatingRequestMessage$17$com-tgs-aics-ui-activity-IMActivity(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    .line 471
    new-instance p2, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda44;

    invoke-direct {p2, p0, p1, p4}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda44;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;ZLcom/tgs/aics/bean/Message;)V

    invoke-virtual {p0, p2}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$dealImagePickComplete$21$com-tgs-aics-ui-activity-IMActivity(ILcom/tgs/aics/bean/Message;Z)V
    .locals 3

    .line 606
    sget v0, Lcom/tgs/aics/utils/ConstantUtil$MessageErrorCode;->NOT_RATED:I

    if-ne p1, v0, :cond_1

    .line 607
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 608
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->show()V

    :cond_0
    const/4 p1, 0x0

    .line 609
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->setInputLayoutVisible(Z)V

    .line 612
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/Message;

    .line 613
    invoke-virtual {v0}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_3

    .line 615
    sget-object p1, Lcom/tgs/aics/bean/Message$MessageSendStatus;->SENT:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/bean/Message;->setSendStatus(Lcom/tgs/aics/bean/Message$MessageSendStatus;)V

    goto :goto_0

    .line 617
    :cond_3
    sget-object p1, Lcom/tgs/aics/bean/Message$MessageSendStatus;->FAILED:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/bean/Message;->setSendStatus(Lcom/tgs/aics/bean/Message$MessageSendStatus;)V

    .line 619
    :goto_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->setData(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method synthetic lambda$dealImagePickComplete$22$com-tgs-aics-ui-activity-IMActivity(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    .line 605
    new-instance p3, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda39;

    invoke-direct {p3, p0, p2, p4, p1}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda39;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;ILcom/tgs/aics/bean/Message;Z)V

    invoke-virtual {p0, p3}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$handleMessageSendResult$20$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/bean/Message;Z)V
    .locals 4

    .line 543
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/Message;

    .line 544
    invoke-virtual {v1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    .line 546
    sget-object p1, Lcom/tgs/aics/bean/Message$MessageSendStatus;->SENT:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/Message;->setSendStatus(Lcom/tgs/aics/bean/Message$MessageSendStatus;)V

    goto :goto_0

    .line 548
    :cond_1
    sget-object p1, Lcom/tgs/aics/bean/Message$MessageSendStatus;->FAILED:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    invoke-virtual {v1, p1}, Lcom/tgs/aics/bean/Message;->setSendStatus(Lcom/tgs/aics/bean/Message$MessageSendStatus;)V

    .line 550
    :goto_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    invoke-virtual {p1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method synthetic lambda$initData$28$com-tgs-aics-ui-activity-IMActivity(ZLcom/tgs/aics/bean/Message;)V
    .locals 2

    .line 758
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->hideLoading()V

    if-eqz p1, :cond_3

    .line 760
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object p1

    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_RECORD:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne p1, v0, :cond_0

    .line 761
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getHistoryMessageList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getHistoryMessageList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 762
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getHistoryMessageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 763
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->refreshUI()V

    .line 765
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getHistoryMessageList()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/Message;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->lastGetHistoryMessageTimestamp:J

    .line 769
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->inputLayoutConfig()V

    .line 771
    invoke-static {}, Lcom/tgs/aics/bean/Message;->createWorkOrderMessage()Lcom/tgs/aics/bean/Message;

    move-result-object p1

    const/4 p2, 0x0

    .line 772
    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/ui/activity/IMActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    .line 774
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent_key_player_issue"

    .line 776
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 777
    invoke-direct {p0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->sendIssueMessageIfNeed(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "DiagnoseUploadUrl"

    if-eqz p1, :cond_1

    .line 781
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    if-eqz v1, :cond_2

    .line 782
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_3

    .line 783
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 784
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0, p2}, Lcom/tgs/aics/ui/activity/IMActivity;->sendDiagnoseLogFile(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method synthetic lambda$initData$29$com-tgs-aics-ui-activity-IMActivity(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    .line 757
    new-instance p2, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1, p4}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;ZLcom/tgs/aics/bean/Message;)V

    invoke-virtual {p0, p2}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$initData$30$com-tgs-aics-ui-activity-IMActivity()V
    .locals 1

    .line 757
    new-instance v0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda17;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-direct {p0, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->getHistoryMessage(Lcom/tgs/aics/listener/ISendMessageListener;)V

    return-void
.end method

.method synthetic lambda$initDialogView$33$com-tgs-aics-ui-activity-IMActivity(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 876
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->bottomDialogDismiss(Landroid/app/Dialog;)V

    return-void
.end method

.method synthetic lambda$initDialogView$34$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/bean/EvaluationSystemBean;Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;FZ)V
    .locals 0

    float-to-int p2, p3

    .line 897
    invoke-virtual {p1, p2}, Lcom/tgs/aics/bean/EvaluationSystemBean;->getEvaluateContentConfigs(I)Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    move-result-object p2

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluateContentConfigs:Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    .line 898
    invoke-virtual {p1}, Lcom/tgs/aics/bean/EvaluationSystemBean;->getSubmitConfig()Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;->getSubmitBtnText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->updateEvaluationSystemConfig(Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initDialogView$35$com-tgs-aics-ui-activity-IMActivity(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/bean/EvaluationSystemBean;Lcom/tgs/aics/thirdtool/nps/NpsRatingBar;I)V
    .locals 0

    .line 927
    iput p6, p0, Lcom/tgs/aics/ui/activity/IMActivity;->npsRatingScore:I

    if-eqz p6, :cond_1

    const/16 p2, 0xa

    if-eq p6, p2, :cond_0

    .line 936
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 933
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 930
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    :goto_0
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->npsRatingBar:Lcom/tgs/aics/thirdtool/nps/NpsRatingBar;

    invoke-virtual {p2, p6}, Lcom/tgs/aics/thirdtool/nps/NpsRatingBar;->getTextX(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 941
    invoke-virtual {p4, p6}, Lcom/tgs/aics/bean/EvaluationSystemBean;->getEvaluateContentConfigs(I)Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluateContentConfigs:Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;

    .line 942
    invoke-virtual {p4}, Lcom/tgs/aics/bean/EvaluationSystemBean;->getSubmitConfig()Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tgs/aics/bean/EvaluationSystemBean$SubmitConfig;->getSubmitBtnText()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/ui/activity/IMActivity;->updateEvaluationSystemConfig(Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initDialogView$36$com-tgs-aics-ui-activity-IMActivity(Landroid/widget/TextView;I)V
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->npsRatingBar:Lcom/tgs/aics/thirdtool/nps/NpsRatingBar;

    invoke-virtual {v0, p2}, Lcom/tgs/aics/thirdtool/nps/NpsRatingBar;->getTextX(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTranslationX(F)V

    return-void
.end method

.method synthetic lambda$initDialogView$37$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/ui/dialog/LoadingDialog;ZLcom/tgs/aics/bean/Message;Lcom/tgs/aics/bean/Message;Landroid/app/Dialog;I)V
    .locals 0

    .line 1017
    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dismiss()V

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    .line 1022
    invoke-virtual {p3, p1}, Lcom/tgs/aics/bean/Message;->setFormCommitted(Z)V

    .line 1024
    :cond_0
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    invoke-direct {p0, p5}, Lcom/tgs/aics/ui/activity/IMActivity;->bottomDialogDismiss(Landroid/app/Dialog;)V

    .line 1026
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->showEvaluatedDialog()V

    .line 1027
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->refreshUI()V

    .line 1030
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->setInputLayoutVisible(Z)V

    goto :goto_0

    .line 1032
    :cond_1
    sget p1, Lcom/tgs/aics/utils/ConstantUtil$MessageErrorCode;->EXPIRED:I

    if-ne p6, p1, :cond_2

    const-string p1, "tgs_aics_expired_tips"

    .line 1033
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1035
    :cond_2
    invoke-virtual {p4}, Lcom/tgs/aics/bean/Message;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$initDialogView$38$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/bean/Message;Landroid/app/Dialog;ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 8

    .line 1016
    new-instance p6, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p2

    move-object v5, p7

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda20;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/tgs/aics/ui/dialog/LoadingDialog;ZLcom/tgs/aics/bean/Message;Lcom/tgs/aics/bean/Message;Landroid/app/Dialog;I)V

    invoke-virtual {p0, p6}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$initDialogView$39$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/bean/Message;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 4

    .line 1002
    iget-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemStyle:Ljava/lang/String;

    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$EvaluationSystemStyle;->star:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1003
    iget-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity;->ratingBar:Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;

    invoke-virtual {p3}, Lcom/tgs/aics/thirdtool/ratingbar/BaseRatingBar;->getRating()F

    move-result p3

    float-to-int p3, p3

    goto :goto_0

    .line 1004
    :cond_0
    iget-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemStyle:Ljava/lang/String;

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$EvaluationSystemStyle;->nps:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1005
    iget p3, p0, Lcom/tgs/aics/ui/activity/IMActivity;->npsRatingScore:I

    goto :goto_0

    :cond_1
    move p3, v0

    .line 1007
    :goto_0
    new-instance v1, Lcom/tgs/aics/ui/dialog/LoadingDialog;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    .line 1008
    invoke-virtual {v1}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->show()V

    .line 1011
    iget-object v2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 1012
    :goto_1
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tagList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1013
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tagList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1015
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->evaluationSystemStyle:Ljava/lang/String;

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/IMActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, p3}, Lcom/tgs/aics/bean/Message;->createRatingWithScore(Ljava/lang/String;[ILjava/lang/String;I)Lcom/tgs/aics/bean/Message;

    move-result-object p3

    .line 1016
    new-instance v0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda7;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/tgs/aics/ui/dialog/LoadingDialog;Lcom/tgs/aics/bean/Message;Landroid/app/Dialog;)V

    invoke-virtual {p0, p3, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    return-void
.end method

.method synthetic lambda$initEmotionGrid$13$com-tgs-aics-ui-activity-IMActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const-string p1, "["

    .line 445
    :try_start_0
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->edInput:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    .line 446
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->emojiList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "]"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 447
    iget-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity;->edInput:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 448
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p4, p2, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity;->edInput:Landroid/widget/EditText;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p3, p4}, Lcom/tgs/aics/utils/Utils;->getEmotionContent(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity;->edInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method synthetic lambda$initGetMessageListener$26$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/bean/Message;)V
    .locals 4

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IMActivity get message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aics.IMActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageCallBackCacheMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/listener/ISendMessageListener;

    if-eqz v0, :cond_1

    const-string v2, "IMActivity get message ISendMessageListener is not null"

    .line 706
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageReceiptBean()Lcom/tgs/aics/bean/MessageReceiptBean;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "IMActivity get message ISendMessageListener is not null, and messageReceiptBean is not null"

    .line 708
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageReceiptBean()Lcom/tgs/aics/bean/MessageReceiptBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tgs/aics/bean/MessageReceiptBean;->isSuccess()Z

    move-result v1

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageReceiptBean()Lcom/tgs/aics/bean/MessageReceiptBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tgs/aics/bean/MessageReceiptBean;->getErrCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageReceiptBean()Lcom/tgs/aics/bean/MessageReceiptBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tgs/aics/bean/MessageReceiptBean;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/tgs/aics/listener/ISendMessageListener;->onResult(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V

    goto :goto_1

    :cond_0
    const-string v2, "IMActivity get message ISendMessageListener is not null, and messageReceiptBean is null"

    .line 711
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    .line 712
    invoke-interface {v0, v3, v1, v2, p1}, Lcom/tgs/aics/listener/ISendMessageListener;->onResult(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V

    goto :goto_1

    :cond_1
    const-string v0, "IMActivity get message ISendMessageListener is null"

    .line 715
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v0

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_WITHDRAW:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v0, v2, :cond_3

    const-string v0, "IMActivity get message ISendMessageListener is null, and messageType is CHAT_WITHDRAW"

    .line 718
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/Message;

    .line 720
    invoke-virtual {v1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 721
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 725
    :cond_3
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v0

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v0, v2, :cond_4

    const-string v0, "IMActivity get message ISendMessageListener is null, and messageType is CHAT"

    .line 726
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->refreshUI()V

    .line 733
    :goto_1
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object p1

    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_READ_ALL:Lcom/tgs/aics/bean/Message$MessageType;

    if-eq p1, v0, :cond_7

    .line 734
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 735
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/Message;

    .line 736
    invoke-virtual {v1}, Lcom/tgs/aics/bean/Message;->getMessageSource()Lcom/tgs/aics/bean/Message$MessageSource;

    move-result-object v2

    sget-object v3, Lcom/tgs/aics/bean/Message$MessageSource;->PLAYER:Lcom/tgs/aics/bean/Message$MessageSource;

    if-eq v2, v3, :cond_5

    invoke-virtual {v1}, Lcom/tgs/aics/bean/Message;->isRead()Z

    move-result v2

    if-nez v2, :cond_5

    .line 737
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 740
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 741
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->sendChatReadMessage(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method synthetic lambda$initGetMessageListener$27$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/bean/Message;)V
    .locals 1

    .line 701
    new-instance v0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda8;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/tgs/aics/bean/Message;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-tgs-aics-ui-activity-IMActivity(ZLcom/tgs/aics/bean/Message;Ljava/util/ArrayList;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getWorkOrderInfo()Lcom/tgs/aics/bean/WorkOrderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getWorkOrderInfo()Lcom/tgs/aics/bean/WorkOrderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/bean/WorkOrderInfo;->isCanChat()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 181
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->setInputLayoutVisible(Z)V

    .line 182
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 183
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->show()V

    goto :goto_0

    .line 185
    :cond_0
    invoke-direct {p0, p3}, Lcom/tgs/aics/ui/activity/IMActivity;->dealImagePickComplete(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-direct {p0, p3}, Lcom/tgs/aics/ui/activity/IMActivity;->dealImagePickComplete(Ljava/util/ArrayList;)V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$initView$1$com-tgs-aics-ui-activity-IMActivity(Ljava/util/ArrayList;ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    .line 178
    new-instance p3, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda29;

    invoke-direct {p3, p0, p2, p5, p1}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda29;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;ZLcom/tgs/aics/bean/Message;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p3}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$initView$11$com-tgs-aics-ui-activity-IMActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 388
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 389
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 390
    iget v1, v0, Landroid/graphics/Insets;->bottom:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p1, v0

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/tgs/aics/utils/Utils;->dp2px(F)I

    move-result v0

    add-int/2addr p1, v0

    .line 391
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->inputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->inputLayout:Landroid/widget/LinearLayout;

    .line 392
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/IMActivity;->inputLayout:Landroid/widget/LinearLayout;

    .line 393
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 391
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object p2
.end method

.method synthetic lambda$initView$12$com-tgs-aics-ui-activity-IMActivity(Landroid/view/View;)V
    .locals 3

    .line 412
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->edInput:Landroid/widget/EditText;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x43

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method synthetic lambda$initView$2$com-tgs-aics-ui-activity-IMActivity(Ljava/util/List;)V
    .locals 4

    .line 168
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 171
    new-instance v2, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-direct {v2}, Lcom/ypx/imagepicker/bean/ImageItem;-><init>()V

    .line 172
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/Utils;->getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ypx/imagepicker/bean/ImageItem;->setPath(Ljava/lang/String;)V

    .line 173
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/Utils;->isVideoType(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ypx/imagepicker/bean/ImageItem;->setVideo(Z)V

    .line 174
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {}, Lcom/tgs/aics/bean/Message;->createStatusMessage()Lcom/tgs/aics/bean/Message;

    move-result-object p1

    .line 178
    new-instance v1, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0, v0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda41;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$initView$3$com-tgs-aics-ui-activity-IMActivity(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 1

    .line 204
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 205
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    const/16 p2, 0x8

    .line 206
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$initView$4$com-tgs-aics-ui-activity-IMActivity(ZLcom/tgs/aics/bean/Message;Lcom/scwang/smart/refresh/header/ClassicsHeader;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getHistoryMessageList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getHistoryMessageList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getHistoryMessageList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Lcom/scwang/smart/refresh/header/ClassicsHeader;->getHeight()I

    move-result p3

    invoke-virtual {p1, v0, p3}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->addHistoryData(Ljava/util/List;I)V

    .line 234
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getHistoryMessageList()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/Message;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->lastGetHistoryMessageTimestamp:J

    .line 237
    :cond_0
    invoke-interface {p4}, Lcom/scwang/smart/refresh/layout/api/RefreshLayout;->finishRefresh()Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    return-void
.end method

.method synthetic lambda$initView$5$com-tgs-aics-ui-activity-IMActivity(ZLcom/tgs/aics/bean/Message;Lcom/scwang/smart/refresh/header/ClassicsHeader;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V
    .locals 8

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda31;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda31;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;ZLcom/tgs/aics/bean/Message;Lcom/scwang/smart/refresh/header/ClassicsHeader;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v7, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic lambda$initView$6$com-tgs-aics-ui-activity-IMActivity(Lcom/scwang/smart/refresh/header/ClassicsHeader;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 6

    .line 229
    new-instance p4, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda16;

    move-object v0, p4

    move-object v1, p0

    move v2, p3

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda16;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;ZLcom/tgs/aics/bean/Message;Lcom/scwang/smart/refresh/header/ClassicsHeader;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    invoke-virtual {p0, p4}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$initView$7$com-tgs-aics-ui-activity-IMActivity(Lcom/scwang/smart/refresh/header/ClassicsHeader;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V
    .locals 1

    .line 229
    new-instance v0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda10;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/scwang/smart/refresh/header/ClassicsHeader;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    invoke-direct {p0, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->getHistoryMessage(Lcom/tgs/aics/listener/ISendMessageListener;)V

    return-void
.end method

.method synthetic lambda$initView$8$com-tgs-aics-ui-activity-IMActivity(Landroid/view/View;)V
    .locals 0

    .line 297
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->imgPick()V

    return-void
.end method

.method synthetic lambda$initView$9$com-tgs-aics-ui-activity-IMActivity(Landroid/view/View;)V
    .locals 1

    .line 306
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->edInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-static {p1}, Lcom/tgs/aics/bean/Message;->createMessageWithText(Ljava/lang/String;)Lcom/tgs/aics/bean/Message;

    move-result-object p1

    .line 312
    new-instance v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {p0, p1, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    .line 314
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->refreshUI()V

    .line 315
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->edInput:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$inputLayoutConfig$18$com-tgs-aics-ui-activity-IMActivity(ZLcom/tgs/aics/bean/Message;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 514
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getWorkOrderInfo()Lcom/tgs/aics/bean/WorkOrderInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getWorkOrderInfo()Lcom/tgs/aics/bean/WorkOrderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/bean/WorkOrderInfo;->isCanChat()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 515
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->setInputLayoutVisible(Z)V

    .line 516
    iget-boolean p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->shouldPullEvaluationPage:Z

    if-eqz p1, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->createRatingRequestMessage()V

    goto :goto_0

    .line 519
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 520
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->show()V

    goto :goto_0

    .line 523
    :cond_1
    iget-boolean p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->shouldPullEvaluationPage:Z

    if-eqz p1, :cond_2

    const-string p1, "tgs_aics_expired_tips"

    .line 524
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 525
    :cond_2
    invoke-direct {p0, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->setInputLayoutVisible(Z)V

    goto :goto_0

    .line 528
    :cond_3
    invoke-direct {p0, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->setInputLayoutVisible(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method synthetic lambda$inputLayoutConfig$19$com-tgs-aics-ui-activity-IMActivity(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    .line 512
    new-instance p2, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda36;

    invoke-direct {p2, p0, p1, p4}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda36;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;ZLcom/tgs/aics/bean/Message;)V

    invoke-virtual {p0, p2}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$sendDiagnoseLogFile$46$com-tgs-aics-ui-activity-IMActivity(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 2

    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finish send diagnose log file message."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "aics.IMActivity"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string p1, "tgs_aics_sent"

    .line 1226
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1227
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1228
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    invoke-virtual {p1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->notifyDataSetChanged()V

    .line 1229
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    invoke-virtual {p2}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    :cond_0
    const-string p1, "tgs_aics_network_error_retry_later"

    .line 1232
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$sendDiagnoseLogFile$47$com-tgs-aics-ui-activity-IMActivity(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 7

    .line 1223
    new-instance v6, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda15;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda15;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V

    invoke-virtual {p0, v6}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$sendDiagnoseLogFile$48$com-tgs-aics-ui-activity-IMActivity(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 7

    .line 1222
    new-instance v6, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda40;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda40;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V

    invoke-virtual {p0, v6}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$showBottomDialog$32$com-tgs-aics-ui-activity-IMActivity(Landroid/content/DialogInterface;)V
    .locals 0

    .line 860
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->bottomDialog:Landroid/app/Dialog;

    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->bottomDialogDismiss(Landroid/app/Dialog;)V

    return-void
.end method

.method synthetic lambda$tipsDialogConfig$14$com-tgs-aics-ui-activity-IMActivity(Landroid/view/View;)V
    .locals 0

    .line 462
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$tipsDialogConfig$15$com-tgs-aics-ui-activity-IMActivity(Landroid/view/View;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->createRatingRequestMessage()V

    return-void
.end method

.method synthetic lambda$updateEvaluationSystemConfig$40$com-tgs-aics-ui-activity-IMActivity(Landroid/widget/CheckBox;Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p4, :cond_0

    .line 1069
    iget-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tagList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1071
    :cond_0
    iget-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tagList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1073
    :goto_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->submitBtn:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isRequiredTag()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tagList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_2

    :cond_1
    invoke-virtual {p2}, Lcom/tgs/aics/bean/EvaluationSystemBean$EvaluateContentConfigs;->isRequiredInput()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x1

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method synthetic lambda$uploadClientLogFile$41$com-tgs-aics-ui-activity-IMActivity(ZLcom/tgs/aics/bean/Message;Lcom/tgs/aics/bean/Message;ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1173
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "tgs_aics_sent"

    .line 1174
    invoke-direct {p0, p3, p1, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->updateLogFileUploadMessageContent(Lcom/tgs/aics/bean/Message;Ljava/lang/String;Z)V

    .line 1175
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    invoke-virtual {p2}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_1

    .line 1178
    :cond_0
    sget p1, Lcom/tgs/aics/utils/ConstantUtil$MessageErrorCode;->EXPIRED:I

    if-ne p4, p1, :cond_1

    const-string p1, "tgs_aics_expired_tips"

    .line 1179
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1180
    :cond_1
    sget p1, Lcom/tgs/aics/utils/ConstantUtil$MessageErrorCode;->NOT_RATED:I

    if-ne p4, p1, :cond_2

    .line 1181
    invoke-direct {p0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->setInputLayoutVisible(Z)V

    .line 1182
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1183
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->show()V

    goto :goto_0

    .line 1185
    :cond_2
    invoke-static {p0, p5}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string p1, "tgs_aics_click_to_send"

    .line 1186
    invoke-direct {p0, p3, p1, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->updateLogFileUploadMessageContent(Lcom/tgs/aics/bean/Message;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method synthetic lambda$uploadClientLogFile$42$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/bean/Message;ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 8

    .line 1171
    new-instance v7, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda35;

    move-object v0, v7

    move-object v1, p0

    move v2, p2

    move-object v3, p5

    move-object v4, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda35;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;ZLcom/tgs/aics/bean/Message;Lcom/tgs/aics/bean/Message;ILjava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$uploadClientLogFile$43$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/bean/Message;)V
    .locals 2

    const-string v0, "tgs_aics_send_fail_try_again_later"

    .line 1192
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "tgs_aics_click_to_send"

    const/4 v1, 0x1

    .line 1193
    invoke-direct {p0, p1, v0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->updateLogFileUploadMessageContent(Lcom/tgs/aics/bean/Message;Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic lambda$uploadClientLogFile$44$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/bean/Message;)V
    .locals 2

    const-string v0, "tgs_aics_network_error_retry_later"

    .line 1203
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "tgs_aics_click_to_send"

    const/4 v1, 0x1

    .line 1204
    invoke-direct {p0, p1, v0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->updateLogFileUploadMessageContent(Lcom/tgs/aics/bean/Message;Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic lambda$uploadClientLogFile$45$com-tgs-aics-ui-activity-IMActivity(ZLjava/lang/String;Lcom/tgs/aics/bean/Message;Ljava/lang/String;)V
    .locals 6

    const-string v0, "aics.IMActivity"

    const-string v1, "uploadClientLogFile fail msg: "

    .line 1160
    :try_start_0
    new-instance v2, Lcom/tgs/aics/http/HttpPostMultipart;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/tgs/aics/http/HttpPostMultipart;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "file"

    if-eqz p1, :cond_0

    .line 1162
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/tgs/aics/http/HttpPostMultipart;->addLogFilePart(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 1164
    :cond_0
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->logFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/tgs/aics/http/HttpPostMultipart;->addLogFilePart(Ljava/lang/String;Ljava/io/File;)V

    .line 1166
    :goto_0
    invoke-virtual {v2}, Lcom/tgs/aics/http/HttpPostMultipart;->finish()Lcom/tgs/aics/bean/UploadResultBean;

    move-result-object v2

    .line 1167
    invoke-virtual {v2}, Lcom/tgs/aics/bean/UploadResultBean;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1168
    invoke-virtual {v2}, Lcom/tgs/aics/bean/UploadResultBean;->getFileUrlCn()Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-virtual {p3}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, "\u73a9\u5bb6\u7aef\u65e5\u5fd7"

    .line 1169
    invoke-static {v2, v3, v4, v1, v5}, Lcom/tgs/aics/bean/Message;->createMessageWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;

    move-result-object v1

    .line 1171
    new-instance v2, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p3}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda12;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/tgs/aics/bean/Message;)V

    invoke-virtual {p0, v1, v2}, Lcom/tgs/aics/ui/activity/IMActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    goto :goto_1

    .line 1190
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tgs/aics/bean/UploadResultBean;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    new-instance v1, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p3}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda13;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/tgs/aics/bean/Message;)V

    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    if-eqz p1, :cond_2

    .line 1198
    invoke-static {p4, p2}, Lcom/tgs/aics/utils/Utils;->cleanupAtPath(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1201
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "uploadClientLogFile exception e: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    new-instance p1, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0, p3}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda14;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/tgs/aics/bean/Message;)V

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method synthetic lambda$uploadFile$23$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/bean/UploadResultBean;)V
    .locals 1

    .line 664
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageSendStatus;->FAILED:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    invoke-virtual {p1, v0}, Lcom/tgs/aics/bean/Message;->setSendStatus(Lcom/tgs/aics/bean/Message$MessageSendStatus;)V

    .line 665
    invoke-virtual {p2}, Lcom/tgs/aics/bean/UploadResultBean;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/tgs/aics/ui/activity/IMActivity;->isMediaAuditCheckFailure(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "tgs_aics_media_audit_rejected_tip"

    .line 666
    invoke-virtual {p0, p2}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/aics/bean/Message;->setMsg(Ljava/lang/String;)V

    .line 667
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->smoothScrollToMediaAuditTip(Lcom/tgs/aics/bean/Message;)V

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 669
    invoke-virtual {p1, p2}, Lcom/tgs/aics/bean/Message;->setMsg(Ljava/lang/String;)V

    .line 671
    :goto_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    invoke-virtual {p1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method synthetic lambda$uploadFile$24$com-tgs-aics-ui-activity-IMActivity(Lcom/tgs/aics/bean/Message;)V
    .locals 1

    .line 678
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageSendStatus;->FAILED:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    invoke-virtual {p1, v0}, Lcom/tgs/aics/bean/Message;->setSendStatus(Lcom/tgs/aics/bean/Message$MessageSendStatus;)V

    .line 679
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerAdapter:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    invoke-virtual {p1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method synthetic lambda$uploadFile$25$com-tgs-aics-ui-activity-IMActivity(Ljava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 4

    const-string v0, "upload file fail errMsg: "

    .line 649
    :try_start_0
    new-instance v1, Lcom/tgs/aics/http/HttpPostMultipart;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tgs/aics/http/HttpPostMultipart;-><init>(Ljava/util/Map;)V

    const-string v2, "file"

    .line 650
    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->getCompressBitmapPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/tgs/aics/http/HttpPostMultipart;->addFilePart(Ljava/lang/String;Ljava/io/File;)V

    .line 651
    invoke-virtual {v1}, Lcom/tgs/aics/http/HttpPostMultipart;->finish()Lcom/tgs/aics/bean/UploadResultBean;

    move-result-object p1

    .line 652
    invoke-virtual {p1}, Lcom/tgs/aics/bean/UploadResultBean;->isSuccess()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "aics.IMActivity"

    if-eqz v1, :cond_1

    .line 653
    :try_start_1
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getFiles()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/UploadResultBean;->getFileThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->setThumbnailUrl(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/UploadResultBean;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->setUrl(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/UploadResultBean;->getFileThumbnailUrlCn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->setThumbnailUrlCn(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/UploadResultBean;->getFileUrlCn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->setUrlCn(Ljava/lang/String;)V

    .line 657
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    if-eqz p1, :cond_0

    .line 658
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-static {p2}, Lcom/tgs/aics/bean/Message;->message2JsonStr(Lcom/tgs/aics/bean/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tgs/aics/websocket/WebSocketService;->sendMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "sendMessage null webSocketService"

    .line 660
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 662
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tgs/aics/bean/UploadResultBean;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p2, p1}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda33;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/bean/UploadResultBean;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 676
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    .line 677
    new-instance p1, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda34;

    invoke-direct {p1, p0, p2}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda34;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Lcom/tgs/aics/bean/Message;)V

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1277
    invoke-super {p0, p1, p2, p3}, Lcom/tgs/aics/ui/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    const/16 p2, 0x2711

    if-ne p1, p2, :cond_2

    .line 1281
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashFormMessageId:Ljava/lang/String;

    .line 1282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1283
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tgs/aics/bean/Message;

    .line 1284
    invoke-virtual {p3}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 1285
    invoke-virtual {p3, p1}, Lcom/tgs/aics/bean/Message;->setFormCommitted(Z)V

    .line 1292
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    sget-object p2, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1293
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 1294
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->sendChatReadMessage(Ljava/util/List;)V

    .line 1295
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1296
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->refreshUI()V

    .line 1301
    :cond_2
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 1302
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    const-string p1, ""

    .line 1303
    sput-object p1, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashFormMessageId:Ljava/lang/String;

    .line 1307
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->initGetMessageListener()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1315
    invoke-super {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 v0, 0x2711

    if-ne p1, v0, :cond_1

    .line 573
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->imgPick()V

    goto :goto_0

    .line 576
    :cond_0
    invoke-static {p0}, Lcom/tgs/aics/utils/Utils;->showPermissionTipsDialog(Landroid/content/Context;)V

    .line 579
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/tgs/aics/ui/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public preBuildMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V
    .locals 2

    .line 1111
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageSendStatus;->SENDING:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    invoke-virtual {p1, v0}, Lcom/tgs/aics/bean/Message;->setSendStatus(Lcom/tgs/aics/bean/Message$MessageSendStatus;)V

    .line 1113
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_RECORD:Lcom/tgs/aics/bean/Message$MessageType;

    if-eq v0, v1, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageCallBackCacheMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->refreshUI()V

    return-void
.end method

.method public sendDiagnoseLogFile(Ljava/lang/String;)V
    .locals 3

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Send diagnose log file message."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aics.IMActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "tgs_aics_diagnose_result_upload_message"

    .line 1217
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/bean/Message;->createMessageWithText(Ljava/lang/String;)Lcom/tgs/aics/bean/Message;

    move-result-object v0

    .line 1218
    new-instance v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u8bca\u65ad\u65e5\u5fd7"

    const-string v2, ""

    .line 1220
    invoke-static {v2, v0, v2, p1, v1}, Lcom/tgs/aics/bean/Message;->createMessageWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;

    move-result-object p1

    .line 1222
    new-instance v0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda38;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {p0, p1, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    return-void
.end method

.method public sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V
    .locals 2

    .line 1248
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageSendStatus;->SENDING:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    invoke-virtual {p1, v0}, Lcom/tgs/aics/bean/Message;->setSendStatus(Lcom/tgs/aics/bean/Message$MessageSendStatus;)V

    .line 1250
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1251
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getContentType()Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageContentType;->RATING_SCORE:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getContentType()Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageContentType;->CLIENT_TYPE_LOG_FILE_UPLOAD:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-eq v0, v1, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->messageCallBackCacheMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    sget-object p2, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    if-eqz p2, :cond_1

    .line 1256
    sget-object p2, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-static {p1}, Lcom/tgs/aics/bean/Message;->message2JsonStr(Lcom/tgs/aics/bean/Message;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tgs/aics/websocket/WebSocketService;->sendMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "aics.IMActivity"

    const-string p2, "sendMessage null webSocketService"

    .line 1258
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public showBottomDialog(Lcom/tgs/aics/bean/Message;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 842
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->isFormCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->showEvaluatedDialog()V

    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->bottomDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 850
    :cond_1
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "BottomDialog"

    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity;->bottomDialog:Landroid/app/Dialog;

    .line 851
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "tgs_aics_layout_bottom_dialog"

    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 852
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->bottomDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0, v1, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->initDialogView(Landroid/view/View;Landroid/app/Dialog;Lcom/tgs/aics/bean/Message;)V

    .line 853
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->bottomDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 854
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 855
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 856
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->bottomDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 858
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->bottomDialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 859
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->bottomDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "BottomDialog_Animation"

    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 860
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->bottomDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda30;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 861
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity;->bottomDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public uploadClientLogFile(Lcom/tgs/aics/bean/Message;)V
    .locals 9

    .line 1130
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->logFilePaths:[Ljava/lang/String;

    const-string v1, "tgs_aics_send_fail_empty_log_file_path"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->logFilePaths:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/IMActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/aics_client_logs"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1134
    sget-object v3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->logFilePaths:[Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/tgs/aics/utils/Utils;->createFolderAndCompressFiles([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1136
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    move-object v8, v0

    move v5, v1

    move-object v6, v3

    goto :goto_1

    .line 1137
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1141
    :cond_2
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->logFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->logFilePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 1146
    :cond_3
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->logFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/tgs/aics/utils/Utils;->getFileSizeInBytes(Landroid/content/Context;Ljava/io/File;)J

    move-result-wide v0

    const/16 v3, 0xa

    .line 1147
    invoke-static {v0, v1, v3}, Lcom/tgs/aics/utils/Utils;->isFileSizeGreaterThanMB(JI)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "tgs_aics_send_fail_too_large_log_file_size"

    .line 1148
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v0, ""

    move-object v6, v0

    move-object v8, v6

    move v5, v2

    :goto_1
    const-string v0, "tgs_aics_sending"

    .line 1153
    invoke-direct {p0, p1, v0, v2}, Lcom/tgs/aics/ui/activity/IMActivity;->updateLogFileUploadMessageContent(Lcom/tgs/aics/bean/Message;Ljava/lang/String;Z)V

    .line 1158
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda49;

    move-object v3, v1

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda49;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;ZLjava/lang/String;Lcom/tgs/aics/bean/Message;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1142
    :cond_5
    :goto_2
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/IMActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public uploadFile(Ljava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 2

    const-string v0, "https:"

    .line 644
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 646
    invoke-virtual {p2, v0}, Lcom/tgs/aics/bean/Message;->setMsg(Ljava/lang/String;)V

    .line 647
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, p1, p2}, Lcom/tgs/aics/ui/activity/IMActivity$$ExternalSyntheticLambda42;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;Ljava/lang/String;Lcom/tgs/aics/bean/Message;)V

    invoke-virtual {v0, v1}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
