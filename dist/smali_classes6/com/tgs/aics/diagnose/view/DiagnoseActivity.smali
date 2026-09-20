.class public Lcom/tgs/aics/diagnose/view/DiagnoseActivity;
.super Lcom/tgs/aics/ui/activity/BaseActivity;
.source "DiagnoseActivity.java"

# interfaces
.implements Lcom/tgs/aics/diagnose/listener/OnDiagnoseUpdate;


# instance fields
.field private animator:Landroid/animation/ObjectAnimator;

.field private bindIntent:Landroid/content/Intent;

.field private final mDiagnoseListAdapter:Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;

.field private mStatus:I

.field private originalTranslationX:F

.field private originalTranslationY:F

.field private tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;-><init>()V

    .line 61
    new-instance v0, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->mDiagnoseListAdapter:Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)Lcom/tgs/aics/ui/dialog/TipsDialog;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)Landroid/content/Intent;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->bindIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->originalTranslationX:F

    return p0
.end method

.method static synthetic access$202(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;F)F
    .locals 0

    .line 59
    iput p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->originalTranslationX:F

    return p1
.end method

.method static synthetic access$300(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->originalTranslationY:F

    return p0
.end method

.method static synthetic access$302(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;F)F
    .locals 0

    .line 59
    iput p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->originalTranslationY:F

    return p1
.end method

.method static synthetic access$400(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->animator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$402(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->animator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private autoUploadNetDiagnoseResult(Lcom/tgs/aics/diagnose/Result;)V
    .locals 1

    const-string v0, "autoUploadNetDiagnoseResult"

    .line 226
    invoke-static {v0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/Result;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tgs/aics/http/HttpApi;->netDiagnoseUpload(Ljava/lang/String;)V

    return-void
.end method

.method private cancelCheck(Z)Z
    .locals 2

    .line 200
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/DiagnoseManager;->removeDiagnose(Lcom/tgs/aics/diagnose/IDiagnose;)Z

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private cancelCheckAnimation(Landroid/widget/ImageView;)V
    .locals 0

    .line 391
    iget-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->animator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelCheckBefore()V
    .locals 2

    .line 191
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getStatus()I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/TipsDialog;->show()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 195
    invoke-direct {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->cancelCheck(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private feedbackToDeveloper()V
    .locals 5

    const-string v0, "On click feedback to developer."

    .line 266
    invoke-static {v0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 267
    new-instance v0, Lcom/tgs/aics/ui/dialog/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {v0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->show()V

    .line 271
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda16;-><init>(Lcom/tgs/aics/ui/dialog/LoadingDialog;)V

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda17;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;Lcom/tgs/aics/ui/dialog/LoadingDialog;)V

    invoke-virtual {v1, v2}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initTipsDialog()V
    .locals 3

    .line 80
    new-instance v0, Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_diagnose_cancel_check_tips_title"

    .line 81
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setTitle(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_diagnose_cancel_check_tips"

    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setContent(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setContentAlign(I)V

    .line 84
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_cancel"

    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda14;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_confirm"

    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda15;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWebSocket()V
    .locals 3

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tgs/aics/websocket/WebSocketService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->bindIntent:Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "Binding diagnose activity socket service."

    .line 170
    invoke-static {v0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->bindIntent:Landroid/content/Intent;

    new-instance v1, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$2;

    invoke-direct {v1, p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$2;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic lambda$feedbackToDeveloper$7(Lcom/tgs/aics/ui/dialog/LoadingDialog;)V
    .locals 1

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private loadCheckAnimation(Landroid/widget/ImageView;)V
    .locals 2

    .line 357
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$3;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 319
    :cond_0
    sget-object p2, Lcom/tgs/aics/bean/Message$MessageSendStatus;->SENDING:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/bean/Message;->setSendStatus(Lcom/tgs/aics/bean/Message$MessageSendStatus;)V

    .line 320
    sget-object p2, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    if-eqz p2, :cond_1

    .line 321
    sget-object p2, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-static {p1}, Lcom/tgs/aics/bean/Message;->message2JsonStr(Lcom/tgs/aics/bean/Message;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tgs/aics/websocket/WebSocketService;->sendMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "sendMessage null webSocketService"

    .line 323
    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->E(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startCheck()Z
    .locals 3

    .line 208
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getStatus()I

    move-result v0

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    const-string v0, "To start check."

    .line 211
    invoke-static {v0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda4;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v2, v1}, Lcom/tgs/aics/diagnose/DiagnoseManager;->startDiagnose(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "Not need to start check again while already checking."

    .line 214
    invoke-static {v0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->mDiagnoseListAdapter:Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;

    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getAllDiagnoses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->set(Ljava/util/List;)Z

    .line 217
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->updateCheckCountProgress()Z

    return v0
.end method

.method private updateCheckCountProgress()Z
    .locals 8

    .line 328
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->mDiagnoseListAdapter:Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;

    const/4 v1, 0x2

    new-array v2, v1, [J

    .line 330
    invoke-virtual {v0, v2}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->getCurrent([J)Z

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    long-to-int v4, v4

    :goto_0
    const/4 v5, 0x1

    aget-wide v6, v2, v5

    .line 332
    invoke-direct {p0, v6, v7}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->updateCheckIntendTime(J)Z

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->getItemCount()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    const-string v2, "tgs_aics_diagnose_checkCountProgress"

    .line 334
    invoke-static {p0, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    add-int/lit8 v7, v4, 0x1

    .line 335
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v5

    invoke-static {p0, v2, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-static {v6, v1}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    const-string v1, "tgs_aics_diagnose_checkProgress"

    .line 336
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 337
    instance-of v2, v1, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_3

    if-lez v0, :cond_2

    if-ltz v4, :cond_2

    int-to-float v2, v4

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    float-to-int v3, v2

    .line 340
    :cond_2
    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3, v5}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    :cond_3
    return v5
.end method

.method private updateCheckIntendTime(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3e8

    .line 349
    div-long/2addr p1, v2

    const-wide/16 v2, 0x3c

    div-long/2addr p1, v2

    :goto_0
    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const-wide/16 p1, 0x1

    :cond_1
    const-string v0, "tgs_aics_diagnose_checkIntendTime"

    .line 351
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 352
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "tgs_aics_diagnose_intendMinuteTime"

    invoke-static {p0, p1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-static {v0, p1}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    return v1
.end method

.method private updateStatus(I)V
    .locals 14

    .line 396
    invoke-static {}, Lcom/tgs/aics/diagnose/utils/UiUtils;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;I)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->updateCheckCountProgress()Z

    .line 401
    iget v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->mStatus:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    const-string v0, "tgs_aics_activity_diagnose_root_layout"

    .line 404
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 407
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update diagnose status."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 408
    iput p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->mStatus:I

    const-string v0, "tgs_aics_diagnose_pleaseCheckWithStableNetwork"

    .line 409
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2711

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    const-string v0, "tgs_aics_diagnose_feedbackToDeveloper"

    const-string v1, "tgs_aics_diagnose_selector_button"

    const/4 v4, -0x1

    const-string v5, "tgs_aics_diagnose_recheck"

    const-string v6, "tgs_aics_diagnose_checkingProgressLL"

    const-string v7, "tgs_aics_diagnose_logoSubTitle"

    const-string v8, "tgs_aics_diagnose_checkNetwork"

    const-string v9, "tgs_aics_diagnose_logoTitle"

    const-string v10, ""

    const-string v11, "tgs_aics_diagnose_checkResultBottomBt"

    const-string v12, "tgs_aics_diagnose_logo"

    const-string v13, "tgs_aics_diagnose_checkButton"

    packed-switch p1, :pswitch_data_0

    .line 489
    invoke-static {p0, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v10}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 490
    invoke-static {p0, v12}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 491
    invoke-static {p0, v12}, Lcom/tgs/aics/utils/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 490
    invoke-static {p1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Z

    .line 492
    invoke-static {p0, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 493
    invoke-static {p0, v6}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 494
    invoke-static {p0, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 495
    invoke-static {p0, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-static {p1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 496
    invoke-static {p0, v11}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 497
    invoke-static {p0, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v10}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 498
    invoke-static {p0, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Z

    .line 499
    invoke-static {p0, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "tgs_aics_diagnose_textMain"

    .line 500
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 499
    invoke-static {p1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewTextColor(Landroid/view/View;I)Z

    .line 501
    invoke-static {p0, v12}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->cancelCheckAnimation(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 459
    :pswitch_0
    invoke-static {p0, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v7, "tgs_aics_diagnose_check_fail_retry"

    .line 460
    invoke-static {p0, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 459
    invoke-static {p1, v7}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 461
    invoke-static {p0, v12}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v7, "tgs_aics_diagnose_icon_failed"

    .line 462
    invoke-static {p0, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 461
    invoke-static {p1, v7}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Z

    .line 463
    invoke-static {p0, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 464
    invoke-static {p0, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v7, "tgs_aics_diagnose_check_failed"

    .line 465
    invoke-static {p0, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 464
    invoke-static {p1, v7}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 466
    invoke-static {p0, v6}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 467
    invoke-static {p0, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v10}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 468
    invoke-static {p0, v11}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 469
    invoke-static {p0, v11}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda12;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)V

    invoke-static {p1, v2}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    .line 470
    invoke-static {p0, v11}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 471
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {p1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 472
    invoke-static {p0, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda13;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)V

    invoke-static {p1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    .line 480
    invoke-static {p0, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewTextColor(Landroid/view/View;I)Z

    .line 481
    invoke-static {p0, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 482
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 481
    invoke-static {p1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Z

    .line 483
    invoke-static {p0, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 484
    invoke-static {p0, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-static {p1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 485
    invoke-static {p0, v12}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->cancelCheckAnimation(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 431
    :pswitch_1
    invoke-static {p0, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v10}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 432
    invoke-static {p0, v12}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v7, "tgs_aics_diagnose_icon_succeed"

    .line 433
    invoke-static {p0, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 432
    invoke-static {p1, v7}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Z

    .line 434
    invoke-static {p0, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 435
    invoke-static {p0, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v7, "tgs_aics_diagnose_check_finish"

    .line 436
    invoke-static {p0, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 435
    invoke-static {p1, v7}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 437
    invoke-static {p0, v6}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 438
    invoke-static {p0, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v10}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 439
    invoke-static {p0, v11}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v3, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda10;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)V

    invoke-static {p1, v3}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    .line 447
    invoke-static {p0, v11}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 448
    invoke-static {p0, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 447
    invoke-static {p1, v3}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 449
    invoke-static {p0, v11}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 450
    invoke-static {p0, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda11;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)V

    invoke-static {p1, v2}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    .line 451
    invoke-static {p0, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewTextColor(Landroid/view/View;I)Z

    .line 452
    invoke-static {p0, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 453
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 452
    invoke-static {p1, v1}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Z

    .line 454
    invoke-static {p0, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 455
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {p1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 456
    invoke-static {p0, v12}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->cancelCheckAnimation(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 413
    :pswitch_2
    invoke-static {p0, v7}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v10}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 414
    invoke-static {p0, v12}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 415
    invoke-static {p0, v12}, Lcom/tgs/aics/utils/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 414
    invoke-static {p1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Z

    .line 416
    invoke-static {p0, v12}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->loadCheckAnimation(Landroid/widget/ImageView;)V

    .line 417
    invoke-static {p0, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 418
    invoke-static {p0, v6}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 419
    invoke-static {p0, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 420
    invoke-static {p0, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {p1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 421
    invoke-static {p0, v11}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewVisibility(Landroid/view/View;I)Z

    .line 422
    invoke-static {p0, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda9;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)V

    invoke-static {p1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    .line 423
    invoke-static {p0, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewTextColor(Landroid/view/View;I)Z

    .line 425
    invoke-static {p0, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "tgs_aics_diagnose_cancelCheck"

    .line 426
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {p1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewText(Landroid/view/View;Ljava/lang/CharSequence;)Z

    .line 427
    invoke-static {p0, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "tgs_aics_diagnose_selector_button_frame"

    .line 428
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 427
    invoke-static {p1, v0}, Lcom/tgs/aics/diagnose/utils/UiUtils;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeDiagnoseResultIntoFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    const-string v0, "Finish write diagnose result into file."

    const-string v1, "Exception write diagnose result into file.e="

    if-nez p1, :cond_0

    const-string p1, "Fail write diagnose result into file while file invalid."

    .line 232
    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->E(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "Prepare write diagnose result into file."

    .line 235
    invoke-static {v2}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 238
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez p2, :cond_2

    if-eqz v3, :cond_1

    .line 241
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void

    :cond_2
    if-nez v3, :cond_3

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 248
    :cond_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "utf-8"

    .line 249
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 250
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 253
    :goto_0
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    .line 257
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_4
    :goto_1
    return-void

    :goto_2
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 262
    :catch_3
    :cond_5
    throw p1
.end method


# virtual methods
.method protected getViewName()Ljava/lang/String;
    .locals 1

    const-string v0, "tgs_aics_activity_diagnose"

    return-object v0
.end method

.method protected initView()V
    .locals 4

    .line 106
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$1;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;Z)V

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    const-string v0, "tgs_aics_activity_diagnose_root_layout"

    .line 123
    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 124
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x23

    if-lt v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    sget-boolean v1, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->isGetNavigationBarHeight:Z

    if-nez v1, :cond_1

    .line 125
    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isReverseLandscape:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v1, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda7;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->loadBackgroundImage(Landroid/view/ViewGroup;Z)V

    .line 140
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->setAppNameTitle()V

    const/16 v0, 0x2710

    .line 141
    invoke-direct {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->updateStatus(I)V

    const-string v0, "tgs_aics_diagnose_listRecycleView"

    .line 142
    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 143
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3

    .line 144
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 145
    iget-object v1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->mDiagnoseListAdapter:Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 148
    :cond_3
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->aicsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    new-instance v0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda8;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)V

    invoke-static {v0}, Lcom/tgs/aics/utils/CommonUtil;->getAicsServerAddress(Lcom/tgs/aics/listener/IBaseBeanListener;)V

    goto :goto_1

    .line 157
    :cond_4
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    if-nez v0, :cond_5

    .line 158
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->initWebSocket()V

    :cond_5
    :goto_1
    return-void
.end method

.method synthetic lambda$feedbackToDeveloper$10$com-tgs-aics-diagnose-view-DiagnoseActivity(Lcom/tgs/aics/ui/dialog/LoadingDialog;)V
    .locals 8

    const-string v0, "Exception start im activity after diagnose upload succeed.e="

    const-string v1, "Finish diagnose activity after upload diagnose feedback result."

    const-string v2, "Finish upload feedback result: "

    const-string v3, "Fail upload diagnose file. errMsg: "

    :try_start_0
    const-string v4, "diagnose"

    const-string v5, ".txt"

    .line 281
    invoke-static {v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 282
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getLatestResult()Lcom/tgs/aics/diagnose/Result;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 283
    invoke-virtual {v5}, Lcom/tgs/aics/diagnose/Result;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->writeDiagnoseResultIntoFile(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    new-instance v5, Lcom/tgs/aics/http/HttpPostMultipart;

    invoke-direct {v5, v6}, Lcom/tgs/aics/http/HttpPostMultipart;-><init>(Ljava/util/Map;)V

    const-string v7, "file"

    .line 285
    invoke-virtual {v5, v7, v4}, Lcom/tgs/aics/http/HttpPostMultipart;->addFilePart(Ljava/lang/String;Ljava/io/File;)V

    .line 286
    invoke-virtual {v5}, Lcom/tgs/aics/http/HttpPostMultipart;->finish()Lcom/tgs/aics/bean/UploadResultBean;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 287
    invoke-virtual {v4}, Lcom/tgs/aics/bean/UploadResultBean;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 288
    invoke-virtual {v4}, Lcom/tgs/aics/bean/UploadResultBean;->getFileUrlCn()Ljava/lang/String;

    move-result-object v3

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 291
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 293
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "DiagnoseUploadUrl"

    .line 294
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    invoke-virtual {p0, v1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->startActivity(Landroid/content/Intent;)V

    .line 296
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 298
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/diagnose/utils/D;->E(Ljava/lang/String;)V

    goto :goto_3

    .line 301
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/tgs/aics/bean/UploadResultBean;->getMsg()Ljava/lang/String;

    move-result-object v6

    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/diagnose/utils/D;->E(Ljava/lang/String;)V

    .line 302
    new-instance v0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 304
    :goto_3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/ui/dialog/LoadingDialog;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception feedback to developer."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/diagnose/utils/D;->E(Ljava/lang/String;)V

    .line 307
    new-instance v0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;Lcom/tgs/aics/ui/dialog/LoadingDialog;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_4
    return-void
.end method

.method synthetic lambda$feedbackToDeveloper$8$com-tgs-aics-diagnose-view-DiagnoseActivity()V
    .locals 1

    const-string v0, "tgs_aics_send_fail_try_again_later"

    .line 302
    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$feedbackToDeveloper$9$com-tgs-aics-diagnose-view-DiagnoseActivity(Lcom/tgs/aics/ui/dialog/LoadingDialog;)V
    .locals 1

    const-string v0, "tgs_aics_send_fail_try_again_later"

    .line 308
    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->show()V

    return-void
.end method

.method synthetic lambda$initTipsDialog$0$com-tgs-aics-diagnose-view-DiagnoseActivity(Landroid/view/View;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$initTipsDialog$1$com-tgs-aics-diagnose-view-DiagnoseActivity(Landroid/view/View;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->dismiss()V

    const/4 p1, 0x1

    .line 87
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->cancelCheck(Z)Z

    return-void
.end method

.method synthetic lambda$initView$3$com-tgs-aics-diagnose-view-DiagnoseActivity(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 129
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    .line 130
    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    sput p2, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->navigationBarHeight:I

    const/4 p2, 0x1

    .line 131
    sput-boolean p2, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->isGetNavigationBarHeight:Z

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->loadBackgroundImage(Landroid/view/ViewGroup;Z)V

    return-object p3
.end method

.method synthetic lambda$initView$4$com-tgs-aics-diagnose-view-DiagnoseActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 0

    .line 150
    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseBean;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    if-nez p1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->initWebSocket()V

    :cond_0
    return-void
.end method

.method synthetic lambda$initView$5$com-tgs-aics-diagnose-view-DiagnoseActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    .line 149
    new-instance v0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda6;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;Lcom/tgs/aics/bean/BaseBean;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onDiagnoseUpdate$2$com-tgs-aics-diagnose-view-DiagnoseActivity(Lcom/tgs/aics/diagnose/IDiagnose;)V
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->onDiagnoseUpdate(Lcom/tgs/aics/diagnose/IDiagnose;)V

    return-void
.end method

.method synthetic lambda$startCheck$6$com-tgs-aics-diagnose-view-DiagnoseActivity(ZLcom/tgs/aics/diagnose/Result;)V
    .locals 0

    .line 212
    invoke-direct {p0, p2}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->autoUploadNetDiagnoseResult(Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method

.method synthetic lambda$updateStatus$11$com-tgs-aics-diagnose-view-DiagnoseActivity(I)V
    .locals 0

    .line 397
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->updateStatus(I)V

    return-void
.end method

.method synthetic lambda$updateStatus$12$com-tgs-aics-diagnose-view-DiagnoseActivity(Landroid/view/View;)V
    .locals 0

    .line 422
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->cancelCheckBefore()V

    return-void
.end method

.method synthetic lambda$updateStatus$13$com-tgs-aics-diagnose-view-DiagnoseActivity(Landroid/view/View;)V
    .locals 2

    .line 440
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getAllDiagnoses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/diagnose/IDiagnose;

    const/4 v1, 0x0

    .line 441
    invoke-interface {v0, v1}, Lcom/tgs/aics/diagnose/IDiagnose;->setOpenChildren(Z)Z

    .line 442
    iget-object v1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->mDiagnoseListAdapter:Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;

    invoke-virtual {v1, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->updateItem(Ljava/lang/Object;)Z

    goto :goto_0

    .line 444
    :cond_0
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->removeDiagnose(Lcom/tgs/aics/diagnose/IDiagnose;)Z

    .line 445
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->startCheck()Z

    return-void
.end method

.method synthetic lambda$updateStatus$14$com-tgs-aics-diagnose-view-DiagnoseActivity(Landroid/view/View;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->feedbackToDeveloper()V

    return-void
.end method

.method synthetic lambda$updateStatus$15$com-tgs-aics-diagnose-view-DiagnoseActivity(Landroid/view/View;)V
    .locals 0

    .line 469
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->feedbackToDeveloper()V

    return-void
.end method

.method synthetic lambda$updateStatus$16$com-tgs-aics-diagnose-view-DiagnoseActivity(Landroid/view/View;)V
    .locals 2

    .line 473
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getAllDiagnoses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/diagnose/IDiagnose;

    const/4 v1, 0x0

    .line 474
    invoke-interface {v0, v1}, Lcom/tgs/aics/diagnose/IDiagnose;->setOpenChildren(Z)Z

    .line 475
    iget-object v1, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->mDiagnoseListAdapter:Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;

    invoke-virtual {v1, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->updateItem(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    :cond_0
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->removeDiagnose(Lcom/tgs/aics/diagnose/IDiagnose;)Z

    .line 478
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->startCheck()Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Diagnose activity onCreate."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->addListener(Lcom/tgs/aics/diagnose/listener/OnDiagnoseUpdate;)Z

    .line 72
    invoke-super {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->startCheck()Z

    .line 74
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->initTipsDialog()V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 76
    invoke-static {p0, v1, p1, v0}, Lcom/ypx/imagepicker/utils/PStatusBarUtil;->setStatusBar(Landroid/app/Activity;IZZ)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Diagnose activity onDestroy."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 509
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->removeListener(Lcom/tgs/aics/diagnose/listener/OnDiagnoseUpdate;)Z

    const/4 v0, 0x0

    .line 510
    invoke-direct {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->cancelCheck(Z)Z

    .line 511
    invoke-super {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onDiagnoseUpdate(Lcom/tgs/aics/diagnose/IDiagnose;)V
    .locals 1

    .line 93
    invoke-static {}, Lcom/tgs/aics/diagnose/utils/UiUtils;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda5;-><init>(Lcom/tgs/aics/diagnose/view/DiagnoseActivity;Lcom/tgs/aics/diagnose/IDiagnose;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->updateCheckCountProgress()Z

    .line 98
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->updateStatus(I)V

    if-eqz p1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/tgs/aics/diagnose/view/DiagnoseActivity;->mDiagnoseListAdapter:Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;

    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/view/DiagnoseListAdapter;->updateItem(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
