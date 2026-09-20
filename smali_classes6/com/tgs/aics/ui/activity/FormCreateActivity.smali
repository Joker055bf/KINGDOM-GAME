.class public Lcom/tgs/aics/ui/activity/FormCreateActivity;
.super Lcom/tgs/aics/ui/activity/BaseActivity;
.source "FormCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/ui/activity/FormCreateActivity$GameNameReceiver;
    }
.end annotation


# static fields
.field private static final FORM_REQUEST_STORAGE:I = 0x2712

.field private static final IMAGE_ITEM_PATH_SEPARATOR:Ljava/lang/String; = "@@@"

.field private static final TAG:Ljava/lang/String; = "aics.FormCreateActivity"


# instance fields
.field private adapter:Lcom/tgs/aics/adapter/FormListAdapter;

.field private bindIntent:Landroid/content/Intent;

.field private final callbackData:Landroid/content/Intent;

.field private committedPicCount:I

.field private formListBean:Lcom/tgs/aics/bean/FormListBean;

.field private gameNameReceiver:Lcom/tgs/aics/ui/activity/FormCreateActivity$GameNameReceiver;

.field private final imgUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isFromIMActivity:Z

.field private lastUploadFileExceptionTimestamp:J

.field private layoutFormSubmitSuccess:Landroid/widget/LinearLayout;

.field private listView:Landroid/widget/ListView;

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

.field private messageIdWithForm:Ljava/lang/String;

.field private rootLayout:Landroid/widget/LinearLayout;

.field private tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

