.class public Lcom/tgs/aics/ui/activity/RechargeRecordActivity;
.super Lcom/tgs/aics/ui/activity/BaseActivity;
.source "RechargeRecordActivity.java"


# instance fields
.field private adapter:Lcom/tgs/aics/adapter/RechargeRecordAdapter;

.field private currentPage:I

.field private feedbackLoadingDialog:Lcom/tgs/aics/ui/dialog/LoadingDialog;

.field private lvRecord:Landroid/widget/ListView;

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

.field private rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

.field private tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->currentPage:I

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->messageCallBackCacheMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;)Lcom/tgs/aics/ui/dialog/TipsDialog;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    return-object p0
.end method

.method private getClickableHtml(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 165
    new-instance v0, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;

    invoke-direct {v0}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tgs/aics/thirdtool/htmlspanner/HtmlSpanner;->fromHtml(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p1

    .line 166
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 167
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result p1

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 168
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 169
    invoke-direct {p0, v0, v3}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->setLinkClickable(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getRecordList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/RechargeRecordBean;->getRecordsLists()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/RechargeRecordBean;->getPageSize()I

    move-result v1

    iget v2, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->currentPage:I

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private initData()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->showLoading()V

    .line 135
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getUrlParamProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tgs/aics/bean/Message;->createRechargeRecordQueryMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda10;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    return-void
.end method

.method private initGetMessageListener()V
    .locals 1

    .line 99
    new-instance v0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;)V

    sput-object v0, Lcom/tgs/aics/utils/ConstantUtil;->getMessageListener:Lcom/tgs/aics/listener/IGetMessageListener;

    return-void
.end method

.method static synthetic lambda$showBottomDialog$8(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private mockData()V
    .locals 16

    .line 189
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 191
    new-instance v1, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TGS.IPA2023000"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2020-03-0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "100"

    const-string v13, "$"

    const-string v14, "\u5df2\u5b8c\u6210\uff08\u5df2\u53d1\u8d27\uff09"

    const-string v15, "#336699"

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    new-instance v8, Lcom/tgs/aics/bean/RechargeRecordBean;

    const/4 v1, 0x3

    const/16 v2, 0x64

    const/4 v3, 0x7

    const/16 v4, 0x32

    const-string v5, ""

    const-string v6, "tishi"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/tgs/aics/bean/RechargeRecordBean;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    return-void
.end method

.method private sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->messageCallBackCacheMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    if-eqz v0, :cond_0

    .line 232
    sget-object p2, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-static {p1}, Lcom/tgs/aics/bean/Message;->message2JsonStr(Lcom/tgs/aics/bean/Message;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tgs/aics/websocket/WebSocketService;->sendMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "aics.RRecordActivity"

    const-string v0, "sendMessage null webSocketService"

    .line 234
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Null WebSocketService"

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 235
    invoke-interface {p2, v1, v2, p1, v0}, Lcom/tgs/aics/listener/ISendMessageListener;->onResult(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V

    :goto_0
    return-void
.end method

.method private setLinkClickable(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
    .locals 4

    .line 176
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 177
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 178
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 179
    new-instance v3, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$2;

    invoke-direct {v3, p0, p2}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$2;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;Landroid/text/style/URLSpan;)V

    .line 185
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private showBottomDialog(Ljava/lang/String;)V
    .locals 5

    .line 144
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "BottomDialog"

    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 145
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "tgs_aics_layout_bottom_tips_dialog"

    invoke-virtual {p0, v2}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getLayoutId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v2, "tgs_aics_tips_txt"

    .line 146
    invoke-static {p0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 147
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 148
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object v3

    new-instance v4, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, v2}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    .line 153
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 154
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 155
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x50

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    const/4 p1, 0x1

    .line 159
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 160
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v1, "BottomDialog_Animation"

    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 161
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showLoadingDialog()V
    .locals 4

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->feedbackLoadingDialog:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->feedbackLoadingDialog:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dismiss()V

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->feedbackLoadingDialog:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    .line 281
    :cond_0
    new-instance v0, Lcom/tgs/aics/ui/dialog/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->feedbackLoadingDialog:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    .line 282
    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->show()V

    .line 283
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda4;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private tipsDialogConfig()V
    .locals 3

    .line 52
    new-instance v0, Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_force_evaluate_title"

    .line 53
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setTitle(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_force_evaluate_content"

    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setContent(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_force_evaluate_left_btn_text"

    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda8;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_force_evaluate_right_btn_text"

    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$1;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$1;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-static {}, Lcom/tgs/aics/bean/Message;->createStatusMessage()Lcom/tgs/aics/bean/Message;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda9;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    return-void
.end method

.method private updateUI()V
    .locals 7

    .line 198
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/RechargeRecordBean;->getPageSize()I

    move-result v0

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/RechargeRecordBean;->getRecordsLists()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->adapter:Lcom/tgs/aics/adapter/RechargeRecordAdapter;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/RechargeRecordBean;->getRecordsLists()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->setData(Ljava/util/List;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->adapter:Lcom/tgs/aics/adapter/RechargeRecordAdapter;

    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getRecordList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->setData(Ljava/util/List;)V

    .line 204
    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "tgs_aics_recharge_record_list_head"

    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "tgs_aics_recharge_record_tips"

    .line 205
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "tgs_aics_recharge_query_tips"

    .line 206
    invoke-virtual {p0, v3}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {v5}, Lcom/tgs/aics/bean/RechargeRecordBean;->getRecentRecordInDays()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {v5}, Lcom/tgs/aics/bean/RechargeRecordBean;->getMaxRecordLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->lvRecord:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/RechargeRecordBean;->getRecordsLists()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/RechargeRecordBean;->getRecordsLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/RechargeRecordBean;->getRecordsLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/RechargeRecordBean;->getPageSize()I

    move-result v1

    if-gt v0, v1, :cond_1

    goto :goto_1

    .line 212
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "tgs_aics_recharge_record_list_foot"

    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "tgs_aics_load_more_btn"

    .line 213
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda15;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->lvRecord:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public feedback(Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getUrlParamProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tgs/aics/bean/Message;->createFeedbackRechargeRecordMessage(Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;

    move-result-object p1

    .line 260
    new-instance v0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda7;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;)V

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    return-void
.end method

.method public feedbackCheckWorkOrderStatus(Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;)V
    .locals 2

    .line 240
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->showLoadingDialog()V

    .line 241
    invoke-static {}, Lcom/tgs/aics/bean/Message;->createStatusMessage()Lcom/tgs/aics/bean/Message;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;)V

    invoke-direct {p0, v0, v1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    return-void
.end method

.method protected getViewName()Ljava/lang/String;
    .locals 1

    const-string v0, "tgs_aics_activity_recharge_record"

    return-object v0
.end method

.method protected initView()V
    .locals 2

    const-string v0, "tgs_aics_faq_recharge_query_root_layout"

    .line 83
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->loadBackgroundImage(Landroid/view/ViewGroup;Z)V

    .line 84
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->url:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->initGetMessageListener()V

    .line 86
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->tipsDialogConfig()V

    const-string v0, "tgs_aics_recharge_record_lv"

    .line 88
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->lvRecord:Landroid/widget/ListView;

    .line 89
    new-instance v0, Lcom/tgs/aics/adapter/RechargeRecordAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/tgs/aics/adapter/RechargeRecordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->adapter:Lcom/tgs/aics/adapter/RechargeRecordAdapter;

    .line 90
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->lvRecord:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "tgs_aics_recharge_query_title"

    .line 91
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$feedback$13$com-tgs-aics-ui-activity-RechargeRecordActivity(ZLjava/lang/String;)V
    .locals 1

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->feedbackLoadingDialog:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->feedbackLoadingDialog:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    .line 266
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 269
    :cond_1
    invoke-static {p0, p2}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method synthetic lambda$feedback$14$com-tgs-aics-ui-activity-RechargeRecordActivity(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    .line 260
    new-instance p2, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1, p3}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda5;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;ZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$feedbackCheckWorkOrderStatus$11$com-tgs-aics-ui-activity-RechargeRecordActivity(ZLcom/tgs/aics/bean/Message;Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;)V
    .locals 0

    if-eqz p1, :cond_2

    .line 244
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getWorkOrderInfo()Lcom/tgs/aics/bean/WorkOrderInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getWorkOrderInfo()Lcom/tgs/aics/bean/WorkOrderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/bean/WorkOrderInfo;->isCanChat()Z

    move-result p1

    if-nez p1, :cond_1

    .line 245
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->feedbackLoadingDialog:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->feedbackLoadingDialog:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dismiss()V

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 249
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->show()V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p0, p3}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->feedback(Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;)V

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p0, p3}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->feedback(Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;)V

    :cond_3
    :goto_0
    return-void
.end method

.method synthetic lambda$feedbackCheckWorkOrderStatus$12$com-tgs-aics-ui-activity-RechargeRecordActivity(Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    .line 242
    new-instance p3, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p2, p5, p1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda6;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;ZLcom/tgs/aics/bean/Message;Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;)V

    invoke-virtual {p0, p3}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$initData$6$com-tgs-aics-ui-activity-RechargeRecordActivity()V
    .locals 0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->hideLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method synthetic lambda$initData$7$com-tgs-aics-ui-activity-RechargeRecordActivity(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    .line 136
    new-instance p1, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda13;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;)V

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$initGetMessageListener$3$com-tgs-aics-ui-activity-RechargeRecordActivity(Landroid/view/View;)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/RechargeRecordBean;->getQueryTips()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->showBottomDialog(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$initGetMessageListener$4$com-tgs-aics-ui-activity-RechargeRecordActivity(Lcom/tgs/aics/bean/Message;)V
    .locals 0

    .line 108
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getRechargeRecordBean()Lcom/tgs/aics/bean/RechargeRecordBean;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/tgs/aics/bean/RechargeRecordBean;->getQueryTips()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 110
    new-instance p1, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;)V

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->showTipsIcon(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tgs/aics/bean/RechargeRecordBean;->getRecordsLists()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/RechargeRecordBean;->getRecordsLists()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->updateUI()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 114
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->showLoadErrorLayout(Z)V

    :goto_0
    return-void
.end method

.method synthetic lambda$initGetMessageListener$5$com-tgs-aics-ui-activity-RechargeRecordActivity(Lcom/tgs/aics/bean/Message;)V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->messageCallBackCacheMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/listener/ISendMessageListener;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageReceiptBean()Lcom/tgs/aics/bean/MessageReceiptBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
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

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getRechargeRecordBean()Lcom/tgs/aics/bean/RechargeRecordBean;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->messageCallBackCacheMap:Ljava/util/Map;

    .line 106
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getRechargeRecordBean()Lcom/tgs/aics/bean/RechargeRecordBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tgs/aics/bean/RechargeRecordBean;->getQueryMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda12;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;Lcom/tgs/aics/bean/Message;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_WITHDRAW:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v0, v1, :cond_3

    .line 119
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/Message;

    .line 120
    invoke-virtual {v1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v0, v1, :cond_4

    .line 126
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method synthetic lambda$showBottomDialog$9$com-tgs-aics-ui-activity-RechargeRecordActivity(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<!DOCTYPE html><html><head><style>p { margin: 0; }</style></head><body>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "</body></html>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getClickableHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 151
    new-instance v0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p2, p1}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda14;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$showLoadingDialog$15$com-tgs-aics-ui-activity-RechargeRecordActivity()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->feedbackLoadingDialog:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->feedbackLoadingDialog:Lcom/tgs/aics/ui/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method synthetic lambda$tipsDialogConfig$0$com-tgs-aics-ui-activity-RechargeRecordActivity(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$tipsDialogConfig$1$com-tgs-aics-ui-activity-RechargeRecordActivity(ZLcom/tgs/aics/bean/Message;)V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->hideLoading()V

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getWorkOrderInfo()Lcom/tgs/aics/bean/WorkOrderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getWorkOrderInfo()Lcom/tgs/aics/bean/WorkOrderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/bean/WorkOrderInfo;->isCanChat()Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 73
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->show()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->initData()V

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->initData()V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$tipsDialogConfig$2$com-tgs-aics-ui-activity-RechargeRecordActivity(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    .line 68
    new-instance p2, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p1, p4}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity$$ExternalSyntheticLambda11;-><init>(Lcom/tgs/aics/ui/activity/RechargeRecordActivity;ZLcom/tgs/aics/bean/Message;)V

    invoke-virtual {p0, p2}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$updateUI$10$com-tgs-aics-ui-activity-RechargeRecordActivity(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 214
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->adapter:Lcom/tgs/aics/adapter/RechargeRecordAdapter;

    invoke-virtual {p2}, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->getCount()I

    move-result p2

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/RechargeRecordBean;->getRecordsLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 215
    iget p2, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->currentPage:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->currentPage:I

    .line 216
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {p2}, Lcom/tgs/aics/bean/RechargeRecordBean;->getPageSize()I

    move-result p2

    iget v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->currentPage:I

    mul-int/2addr p2, v0

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/RechargeRecordBean;->getRecordsLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 217
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->adapter:Lcom/tgs/aics/adapter/RechargeRecordAdapter;

    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->getRecordList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->setData(Ljava/util/List;)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->adapter:Lcom/tgs/aics/adapter/RechargeRecordAdapter;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/RechargeRecordBean;->getRecordsLists()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tgs/aics/adapter/RechargeRecordAdapter;->setData(Ljava/util/List;)V

    const/4 p2, 0x4

    .line 220
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 298
    invoke-super {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->onResume()V

    .line 299
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->getMessageListener:Lcom/tgs/aics/listener/IGetMessageListener;

    if-nez v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/RechargeRecordActivity;->initGetMessageListener()V

    :cond_0
    return-void
.end method