.field private tvFormSubmitSuccess:Landroid/widget/TextView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/BaseActivity;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->messageCallBackCacheMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->committedPicCount:I

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->imgUrlList:Ljava/util/List;

    .line 104
    iput-boolean v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->isFromIMActivity:Z

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->callbackData:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/ui/activity/FormCreateActivity;)Lcom/tgs/aics/ui/dialog/TipsDialog;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tgs/aics/ui/activity/FormCreateActivity;)Landroid/content/Intent;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->bindIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tgs/aics/ui/activity/FormCreateActivity;)Lcom/tgs/aics/ui/activity/FormCreateActivity$GameNameReceiver;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->gameNameReceiver:Lcom/tgs/aics/ui/activity/FormCreateActivity$GameNameReceiver;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tgs/aics/ui/activity/FormCreateActivity;)Landroid/content/Intent;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->callbackData:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tgs/aics/ui/activity/FormCreateActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->rootLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private dealWithData()V
    .locals 10

    .line 548
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->tvFormSubmitSuccess:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/FormListBean;->getSubmitText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "tgs_aics_submit_success"

    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/FormListBean;->getSubmitText()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 552
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/FormListBean$Item;

    add-int/2addr v3, v5

    .line 554
    iget-object v4, v4, Lcom/tgs/aics/bean/FormListBean$Item;->type:Lcom/tgs/aics/bean/FieldType;

    sget-object v5, Lcom/tgs/aics/bean/FieldType;->FieldTypeDateRange:Lcom/tgs/aics/bean/FieldType;

    if-ne v4, v5, :cond_1

    .line 555
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v1, v2

    .line 559
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 560
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 561
    iget-object v4, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v4}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/FormListBean$Item;

    .line 562
    iput-boolean v5, v4, Lcom/tgs/aics/bean/FormListBean$Item;->isStart:Z

    .line 567
    iget-object v6, v4, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    instance-of v6, v6, Ljava/util/List;

    const-string v7, ""

    if-eqz v6, :cond_3

    .line 568
    iget-object v6, v4, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 569
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 570
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 571
    iput-object v8, v4, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    move-object v6, v7

    .line 573
    :goto_3
    iget-object v8, v4, Lcom/tgs/aics/bean/FormListBean$Item;->fieldName:Ljava/lang/Object;

    instance-of v8, v8, Ljava/util/List;

    if-eqz v8, :cond_4

    .line 574
    iget-object v7, v4, Lcom/tgs/aics/bean/FormListBean$Item;->fieldName:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 575
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 576
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 577
    iput-object v8, v4, Lcom/tgs/aics/bean/FormListBean$Item;->fieldName:Ljava/lang/Object;

    .line 580
    :cond_4
    invoke-virtual {v4}, Lcom/tgs/aics/bean/FormListBean$Item;->clone()Lcom/tgs/aics/bean/FormListBean$Item;

    move-result-object v4

    .line 581
    iput-object v6, v4, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    .line 582
    iput-boolean v2, v4, Lcom/tgs/aics/bean/FormListBean$Item;->isStart:Z

    .line 583
    iput-object v7, v4, Lcom/tgs/aics/bean/FormListBean$Item;->fieldName:Ljava/lang/Object;

    .line 585
    iget-object v6, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v6}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object v6

    add-int/2addr v3, v1

    invoke-interface {v6, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 588
    :cond_5
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 589
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    if-eqz v0, :cond_7

    const/4 v1, 0x7

    .line 590
    invoke-virtual {v0, v1}, Lcom/tgs/aics/adapter/FormListAdapter;->setGridLayoutCount(I)V

    goto :goto_4

    .line 592
    :cond_6
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    if-eqz v0, :cond_7

    const/4 v1, 0x4

    .line 593
    invoke-virtual {v0, v1}, Lcom/tgs/aics/adapter/FormListAdapter;->setGridLayoutCount(I)V

    .line 596
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    if-eqz v0, :cond_8

    .line 597
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/adapter/FormListAdapter;->setDataSources(Ljava/util/List;)V

    :cond_8
    return-void
.end method

.method private hasFieldTypePicture()Z
    .locals 4

    .line 420
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/FormListBean$Item;

    .line 421
    iget-object v2, v1, Lcom/tgs/aics/bean/FormListBean$Item;->type:Lcom/tgs/aics/bean/FieldType;

    sget-object v3, Lcom/tgs/aics/bean/FieldType;->FieldTypePicture:Lcom/tgs/aics/bean/FieldType;

    if-eq v2, v3, :cond_1

    iget-object v1, v1, Lcom/tgs/aics/bean/FormListBean$Item;->type:Lcom/tgs/aics/bean/FieldType;

    sget-object v2, Lcom/tgs/aics/bean/FieldType;->FieldTypeVideo:Lcom/tgs/aics/bean/FieldType;

    if-ne v1, v2, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initGetMessageListener()V
    .locals 1

    .line 268
    new-instance v0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V

    sput-object v0, Lcom/tgs/aics/utils/ConstantUtil;->getMessageListener:Lcom/tgs/aics/listener/IGetMessageListener;

    return-void
.end method

.method private initSingleSelectDialogView(Landroid/view/View;Landroid/app/Dialog;Lcom/tgs/aics/bean/FormListBean$Item;Z)V
    .locals 2

    const-string v0, "tgs_aics_back_layout"

    .line 635
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p2}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda12;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tgs_aics_title"

    .line 637
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 638
    iget-object v1, p3, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "tgs_aics_confirm"

    .line 640
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p4, :cond_0

    .line 643
    invoke-direct {p0, p1, p3, p2, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->multipleSelectLogic(Landroid/view/View;Lcom/tgs/aics/bean/FormListBean$Item;Landroid/app/Dialog;Landroid/widget/TextView;)V

    goto :goto_0

    .line 645
    :cond_0
    invoke-direct {p0, p1, p3, p2, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->singleSelectLogic(Landroid/view/View;Lcom/tgs/aics/bean/FormListBean$Item;Landroid/app/Dialog;Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method private initWebSocket()V
    .locals 3

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tgs/aics/websocket/WebSocketService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->bindIntent:Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 254
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->bindIntent:Landroid/content/Intent;

    new-instance v1, Lcom/tgs/aics/ui/activity/FormCreateActivity$3;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$3;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic lambda$initSingleSelectDialogView$19(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 635
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$initView$1(Landroid/view/View;I)V
    .locals 0

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 161
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 163
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$multipleSelectLogic$22(Landroid/widget/TextView;[ZLandroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 724
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    const-string p3, "#038CF4"

    .line 725
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 728
    :cond_0
    invoke-virtual {p2}, Landroid/widget/CheckBox;->getId()I

    move-result p0

    aput-boolean p4, p1, p0

    return-void
.end method

.method static synthetic lambda$singleSelectLogic$20(Landroid/widget/TextView;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 673
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    const-string p1, "#038CF4"

    .line 674
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private loadData()V
    .locals 4

    .line 505
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_from_im_activity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->isFromIMActivity:Z

    .line 506
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "form_is_committed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 508
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "message_id_with_form"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->messageIdWithForm:Ljava/lang/String;

    .line 509
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->url:Ljava/lang/String;

    .line 511
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v1

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getUrlParamId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda16;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/tgs/aics/http/HttpApi;->getFormData(Ljava/lang/String;Lcom/tgs/aics/listener/IBaseBeanListener;)V

    return-void
.end method

.method private loadDataCheckAicsUrl()V
    .locals 1

    .line 231
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->aicsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda10;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V

    invoke-static {v0}, Lcom/tgs/aics/utils/CommonUtil;->getAicsServerAddress(Lcom/tgs/aics/listener/IBaseBeanListener;)V

    goto :goto_0

    .line 242
    :cond_0
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    if-nez v0, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->initWebSocket()V

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->loadData()V

    :goto_0
    return-void
.end method

.method private multipleSelectLogic(Landroid/view/View;Lcom/tgs/aics/bean/FormListBean$Item;Landroid/app/Dialog;Landroid/widget/TextView;)V
    .locals 7

    .line 698
    iget-object v0, p2, Lcom/tgs/aics/bean/FormListBean$Item;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    const-string v1, "tgs_aics_multi_select_layout"

    .line 700
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 701
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 702
    :goto_0
    iget-object v2, p2, Lcom/tgs/aics/bean/FormListBean$Item;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 703
    iget-object v2, p2, Lcom/tgs/aics/bean/FormListBean$Item;->options:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "label"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 704
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string v4, "tgs_aics_multiple_select_button"

    invoke-virtual {p0, v4}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getLayoutId(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 705
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setId(I)V

    .line 706
    iget-object v4, p2, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 707
    iget-object v4, p2, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_0

    .line 709
    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 711
    aput-boolean v5, v0, v1

    goto :goto_1

    .line 714
    :cond_1
    iget-object v4, p2, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 715
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    const-string v4, "#038CF4"

    .line 716
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 721
    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 722
    new-instance v2, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p4, v0, v3}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda13;-><init>(Landroid/widget/TextView;[ZLandroid/widget/CheckBox;)V

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 730
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 732
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 733
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 734
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "#EBEFF2"

    .line 735
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 736
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 739
    :cond_3
    new-instance p1, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0, p3, p2, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda14;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Landroid/app/Dialog;Lcom/tgs/aics/bean/FormListBean$Item;[Z)V

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private preSubmitFormData()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 318
    :goto_0
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v3}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 319
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v3}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v4}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/FormListBean$Item;

    .line 320
    iget-boolean v4, v3, Lcom/tgs/aics/bean/FormListBean$Item;->required:Z

    if-eqz v4, :cond_6

    .line 322
    iget-object v4, v3, Lcom/tgs/aics/bean/FormListBean$Item;->type:Lcom/tgs/aics/bean/FieldType;

    sget-object v6, Lcom/tgs/aics/bean/FieldType;->FieldTypePicture:Lcom/tgs/aics/bean/FieldType;

    if-eq v4, v6, :cond_3

    iget-object v4, v3, Lcom/tgs/aics/bean/FormListBean$Item;->type:Lcom/tgs/aics/bean/FieldType;

    sget-object v6, Lcom/tgs/aics/bean/FieldType;->FieldTypeVideo:Lcom/tgs/aics/bean/FieldType;

    if-ne v4, v6, :cond_0

    goto :goto_2

    .line 331
    :cond_0
    iget-object v4, v3, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 339
    :cond_1
    iput-boolean v0, v3, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    goto :goto_4

    .line 334
    :cond_2
    :goto_1
    iput-boolean v5, v3, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    .line 336
    iget-object v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v4}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    move v2, v5

    goto :goto_4

    .line 324
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    iget-object v4, v3, Lcom/tgs/aics/bean/FormListBean$Item;->fieldId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/tgs/aics/adapter/FormListAdapter;->getPicListById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    move v2, v5

    goto :goto_3

    :cond_4
    move v2, v0

    :goto_3
    xor-int/lit8 v4, v2, 0x1

    xor-int/lit8 v6, v2, 0x1

    .line 327
    iput-boolean v6, v3, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    if-nez v2, :cond_5

    .line 329
    iget-object v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->listView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v6}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v5

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_5
    move v2, v4

    .line 345
    :cond_6
    :goto_4
    iget-object v4, v3, Lcom/tgs/aics/bean/FormListBean$Item;->regExpression:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v3, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v3, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    iget-object v6, v3, Lcom/tgs/aics/bean/FormListBean$Item;->regExpression:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 347
    iget-object v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v4}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    move v2, v5

    .line 350
    :cond_7
    iget v4, v3, Lcom/tgs/aics/bean/FormListBean$Item;->min:I

    if-lez v4, :cond_8

    iget-object v4, v3, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, v3, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, v3, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget v3, v3, Lcom/tgs/aics/bean/FormListBean$Item;->min:I

    if-ge v4, v3, :cond_8

    .line 352
    iget-object v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v3}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    move v2, v5

    .line 355
    :cond_8
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    invoke-virtual {v3}, Lcom/tgs/aics/adapter/FormListAdapter;->notifyDataSetChanged()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    if-eqz v2, :cond_a

    return-void

    .line 362
    :cond_a
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->hasFieldTypePicture()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 364
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    invoke-virtual {v0}, Lcom/tgs/aics/adapter/FormListAdapter;->getAllPicList()Ljava/util/ArrayList;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 366
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 368
    new-instance v2, Lcom/tgs/aics/ui/dialog/LoadingDialog;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    .line 369
    invoke-virtual {v2}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->show()V

    .line 371
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ypx/imagepicker/bean/ImageItem;

    .line 372
    invoke-static {}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->getInstance()Lcom/ypx/imagepicker/utils/ThreadPoolUtils;

    move-result-object v4

    new-instance v5, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v3, v1, v2}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Lcom/ypx/imagepicker/bean/ImageItem;ILcom/tgs/aics/ui/dialog/LoadingDialog;)V

    invoke-virtual {v4, v5}, Lcom/ypx/imagepicker/utils/ThreadPoolUtils;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 411
    :cond_b
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->submitFormData()V

    goto :goto_6

    .line 414
    :cond_c
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->submitFormData()V

    :cond_d
    :goto_6
    return-void
.end method

.method private preSubmitFormDataCheckStatus()V
    .locals 2

    .line 300
    invoke-static {}, Lcom/tgs/aics/bean/Message;->createStatusMessage()Lcom/tgs/aics/bean/Message;

    move-result-object v0

    .line 301
    new-instance v1, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda18;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    return-void
.end method

.method private shake(Landroid/view/View;)V
    .locals 4

    .line 290
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v2, 0x0

    const/high16 v3, -0x3e600000    # -20.0f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x50

    .line 291
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x2

    .line 292
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 294
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 295
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private showDatePickerDialog(Lcom/tgs/aics/bean/FormListBean$Item;)V
    .locals 8

    .line 772
    new-instance v0, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;

    invoke-direct {v0, p0}, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;-><init>(Landroid/app/Activity;)V

    .line 774
    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->getWheelLayout()Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    move-result-object v1

    const/4 v2, 0x0

    .line 775
    invoke-virtual {v1, v2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setDateMode(I)V

    .line 777
    new-instance v3, Lcom/tgs/aics/thirdtool/datapicker/impl/UnitDateFormatter;

    invoke-direct {v3, p0}, Lcom/tgs/aics/thirdtool/datapicker/impl/UnitDateFormatter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setDateFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;)V

    const/16 v3, 0x7d0

    const/4 v4, 0x1

    .line 779
    invoke-static {v3, v4, v4}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->target(III)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object v3

    const/16 v5, 0xc

    const/16 v6, 0x1f

    const/16 v7, 0x802

    .line 780
    invoke-static {v7, v5, v6}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->target(III)Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object v5

    .line 781
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;->today()Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;

    move-result-object v6

    .line 778
    invoke-virtual {v1, v3, v5, v6}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DateEntity;)V

    .line 783
    invoke-virtual {v1, v4}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setCurtainEnabled(Z)V

    const v3, -0xce8204

    .line 784
    invoke-virtual {v1, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setCurtainColor(I)V

    .line 785
    invoke-virtual {v1, v4}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setIndicatorEnabled(Z)V

    .line 786
    invoke-virtual {v1, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setIndicatorColor(I)V

    .line 787
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setIndicatorSize(F)V

    const v3, -0xafa39a

    .line 788
    invoke-virtual {v1, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setTextColor(I)V

    .line 789
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setTextSize(F)V

    const/4 v3, -0x1

    .line 792
    invoke-virtual {v1, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setSelectedTextColor(I)V

    .line 795
    iget-object v1, p1, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->setTitle(Ljava/lang/CharSequence;)V

    .line 796
    new-instance v1, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda25;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Lcom/tgs/aics/bean/FormListBean$Item;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->setOnDatePickedListener(Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatePickedListener;)V

    .line 802
    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->getWheelLayout()Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DateWheelLayout;->setResetWhenLinkage(Z)V

    .line 803
    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/DatePicker;->show()V

    return-void
.end method

.method private showDatimePickerDialog(Lcom/tgs/aics/bean/FormListBean$Item;)V
    .locals 8

    .line 807
    new-instance v0, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;

    invoke-direct {v0, p0}, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;-><init>(Landroid/app/Activity;)V

    .line 808
    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->getWheelLayout()Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;

    move-result-object v1

    .line 809
    new-instance v2, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Lcom/tgs/aics/bean/FormListBean$Item;)V

    invoke-virtual {v0, v2}, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->setOnDatimePickedListener(Lcom/tgs/aics/thirdtool/datapicker/contract/OnDatimePickedListener;)V

    .line 815
    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->getWheelLayout()Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setResetWhenLinkage(ZZ)V

    .line 816
    iget-object p1, p1, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->setTitle(Ljava/lang/CharSequence;)V

    .line 817
    invoke-virtual {v1, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setDateMode(I)V

    .line 818
    invoke-virtual {v1, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setTimeMode(I)V

    .line 819
    new-instance p1, Lcom/tgs/aics/thirdtool/datapicker/impl/UnitDateFormatter;

    invoke-direct {p1, p0}, Lcom/tgs/aics/thirdtool/datapicker/impl/UnitDateFormatter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setDateFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/DateFormatter;)V

    .line 820
    new-instance p1, Lcom/tgs/aics/thirdtool/datapicker/impl/UnitTimeFormatter;

    invoke-direct {p1, p0}, Lcom/tgs/aics/thirdtool/datapicker/impl/UnitTimeFormatter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setTimeFormatter(Lcom/tgs/aics/thirdtool/datapicker/contract/TimeFormatter;)V

    const/16 v2, 0x7d0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 822
    invoke-static/range {v2 .. v7}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->target(IIIIII)Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object p1

    const/16 v2, 0x802

    const/16 v3, 0xc

    const/16 v4, 0x1f

    const/16 v5, 0x17

    const/16 v6, 0x3b

    const/16 v7, 0x3b

    .line 823
    invoke-static/range {v2 .. v7}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->target(IIIIII)Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object v2

    .line 824
    invoke-static {}, Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;->now()Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;

    move-result-object v3

    .line 821
    invoke-virtual {v1, p1, v2, v3}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setRange(Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;Lcom/tgs/aics/thirdtool/datapicker/entity/DatimeEntity;)V

    const/4 p1, 0x1

    .line 825
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setCurtainEnabled(Z)V

    const v2, -0xce8204

    .line 826
    invoke-virtual {v1, v2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setCurtainColor(I)V

    .line 827
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setIndicatorEnabled(Z)V

    .line 828
    invoke-virtual {v1, v2}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setIndicatorColor(I)V

    .line 829
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setIndicatorSize(F)V

    const p1, -0xafa39a

    .line 830
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setTextColor(I)V

    .line 831
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setTextSize(F)V

    const/4 p1, -0x1

    .line 832
    invoke-virtual {v1, p1}, Lcom/tgs/aics/thirdtool/datapicker/widget/DatimeWheelLayout;->setSelectedTextColor(I)V

    .line 833
    invoke-virtual {v0}, Lcom/tgs/aics/thirdtool/datapicker/DatimePicker;->show()V

    return-void
.end method

.method private showInputPopView(Lcom/tgs/aics/bean/FormListBean$Item;)V
    .locals 3

    .line 602
    sget-object v0, Lcom/tgs/aics/ui/activity/FormCreateActivity$4;->$SwitchMap$com$tgs$aics$bean$FieldType:[I

    iget-object v1, p1, Lcom/tgs/aics/bean/FormListBean$Item;->type:Lcom/tgs/aics/bean/FieldType;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->showTimerPickerDialog(Lcom/tgs/aics/bean/FormListBean$Item;)V

    goto :goto_0

    .line 607
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->showSelectDialog(Lcom/tgs/aics/bean/FormListBean$Item;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 604
    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->showSelectDialog(Lcom/tgs/aics/bean/FormListBean$Item;Z)V

    :goto_0
    return-void
.end method

.method private showSelectDialog(Lcom/tgs/aics/bean/FormListBean$Item;Z)V
    .locals 4

    .line 620
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "BottomDialog"

    invoke-static {p0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 621
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "tgs_aics_layout_bottom_select_dialog"

    invoke-virtual {p0, v2}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getLayoutId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 622
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->initSingleSelectDialogView(Landroid/view/View;Landroid/app/Dialog;Lcom/tgs/aics/bean/FormListBean$Item;Z)V

    .line 623
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 624
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 625
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 626
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 627
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x50

    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    const/4 p1, 0x1

    .line 629
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 630
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string p2, "BottomDialog_Animation"

    invoke-static {p0, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 631
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showTimerPickerDialog(Lcom/tgs/aics/bean/FormListBean$Item;)V
    .locals 2

    .line 762
    iget-object v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->format:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyy-mm-dd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->showDatePickerDialog(Lcom/tgs/aics/bean/FormListBean$Item;)V

    goto :goto_0

    .line 767
    :cond_0
    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->showDatimePickerDialog(Lcom/tgs/aics/bean/FormListBean$Item;)V

    :goto_0
    return-void
.end method

.method private singleSelectLogic(Landroid/view/View;Lcom/tgs/aics/bean/FormListBean$Item;Landroid/app/Dialog;Landroid/widget/TextView;)V
    .locals 7

    const-string v0, "tgs_aics_radio_group"

    .line 650
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    const/4 v0, 0x0

    .line 651
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 652
    :goto_0
    iget-object v1, p2, Lcom/tgs/aics/bean/FormListBean$Item;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 653
    iget-object v1, p2, Lcom/tgs/aics/bean/FormListBean$Item;->options:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "label"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 654
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "tgs_aics_radio_button"

    invoke-virtual {p0, v3}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getLayoutId(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 655
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setId(I)V

    .line 656
    iget-object v3, p2, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 657
    iget-object v3, p2, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 659
    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 662
    :cond_1
    iget-object v3, p2, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 663
    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    const-string v3, "#038CF4"

    .line 664
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 668
    :cond_2
    new-instance v3, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v3, v6, v5}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 669
    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 671
    new-instance v1, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p4}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 677
    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 679
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 680
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 681
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "#EBEFF2"

    .line 682
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 683
    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 686
    :cond_3
    new-instance v0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda11;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Landroid/app/Dialog;Lcom/tgs/aics/bean/FormListBean$Item;Landroid/widget/RadioGroup;)V

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private submitFormData()V
    .locals 1

    .line 430
    new-instance v0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda15;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private tipsDialogConfig()V
    .locals 3

    .line 115
    new-instance v0, Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-direct {v0, p0}, Lcom/tgs/aics/ui/dialog/TipsDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_force_evaluate_title"

    .line 116
    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setTitle(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_force_evaluate_content"

    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setContent(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_force_evaluate_left_btn_text"

    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda22;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    const-string v1, "tgs_aics_force_evaluate_right_btn_text"

    invoke-virtual {p0, v1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/ui/activity/FormCreateActivity$1;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$1;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/ui/dialog/TipsDialog;->setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getViewName()Ljava/lang/String;
    .locals 1

    const-string v0, "tgs_aics_activity_form"

    return-object v0
.end method

.method protected initView()V
    .locals 4

    .line 133
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/FormCreateActivity$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/tgs/aics/ui/activity/FormCreateActivity$2;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Z)V

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    const-string v0, "tgs_aics_form_root_layout"

    .line 149
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->rootLayout:Landroid/widget/LinearLayout;

    .line 150
    invoke-virtual {p0, v0, v2}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->loadBackgroundImage(Landroid/view/ViewGroup;Z)V

    const-string v0, "tgs_aics_form_masking_view"

    .line 152
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 153
    sget-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-eqz v1, :cond_0

    .line 155
    invoke-static {}, Lcom/tgs/aics/utils/SystemInfoUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM-G9500"

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MI_8_Lite"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Pixel_5"

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SM-G9350"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SM-F9660"

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 169
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "tgs_aics_game_name_update"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    new-instance v1, Lcom/tgs/aics/ui/activity/FormCreateActivity$GameNameReceiver;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$GameNameReceiver;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V

    iput-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->gameNameReceiver:Lcom/tgs/aics/ui/activity/FormCreateActivity$GameNameReceiver;

    .line 172
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->gameNameReceiver:Lcom/tgs/aics/ui/activity/FormCreateActivity$GameNameReceiver;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->gameNameReceiver:Lcom/tgs/aics/ui/activity/FormCreateActivity$GameNameReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    :goto_0
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->initGetMessageListener()V

    .line 178
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->tipsDialogConfig()V

    const-string v0, "tgs_aics_form_cancel"

    .line 180
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda5;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tgs_aics_form_submit"

    .line 181
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda6;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tgs_aics_form_submit_success_layout"

    .line 183
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->layoutFormSubmitSuccess:Landroid/widget/LinearLayout;

    const-string v0, "tgs_aics_form_submit_success_text"

    .line 184
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->tvFormSubmitSuccess:Landroid/widget/TextView;

    const-string v0, "tgs_aics_form_submit_success_view_progress"

    .line 185
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 186
    new-instance v1, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda7;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tgs_aics_form_listview"

    .line 197
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->findViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->listView:Landroid/widget/ListView;

    .line 199
    new-instance v0, Lcom/tgs/aics/adapter/FormListAdapter;

    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;-><init>(I)V

    new-instance v2, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda8;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V

    invoke-virtual {p0, v1, v2}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    const/16 v2, 0x2712

    const-string v3, "@@@"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/tgs/aics/adapter/FormListAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/activity/result/ActivityResultLauncher;I)V

    iput-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    .line 211
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda9;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 214
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->loadDataCheckAicsUrl()V

    return-void
.end method

.method synthetic lambda$initGetMessageListener$9$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/tgs/aics/bean/Message;)V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->messageCallBackCacheMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/listener/ISendMessageListener;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageReceiptBean()Lcom/tgs/aics/bean/MessageReceiptBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
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

    .line 275
    :cond_0
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_WITHDRAW:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v0, v1, :cond_2

    .line 276
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tgs/aics/bean/Message;

    .line 277
    invoke-virtual {v1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v0, v1, :cond_3

    .line 283
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method synthetic lambda$initView$2$com-tgs-aics-ui-activity-FormCreateActivity(Landroid/view/View;)V
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->onBackPressed()V

    return-void
.end method

.method synthetic lambda$initView$3$com-tgs-aics-ui-activity-FormCreateActivity(Landroid/view/View;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->preSubmitFormDataCheckStatus()V

    return-void
.end method

.method synthetic lambda$initView$4$com-tgs-aics-ui-activity-FormCreateActivity(Landroid/view/View;)V
    .locals 1

    .line 187
    iget-boolean p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->isFromIMActivity:Z

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->onBackPressed()V

    goto :goto_0

    .line 190
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 191
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$initView$5$com-tgs-aics-ui-activity-FormCreateActivity(Ljava/util/List;)V
    .locals 4

    .line 200
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 203
    new-instance v2, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-direct {v2}, Lcom/ypx/imagepicker/bean/ImageItem;-><init>()V

    .line 204
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/Utils;->getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ypx/imagepicker/bean/ImageItem;->setPath(Ljava/lang/String;)V

    .line 205
    invoke-static {p0, v1}, Lcom/tgs/aics/utils/Utils;->isVideoType(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ypx/imagepicker/bean/ImageItem;->setVideo(Z)V

    .line 206
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    invoke-virtual {p1, v0}, Lcom/tgs/aics/adapter/FormListAdapter;->imgSelectCallback(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$initView$6$com-tgs-aics-ui-activity-FormCreateActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/FormListBean$Item;

    invoke-direct {p0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->showInputPopView(Lcom/tgs/aics/bean/FormListBean$Item;)V

    return-void
.end method

.method synthetic lambda$loadData$17$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/tgs/aics/bean/BaseBean;Z)V
    .locals 1

    .line 512
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->hideLoading()V

    if-eqz p1, :cond_4

    .line 513
    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseBean;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 514
    instance-of v0, p1, Lcom/tgs/aics/bean/FormListBean;

    if-eqz v0, :cond_5

    .line 515
    check-cast p1, Lcom/tgs/aics/bean/FormListBean;

    iput-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 518
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->tvFormSubmitSuccess:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/FormListBean;->getSubmitText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "tgs_aics_submit_success"

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/FormListBean;->getSubmitText()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->layoutFormSubmitSuccess:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 521
    :cond_1
    invoke-virtual {p1}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 522
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->dealWithData()V

    goto :goto_1

    .line 524
    :cond_2
    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->showLoadErrorLayout(Z)V

    .line 527
    :goto_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/FormListBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 528
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/FormListBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_2

    .line 530
    :cond_3
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->setAppNameTitle()V

    goto :goto_2

    .line 533
    :cond_4
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->setAppNameTitle()V

    const/4 p1, 0x1

    .line 534
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->showLoadErrorLayout(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method synthetic lambda$loadData$18$com-tgs-aics-ui-activity-FormCreateActivity(ZLcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    .line 511
    new-instance v0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p2, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda20;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Lcom/tgs/aics/bean/BaseBean;Z)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$loadDataCheckAicsUrl$7$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 0

    .line 233
    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseBean;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    if-nez p1, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->initWebSocket()V

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->loadData()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 238
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->showLoadErrorLayout(Z)V

    :goto_0
    return-void
.end method

.method synthetic lambda$loadDataCheckAicsUrl$8$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    .line 232
    new-instance v0, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda23;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Lcom/tgs/aics/bean/BaseBean;)V

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$multipleSelectLogic$23$com-tgs-aics-ui-activity-FormCreateActivity(Landroid/app/Dialog;Lcom/tgs/aics/bean/FormListBean$Item;[ZLandroid/view/View;)V
    .locals 2

    .line 740
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 742
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p2, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    const/4 p1, 0x0

    move p4, p1

    .line 744
    :goto_0
    array-length v0, p3

    if-ge p4, v0, :cond_1

    .line 745
    aget-boolean v0, p3, p4

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p2, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 750
    :cond_1
    invoke-virtual {p2}, Lcom/tgs/aics/bean/FormListBean$Item;->refreshValue()V

    .line 751
    iget-object p3, p2, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_2

    .line 752
    iput-boolean p1, p2, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    goto :goto_1

    .line 754
    :cond_2
    iget-boolean p1, p2, Lcom/tgs/aics/bean/FormListBean$Item;->required:Z

    iput-boolean p1, p2, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    .line 756
    :goto_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    iget-object p2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {p2}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/aics/adapter/FormListAdapter;->setDataSources(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$preSubmitFormData$12$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/tgs/aics/ui/dialog/LoadingDialog;)V
    .locals 4

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->lastUploadFileExceptionTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->lastUploadFileExceptionTimestamp:J

    const-string v0, "tgs_aics_network_error_retry_later"

    .line 403
    invoke-static {p0, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    :cond_0
    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$preSubmitFormData$13$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/ypx/imagepicker/bean/ImageItem;ILcom/tgs/aics/ui/dialog/LoadingDialog;)V
    .locals 7

    const-string v0, "@@@"

    const-string v1, "upload file fail errMsg: "

    const/4 v2, 0x0

    .line 374
    :try_start_0
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    .line 375
    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aget-object p1, p1, v4

    .line 377
    new-instance v5, Lcom/tgs/aics/http/HttpPostMultipart;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/tgs/aics/http/HttpPostMultipart;-><init>(Ljava/util/Map;)V

    const-string v6, "file"

    .line 378
    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->getCompressBitmapPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Lcom/tgs/aics/http/HttpPostMultipart;->addFilePart(Ljava/lang/String;Ljava/io/File;)V

    .line 379
    invoke-virtual {v5}, Lcom/tgs/aics/http/HttpPostMultipart;->finish()Lcom/tgs/aics/bean/UploadResultBean;

    move-result-object p1

    .line 380
    invoke-virtual {p1}, Lcom/tgs/aics/bean/UploadResultBean;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 381
    iget-object v1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->imgUrlList:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tgs/aics/bean/UploadResultBean;->getFileUrlCn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "aics.FormCreateActivity"

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tgs/aics/bean/UploadResultBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_0
    iget p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->committedPicCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->committedPicCount:I

    if-ne p1, p2, :cond_1

    .line 388
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->submitFormData()V

    .line 389
    iput v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->committedPicCount:I

    .line 392
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p3}, Lcom/tgs/aics/diagnose/view/DiagnoseActivity$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/ui/dialog/LoadingDialog;)V

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 395
    invoke-static {p1}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    .line 396
    iput v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->committedPicCount:I

    .line 399
    new-instance p1, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0, p3}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda21;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Lcom/tgs/aics/ui/dialog/LoadingDialog;)V

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method synthetic lambda$preSubmitFormDataCheckStatus$10$com-tgs-aics-ui-activity-FormCreateActivity(ZLcom/tgs/aics/bean/Message;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 303
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getWorkOrderInfo()Lcom/tgs/aics/bean/WorkOrderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getWorkOrderInfo()Lcom/tgs/aics/bean/WorkOrderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tgs/aics/bean/WorkOrderInfo;->isCanChat()Z

    move-result p1

    if-nez p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->show()V

    goto :goto_0

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->preSubmitFormData()V

    goto :goto_0

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->preSubmitFormData()V

    :goto_0
    return-void
.end method

.method synthetic lambda$preSubmitFormDataCheckStatus$11$com-tgs-aics-ui-activity-FormCreateActivity(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 0

    .line 301
    new-instance p2, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda19;

    invoke-direct {p2, p0, p1, p4}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda19;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;ZLcom/tgs/aics/bean/Message;)V

    invoke-virtual {p0, p2}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$showDatePickerDialog$24$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/tgs/aics/bean/FormListBean$Item;III)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 797
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "%04d-%02d-%02d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 798
    iput-object p2, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    .line 799
    iput-boolean v1, p1, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    .line 800
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    iget-object p2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {p2}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/aics/adapter/FormListAdapter;->setDataSources(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$showDatimePickerDialog$25$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/tgs/aics/bean/FormListBean$Item;IIIIII)V
    .locals 1

    const/4 p7, 0x5

    new-array p7, p7, [Ljava/lang/Object;

    .line 810
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p7, v0

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p7, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p7, p2

    const/4 p2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p7, p2

    const/4 p2, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p7, p2

    const-string p2, "%04d-%02d-%02d %02d:%02d"

    invoke-static {p2, p7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 811
    iput-object p2, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    .line 812
    iput-boolean v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    .line 813
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    iget-object p2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {p2}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/aics/adapter/FormListAdapter;->setDataSources(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$singleSelectLogic$21$com-tgs-aics-ui-activity-FormCreateActivity(Landroid/app/Dialog;Lcom/tgs/aics/bean/FormListBean$Item;Landroid/widget/RadioGroup;Landroid/view/View;)V
    .locals 0

    .line 687
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 689
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p2, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    .line 690
    iget-object p1, p2, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    invoke-virtual {p3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    invoke-virtual {p2}, Lcom/tgs/aics/bean/FormListBean$Item;->refreshValue()V

    const/4 p1, 0x0

    .line 692
    iput-boolean p1, p2, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    .line 693
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    iget-object p2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {p2}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/aics/adapter/FormListAdapter;->setDataSources(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$submitFormData$14$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/tgs/aics/ui/dialog/LoadingDialog;ZLcom/tgs/aics/bean/Message;ILjava/lang/String;)V
    .locals 0

    .line 480
    :try_start_0
    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->dismiss()V

    if-eqz p2, :cond_0

    .line 483
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->layoutFormSubmitSuccess:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 484
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->messageIdWithForm:Ljava/lang/String;

    sput-object p1, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashFormMessageId:Ljava/lang/String;

    goto :goto_0

    .line 487
    :cond_0
    sget p1, Lcom/tgs/aics/utils/ConstantUtil$MessageErrorCode;->EXPIRED:I

    if-ne p4, p1, :cond_1

    const-string p1, "tgs_aics_expired_tips"

    .line 488
    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_1
    sget p1, Lcom/tgs/aics/utils/ConstantUtil$MessageErrorCode;->NOT_RATED:I

    if-ne p4, p1, :cond_2

    .line 490
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->show()V

    goto :goto_0

    .line 492
    :cond_2
    invoke-static {p0, p5}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method synthetic lambda$submitFormData$15$com-tgs-aics-ui-activity-FormCreateActivity(Lcom/tgs/aics/ui/dialog/LoadingDialog;ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V
    .locals 8

    .line 478
    new-instance v7, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda17;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p5

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda17;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Lcom/tgs/aics/ui/dialog/LoadingDialog;ZLcom/tgs/aics/bean/Message;ILjava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$submitFormData$16$com-tgs-aics-ui-activity-FormCreateActivity()V
    .locals 13

    const-string v0, "@@@"

    .line 431
    new-instance v1, Lcom/tgs/aics/ui/dialog/LoadingDialog;

    invoke-direct {v1, p0}, Lcom/tgs/aics/ui/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    .line 432
    invoke-virtual {v1}, Lcom/tgs/aics/ui/dialog/LoadingDialog;->show()V

    .line 434
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 435
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v3}, Lcom/tgs/aics/bean/FormListBean;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/FormListBean$Item;

    .line 436
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 438
    :try_start_0
    iget-object v6, v4, Lcom/tgs/aics/bean/FormListBean$Item;->type:Lcom/tgs/aics/bean/FieldType;

    sget-object v7, Lcom/tgs/aics/bean/FieldType;->FieldTypeText:Lcom/tgs/aics/bean/FieldType;

    if-ne v6, v7, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    iget-object v6, v4, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string v6, "label"

    .line 444
    iget-object v7, v4, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    :cond_1
    iget-object v6, v4, Lcom/tgs/aics/bean/FormListBean$Item;->fieldName:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    const-string v6, "fieldName"

    .line 447
    iget-object v7, v4, Lcom/tgs/aics/bean/FormListBean$Item;->fieldName:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v6, "required"

    .line 449
    iget-boolean v7, v4, Lcom/tgs/aics/bean/FormListBean$Item;->required:Z

    if-eqz v7, :cond_3

    const-string v7, "true"

    goto :goto_1

    :cond_3
    const-string v7, "false"

    :goto_1
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    iget-object v6, v4, Lcom/tgs/aics/bean/FormListBean$Item;->type:Lcom/tgs/aics/bean/FieldType;

    sget-object v7, Lcom/tgs/aics/bean/FieldType;->FieldTypePicture:Lcom/tgs/aics/bean/FieldType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "value"

    if-eq v6, v7, :cond_5

    :try_start_1
    iget-object v6, v4, Lcom/tgs/aics/bean/FormListBean$Item;->type:Lcom/tgs/aics/bean/FieldType;

    sget-object v7, Lcom/tgs/aics/bean/FieldType;->FieldTypeVideo:Lcom/tgs/aics/bean/FieldType;

    if-ne v6, v7, :cond_4

    goto :goto_2

    .line 465
    :cond_4
    iget-object v6, v4, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 453
    :cond_5
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    iget-object v7, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->imgUrlList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 455
    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v11, v12, v11

    .line 456
    iget-object v12, v4, Lcom/tgs/aics/bean/FormListBean$Item;->fieldId:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 458
    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v10

    .line 459
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 462
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 463
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v10

    invoke-virtual {v6, v11, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    :goto_4
    const-string v6, "type"

    .line 468
    iget-object v4, v4, Lcom/tgs/aics/bean/FormListBean$Item;->type:Lcom/tgs/aics/bean/FieldType;

    invoke-virtual {p0, v4}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->convert2FormItemType(Lcom/tgs/aics/bean/FieldType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v4

    .line 470
    invoke-static {v4}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    .line 472
    :goto_5
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 475
    :cond_9
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->listView:Landroid/widget/ListView;

    invoke-static {p0, v0}, Lcom/tgs/aics/utils/Utils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 477
    iget-object v3, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->messageIdWithForm:Ljava/lang/String;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getUrlParamId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/FormListBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->formListBean:Lcom/tgs/aics/bean/FormListBean;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/FormListBean;->getFormShowId()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getUrlParamLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->getUrlParamProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/tgs/aics/bean/Message;->createRatingWithFormId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;

    move-result-object v0

    .line 478
    new-instance v2, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, v1}, Lcom/tgs/aics/ui/activity/FormCreateActivity$$ExternalSyntheticLambda24;-><init>(Lcom/tgs/aics/ui/activity/FormCreateActivity;Lcom/tgs/aics/ui/dialog/LoadingDialog;)V

    invoke-virtual {p0, v0, v2}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    return-void
.end method

.method synthetic lambda$tipsDialogConfig$0$com-tgs-aics-ui-activity-FormCreateActivity(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->tipsDialog:Lcom/tgs/aics/ui/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/tgs/aics/ui/dialog/TipsDialog;->dismiss()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 861
    invoke-super {p0, p1, p2, p3}, Lcom/tgs/aics/ui/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 862
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->initGetMessageListener()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 849
    invoke-super {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 851
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 852
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 853
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/tgs/aics/adapter/FormListAdapter;->setGridLayoutCount(I)V

    goto :goto_0

    .line 855
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/tgs/aics/adapter/FormListAdapter;->setGridLayoutCount(I)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/16 v0, 0x2712

    if-ne p1, v0, :cond_1

    .line 220
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0}, Lcom/tgs/aics/adapter/FormListAdapter;->getCurrentPictureViewHolder()Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->adapter:Lcom/tgs/aics/adapter/FormListAdapter;

    invoke-virtual {v2}, Lcom/tgs/aics/adapter/FormListAdapter;->getCurrentFormListBeanItem()Lcom/tgs/aics/bean/FormListBean$Item;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/adapter/FormListAdapter;->imgPick(Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Lcom/tgs/aics/bean/FormListBean$Item;)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {p0}, Lcom/tgs/aics/utils/Utils;->showPermissionTipsDialog(Landroid/content/Context;)V

    .line 227
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/tgs/aics/ui/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public reloadData(Landroid/view/View;)V
    .locals 0

    .line 541
    invoke-super {p0, p1}, Lcom/tgs/aics/ui/activity/BaseActivity;->reloadData(Landroid/view/View;)V

    .line 543
    invoke-virtual {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->showLoading()V

    .line 544
    invoke-direct {p0}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->loadDataCheckAicsUrl()V

    return-void
.end method

.method public sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V
    .locals 3

    .line 837
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/FormCreateActivity;->messageCallBackCacheMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    if-eqz v0, :cond_0

    .line 840
    sget-object p2, Lcom/tgs/aics/utils/ConstantUtil;->webSocketService:Lcom/tgs/aics/websocket/WebSocketService;

    invoke-static {p1}, Lcom/tgs/aics/bean/Message;->message2JsonStr(Lcom/tgs/aics/bean/Message;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tgs/aics/websocket/WebSocketService;->sendMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "aics.FromCreateActivity"

    const-string v0, "sendMessage null webSocketService"

    .line 842
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Null WebSocketService"

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 843
    invoke-interface {p2, v1, v2, p1, v0}, Lcom/tgs/aics/listener/ISendMessageListener;->onResult(ZILjava/lang/String;Lcom/tgs/aics/bean/Message;)V

    :goto_0
    return-void
.end method
