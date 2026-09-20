.class public Lcom/tgs/aics/adapter/MessageRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MessageRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MESSAGE_MIDDLE:I = 0x2

.field private static final MESSAGE_RECEIVER:I = 0x0

.field private static final MESSAGE_SENDER:I = 0x1


# instance fields
.field private final IM_REQUEST_CODE:I

.field private final mContext:Landroid/content/Context;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final selectTextHelperArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tgs/aics/selecttext/SelectTextHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/Message;",
            ">;I)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->selectTextHelperArrayList:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->messages:Ljava/util/List;

    .line 64
    iput p3, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->IM_REQUEST_CODE:I

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/adapter/MessageRecyclerAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->selectTextHelperArrayList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tgs/aics/adapter/MessageRecyclerAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->handleUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private buildMediaInfo()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tgs/aics/bean/MediaInfo;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    iget-object v1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/Message;

    .line 432
    invoke-virtual {v2}, Lcom/tgs/aics/bean/Message;->getContentType()Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object v3

    sget-object v4, Lcom/tgs/aics/bean/Message$MessageContentType;->VIDEO:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/tgs/aics/bean/Message;->getContentType()Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object v3

    sget-object v4, Lcom/tgs/aics/bean/Message$MessageContentType;->PIC:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-ne v3, v4, :cond_0

    .line 433
    :cond_1
    invoke-virtual {v2}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getFiles()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 435
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 436
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    .line 437
    invoke-virtual {v5}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getLocalUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 438
    invoke-virtual {v5}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getLocalUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 440
    :cond_2
    sget-boolean v5, Lcom/tgs/aics/utils/ConstantUtil;->isDomestic:Z

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getUrlCn()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string v3, ""

    .line 444
    :goto_1
    new-instance v5, Lcom/tgs/aics/bean/MediaInfo;

    invoke-direct {v5}, Lcom/tgs/aics/bean/MediaInfo;-><init>()V

    .line 445
    invoke-virtual {v2}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tgs/aics/bean/MediaInfo;->setUniqueId(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v5, v3}, Lcom/tgs/aics/bean/MediaInfo;->setUrl(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v2}, Lcom/tgs/aics/bean/Message;->getContentType()Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object v2

    sget-object v3, Lcom/tgs/aics/bean/Message$MessageContentType;->VIDEO:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-ne v2, v3, :cond_5

    const/4 v4, 0x1

    :cond_5
    invoke-virtual {v5, v4}, Lcom/tgs/aics/bean/MediaInfo;->setVideo(Z)V

    .line 448
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private handleUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/tgs/aics/ui/activity/IMActivity;

    if-eqz v1, :cond_0

    .line 461
    move-object v1, v0

    check-cast v1, Lcom/tgs/aics/ui/activity/IMActivity;

    .line 462
    iget-object v1, v1, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/Utils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 465
    :cond_0
    invoke-static {p2}, Lcom/tgs/aics/utils/UrlParseUtil;->getUrlHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aics://detail"

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "url"

    if-eqz v1, :cond_1

    .line 467
    new-instance p3, Landroid/content/Intent;

    const-class p4, Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-direct {p3, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 468
    invoke-virtual {p3, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    iget p2, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->IM_REQUEST_CODE:I

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string v1, "aics://list"

    .line 470
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    new-instance p3, Landroid/content/Intent;

    const-class p4, Lcom/tgs/aics/ui/activity/FAQListActivity;

    invoke-direct {p3, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 472
    invoke-virtual {p3, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    iget p2, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->IM_REQUEST_CODE:I

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    const-string v1, "aics://form"

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p5, :cond_3

    const-string p2, "tgs_aics_form_can_not_open_and_resend"

    .line 477
    invoke-static {p1, p2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tgs/aics/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 481
    :cond_3
    new-instance p5, Landroid/content/Intent;

    const-class v0, Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-direct {p5, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    invoke-virtual {p5, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "message_id_with_form"

    .line 484
    invoke-virtual {p5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string p2, "form_is_committed"

    .line 485
    invoke-virtual {p5, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "is_from_im_activity"

    const/4 p3, 0x1

    .line 486
    invoke-virtual {p5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 487
    iget p2, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->IM_REQUEST_CODE:I

    invoke-virtual {p1, p5, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 489
    :cond_5
    invoke-static {p1, p2}, Lcom/tgs/aics/utils/Utils;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showMediaAuditTipIfNeed(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/Message;I)V
    .locals 3

    .line 508
    iget-object v0, p1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mediaAuditTip:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 511
    :cond_0
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getMessageSource()Lcom/tgs/aics/bean/Message$MessageSource;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageSource;->PLAYER:Lcom/tgs/aics/bean/Message$MessageSource;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 512
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getSendStatus()Lcom/tgs/aics/bean/Message$MessageSendStatus;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageSendStatus;->FAILED:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    if-ne v0, v1, :cond_1

    .line 513
    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 515
    iget-object p1, p1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mediaAuditTip:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 518
    :cond_2
    iget-object v0, p1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mediaAuditTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    .line 519
    invoke-virtual {v0, v1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 520
    iget-object p3, p1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mediaAuditTip:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    iget-object p3, p1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mediaAuditTip:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/tgs/aics/bean/Message;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object p1, p1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mediaAuditTip:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showSendFailStatus(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;)V
    .locals 3

    .line 502
    iget-object v0, p1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 503
    iget-object v0, p1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 504
    iget-object p1, p1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->loadFailIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showSendingStatus(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;)V
    .locals 2

    .line 495
    iget-object v0, p1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 496
    iget-object v0, p1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 497
    iget-object p1, p1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->loadFailIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public addHistoryData(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/Message;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 532
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 533
    iget-object v2, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->messages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/Message;

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->notifyDataSetChanged()V

    .line 538
    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/tgs/aics/ui/activity/IMActivity;

    .line 540
    iget-object v0, v0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 542
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1c

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/Message;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/Message;->getMessageSource()Lcom/tgs/aics/bean/Message$MessageSource;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageSource;->EXTRA:Lcom/tgs/aics/bean/Message$MessageSource;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x2

    return p1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/bean/Message;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageSource()Lcom/tgs/aics/bean/Message$MessageSource;

    move-result-object p1

    sget-object v0, Lcom/tgs/aics/bean/Message$MessageSource;->PLAYER:Lcom/tgs/aics/bean/Message$MessageSource;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getSelectableTextHelperList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tgs/aics/selecttext/SelectTextHelper;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->selectTextHelperArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-tgs-aics-adapter-MessageRecyclerAdapter(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 213
    invoke-static {p1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x41b00000    # 22.0f

    .line 214
    invoke-static {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/ViewUtil;->dpToPixel(F)I

    move-result v2

    invoke-static {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/ViewUtil;->dpToPixel(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 215
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method synthetic lambda$onBindViewHolder$1$com-tgs-aics-adapter-MessageRecyclerAdapter(Lcom/tgs/aics/bean/Message;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 p2, 0x1

    if-eqz p4, :cond_0

    const-string p3, "aics://comment"

    .line 224
    invoke-virtual {p4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 225
    iget-object p3, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    instance-of p4, p3, Lcom/tgs/aics/ui/activity/IMActivity;

    if-eqz p4, :cond_2

    .line 226
    check-cast p3, Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-virtual {p3, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->showBottomDialog(Lcom/tgs/aics/bean/Message;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    const-string p3, "aics://log_upload"

    .line 228
    invoke-virtual {p4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 230
    iget-object p3, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    instance-of p4, p3, Lcom/tgs/aics/ui/activity/IMActivity;

    if-eqz p4, :cond_2

    .line 231
    check-cast p3, Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-virtual {p3, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->uploadClientLogFile(Lcom/tgs/aics/bean/Message;)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object p3, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    instance-of v0, p3, Lcom/tgs/aics/ui/activity/IMActivity;

    if-eqz v0, :cond_2

    .line 236
    move-object v2, p3

    check-cast v2, Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->isFormCommitted()Z

    move-result v5

    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->isTheSameWorkOrderIdentity(Lcom/tgs/aics/bean/Message;)Z

    move-result p1

    xor-int/lit8 v6, p1, 0x1

    move-object v1, p0

    move-object v3, p4

    invoke-direct/range {v1 .. v6}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->handleUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_2
    :goto_0
    return p2
.end method

.method synthetic lambda$onBindViewHolder$2$com-tgs-aics-adapter-MessageRecyclerAdapter(Lcom/tgs/aics/bean/Message;Landroid/view/View;)V
    .locals 3

    .line 280
    iget-object p2, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "aics_media_info_list"

    .line 281
    invoke-direct {p0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->buildMediaInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "aics_current_media_unique_id"

    .line 282
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 280
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$3$com-tgs-aics-adapter-MessageRecyclerAdapter(Lcom/tgs/aics/bean/Message;Landroid/view/View;)V
    .locals 3

    .line 321
    iget-object p2, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "aics_media_info_list"

    .line 322
    invoke-direct {p0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->buildMediaInfo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "aics_current_media_unique_id"

    .line 323
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 321
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$4$com-tgs-aics-adapter-MessageRecyclerAdapter(Lcom/tgs/aics/bean/Message;Landroid/view/View;)V
    .locals 2

    .line 408
    sget-object p2, Lcom/tgs/aics/bean/Message$MessageSendStatus;->SENDING:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    invoke-virtual {p1, p2}, Lcom/tgs/aics/bean/Message;->setSendStatus(Lcom/tgs/aics/bean/Message$MessageSendStatus;)V

    .line 410
    iget-object p2, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    instance-of v0, p2, Lcom/tgs/aics/ui/activity/IMActivity;

    if-eqz v0, :cond_2

    .line 411
    check-cast p2, Lcom/tgs/aics/ui/activity/IMActivity;

    .line 412
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getContentType()Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageContentType;->PIC:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getContentType()Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/bean/Message$MessageContentType;->VIDEO:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/ui/activity/IMActivity;)V

    invoke-virtual {p2, p1, v0}, Lcom/tgs/aics/ui/activity/IMActivity;->sendMessage(Lcom/tgs/aics/bean/Message;Lcom/tgs/aics/listener/ISendMessageListener;)V

    goto :goto_1

    .line 413
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getFiles()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    invoke-virtual {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getLocalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/tgs/aics/ui/activity/IMActivity;->uploadFile(Ljava/lang/String;Lcom/tgs/aics/bean/Message;)V

    .line 419
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 45
    check-cast p1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->onBindViewHolder(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 95
    invoke-virtual {v0, v2}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->getItemViewType(I)I

    move-result v3

    .line 96
    iget-object v4, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->messages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/Message;

    const-wide/32 v5, 0x493e0

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-ne v3, v10, :cond_f

    .line 99
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getContentType()Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object v3

    .line 100
    sget-object v10, Lcom/tgs/aics/bean/Message$MessageContentType;->FORM:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-ne v3, v10, :cond_4

    if-eqz v2, :cond_2

    if-lez v2, :cond_0

    .line 102
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide v10

    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->messages:Ljava/util/List;

    sub-int/2addr v2, v7

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/Message;

    invoke-virtual {v2}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v10, v2

    cmp-long v2, v10, v5

    if-gtz v2, :cond_2

    :cond_0
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->isTimestampShown()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 110
    invoke-virtual {v4, v9}, Lcom/tgs/aics/bean/Message;->setTimestampShown(Z)V

    .line 111
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 103
    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 104
    invoke-virtual {v4, v7}, Lcom/tgs/aics/bean/Message;->setTimestampShown(Z)V

    .line 105
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/tgs/aics/utils/Utils;->messageTimeFormat(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_3
    :goto_1
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->txtSystemMessage:Landroid/widget/TextView;

    if-eqz v2, :cond_3d

    .line 116
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->txtSystemMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->txtSystemMessage:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v5, "tgs_aics_submit_success"

    invoke-static {v3, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 119
    :cond_4
    sget-object v10, Lcom/tgs/aics/bean/Message$MessageContentType;->RATING_SCORE:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-ne v3, v10, :cond_9

    if-eqz v2, :cond_7

    if-lez v2, :cond_5

    .line 121
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide v10

    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->messages:Ljava/util/List;

    sub-int/2addr v2, v7

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/Message;

    invoke-virtual {v2}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v10, v2

    cmp-long v2, v10, v5

    if-gtz v2, :cond_7

    :cond_5
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->isTimestampShown()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 128
    :cond_6
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    .line 129
    invoke-virtual {v4, v9}, Lcom/tgs/aics/bean/Message;->setTimestampShown(Z)V

    .line 130
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 122
    :cond_7
    :goto_2
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    .line 123
    invoke-virtual {v4, v7}, Lcom/tgs/aics/bean/Message;->setTimestampShown(Z)V

    .line 124
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/tgs/aics/utils/Utils;->messageTimeFormat(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_8
    :goto_3
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->txtSystemMessage:Landroid/widget/TextView;

    if-eqz v2, :cond_3d

    .line 135
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->txtSystemMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->txtSystemMessage:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v5, "tgs_aics_evaluated"

    invoke-static {v3, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 138
    :cond_9
    sget-object v10, Lcom/tgs/aics/bean/Message$MessageContentType;->CLIENT_TYPE_LOG_FILE_UPLOAD:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-ne v3, v10, :cond_e

    if-eqz v2, :cond_c

    if-lez v2, :cond_a

    .line 140
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide v10

    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->messages:Ljava/util/List;

    sub-int/2addr v2, v7

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/Message;

    invoke-virtual {v2}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v10, v2

    cmp-long v2, v10, v5

    if-gtz v2, :cond_c

    :cond_a
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->isTimestampShown()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_4

    .line 147
    :cond_b
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    .line 148
    invoke-virtual {v4, v9}, Lcom/tgs/aics/bean/Message;->setTimestampShown(Z)V

    .line 149
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 141
    :cond_c
    :goto_4
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    .line 142
    invoke-virtual {v4, v7}, Lcom/tgs/aics/bean/Message;->setTimestampShown(Z)V

    .line 143
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/tgs/aics/utils/Utils;->messageTimeFormat(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_d
    :goto_5
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->txtSystemMessage:Landroid/widget/TextView;

    if-eqz v2, :cond_3d

    .line 154
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->txtSystemMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->txtSystemMessage:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v5, "tgs_aics_send_success_tip"

    invoke-static {v3, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 158
    :cond_e
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->txtSystemMessage:Landroid/widget/TextView;

    if-eqz v2, :cond_3d

    .line 159
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->txtSystemMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15

    .line 163
    :cond_f
    sget-object v11, Lcom/tgs/aics/utils/ConstantUtil;->customDefineParams:Lcom/tgs/aics/bean/CustomDefineParams;

    if-eqz v11, :cond_10

    sget-object v11, Lcom/tgs/aics/utils/ConstantUtil;->customDefineParams:Lcom/tgs/aics/bean/CustomDefineParams;

    invoke-virtual {v11}, Lcom/tgs/aics/bean/CustomDefineParams;->getCustomerServiceAvatarUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    if-nez v3, :cond_11

    .line 165
    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    sget-object v11, Lcom/tgs/aics/utils/ConstantUtil;->customDefineParams:Lcom/tgs/aics/bean/CustomDefineParams;

    invoke-virtual {v11}, Lcom/tgs/aics/bean/CustomDefineParams;->getCustomerServiceAvatarUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v11}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-virtual {v3, v11}, Lcom/bumptech/glide/RequestBuilder;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    iget-object v11, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_6

    :cond_10
    if-nez v3, :cond_11

    .line 168
    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    sget-object v11, Lcom/tgs/aics/utils/ConstantUtil;->gameCSAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v11}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v11}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-virtual {v3, v11}, Lcom/bumptech/glide/RequestBuilder;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    iget-object v11, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v11}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 171
    :cond_11
    :goto_6
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getFiles()Ljava/util/List;

    move-result-object v11

    .line 173
    iget-object v12, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v13, "tgs_aics_video_file"

    invoke-static {v12, v13}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    if-eqz v11, :cond_12

    .line 175
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_12

    move-object v14, v3

    goto :goto_7

    :cond_12
    move-object v14, v13

    :goto_7
    if-eqz v2, :cond_15

    if-lez v2, :cond_13

    .line 179
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide v15

    iget-object v10, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->messages:Ljava/util/List;

    sub-int/2addr v2, v7

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tgs/aics/bean/Message;

    invoke-virtual {v2}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide v17

    sub-long v15, v15, v17

    cmp-long v2, v15, v5

    if-gtz v2, :cond_15

    :cond_13
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->isTimestampShown()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_8

    .line 186
    :cond_14
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    if-eqz v2, :cond_16

    .line 187
    invoke-virtual {v4, v9}, Lcom/tgs/aics/bean/Message;->setTimestampShown(Z)V

    .line 188
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 180
    :cond_15
    :goto_8
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    if-eqz v2, :cond_16

    .line 181
    invoke-virtual {v4, v7}, Lcom/tgs/aics/bean/Message;->setTimestampShown(Z)V

    .line 182
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide v9

    invoke-static {v5, v9, v10}, Lcom/tgs/aics/utils/Utils;->messageTimeFormat(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_16
    :goto_9
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getContentType()Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object v2

    .line 193
    sget-object v5, Lcom/tgs/aics/bean/Message$MessageContentType;->CHAT_MESSAGE:Lcom/tgs/aics/bean/Message$MessageContentType;

    const-string v9, "tgs_aics_outcoming_message_content"

    const-string v15, "</p>"

    const-string v6, "<br/>"

    const-string v10, "<p>"

    if-eq v2, v5, :cond_2f

    sget-object v5, Lcom/tgs/aics/bean/Message$MessageContentType;->RATING_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-eq v2, v5, :cond_2f

    sget-object v5, Lcom/tgs/aics/bean/Message$MessageContentType;->FORM:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-eq v2, v5, :cond_2f

    sget-object v5, Lcom/tgs/aics/bean/Message$MessageContentType;->FORM_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-eq v2, v5, :cond_2f

    sget-object v5, Lcom/tgs/aics/bean/Message$MessageContentType;->CLIENT_APP_LOG_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-eq v2, v5, :cond_2f

    sget-object v5, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_ISSUE:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-ne v2, v5, :cond_17

    goto/16 :goto_10

    .line 253
    :cond_17
    sget-object v3, Lcom/tgs/aics/bean/Message$MessageContentType;->PIC:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-ne v2, v3, :cond_1f

    .line 254
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    if-eqz v3, :cond_18

    .line 255
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    invoke-virtual {v3, v8}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->setVisibility(I)V

    .line 257
    :cond_18
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->img:Lcom/tgs/aics/utils/RoundedImageView;

    if-eqz v3, :cond_1d

    .line 258
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->img:Lcom/tgs/aics/utils/RoundedImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/tgs/aics/utils/RoundedImageView;->setVisibility(I)V

    if-eqz v11, :cond_1c

    .line 262
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1c

    .line 263
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    .line 264
    invoke-virtual {v3}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getLocalUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 265
    invoke-virtual {v3}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getLocalUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    .line 267
    :cond_19
    sget-boolean v3, Lcom/tgs/aics/utils/ConstantUtil;->isDomestic:Z

    if-eqz v3, :cond_1a

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    invoke-virtual {v3}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getThumbnailUrlCn()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_1a
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    invoke-virtual {v3}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    .line 268
    :goto_a
    sget-boolean v6, Lcom/tgs/aics/utils/ConstantUtil;->isDomestic:Z

    if-eqz v6, :cond_1b

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    invoke-virtual {v6}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getUrlCn()Ljava/lang/String;

    goto :goto_b

    :cond_1b
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    invoke-virtual {v9}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getUrl()Ljava/lang/String;

    .line 270
    :goto_b
    iget-object v5, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    .line 271
    invoke-virtual {v5, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->img:Lcom/tgs/aics/utils/RoundedImageView;

    .line 272
    invoke-virtual {v3, v5}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 276
    :cond_1c
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->img:Lcom/tgs/aics/utils/RoundedImageView;

    new-instance v5, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0, v4}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/adapter/MessageRecyclerAdapter;Lcom/tgs/aics/bean/Message;)V

    invoke-virtual {v3, v5}, Lcom/tgs/aics/utils/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 285
    iget-object v5, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->img:Lcom/tgs/aics/utils/RoundedImageView;

    invoke-virtual {v5, v3, v3, v3, v3}, Lcom/tgs/aics/utils/RoundedImageView;->setCorners(FFFF)V

    .line 288
    :cond_1d
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1e

    .line 289
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    :cond_1e
    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v5, "tgs_aics_outcoming_message_img"

    invoke-static {v3, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v4, v3}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->showMediaAuditTipIfNeed(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/Message;I)V

    .line 294
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2e

    .line 295
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 296
    iget-object v9, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 297
    iget-object v5, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_f

    .line 299
    :cond_1f
    sget-object v5, Lcom/tgs/aics/bean/Message$MessageContentType;->VIDEO:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-ne v2, v5, :cond_28

    .line 300
    iget-object v5, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    if-eqz v5, :cond_20

    .line 301
    iget-object v5, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    invoke-virtual {v5, v8}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->setVisibility(I)V

    .line 303
    :cond_20
    iget-object v5, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->img:Lcom/tgs/aics/utils/RoundedImageView;

    if-eqz v5, :cond_21

    .line 304
    iget-object v5, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->img:Lcom/tgs/aics/utils/RoundedImageView;

    invoke-virtual {v5, v8}, Lcom/tgs/aics/utils/RoundedImageView;->setVisibility(I)V

    .line 306
    :cond_21
    iget-object v5, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_25

    if-eqz v11, :cond_24

    .line 308
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_24

    const/4 v3, 0x0

    .line 309
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    .line 310
    invoke-virtual {v5}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getLocalUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 311
    invoke-virtual {v5}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getLocalUrl()Ljava/lang/String;

    goto :goto_c

    .line 313
    :cond_22
    sget-boolean v5, Lcom/tgs/aics/utils/ConstantUtil;->isDomestic:Z

    if-eqz v5, :cond_23

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    invoke-virtual {v5}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getUrlCn()Ljava/lang/String;

    goto :goto_c

    :cond_23
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    invoke-virtual {v5}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->getUrl()Ljava/lang/String;

    goto :goto_c

    :cond_24
    const/4 v3, 0x0

    .line 317
    :goto_c
    iget-object v5, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoLayout:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0, v4}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/tgs/aics/adapter/MessageRecyclerAdapter;Lcom/tgs/aics/bean/Message;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :cond_25
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoName:Landroid/widget/TextView;

    if-eqz v3, :cond_26

    .line 328
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoName:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_26
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoSize:Landroid/widget/TextView;

    if-eqz v3, :cond_27

    .line 330
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoSize:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :cond_27
    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v5, "tgs_aics_outcoming_message_video_layout"

    invoke-static {v3, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v4, v3}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->showMediaAuditTipIfNeed(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/Message;I)V

    .line 335
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2e

    .line 336
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 337
    iget-object v9, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 338
    iget-object v5, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_f

    :cond_28
    const/4 v11, 0x0

    .line 340
    sget-object v3, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_RECHARGE_RECORD_FEEDBACK:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-ne v2, v3, :cond_2e

    .line 341
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    if-eqz v3, :cond_2a

    .line 342
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    invoke-virtual {v3, v11}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->setVisibility(I)V

    .line 343
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v5

    if-eqz v5, :cond_2a

    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getFeedRechargeRecord()Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

    move-result-object v5

    if-eqz v5, :cond_2a

    .line 344
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getFeedRechargeRecord()Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

    move-result-object v5

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    .line 346
    iget-object v12, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v14, "tgs_aics_recharge_query_purchase_feedback"

    .line 347
    invoke-static {v12, v14}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x0

    aput-object v12, v11, v3

    iget-object v12, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v8, "tgs_aics_recharge_query_pay_time"

    .line 348
    invoke-static {v12, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 p2, v2

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getRechargeTime()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v2, v3

    invoke-static {v12, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v7

    .line 349
    invoke-virtual {v5}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getOrderId()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x2

    aput-object v2, v11, v12

    .line 350
    invoke-virtual {v5}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getGiftName()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x3

    aput-object v2, v11, v12

    .line 351
    invoke-virtual {v5}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getCurrency()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x4

    aput-object v2, v11, v12

    .line 352
    invoke-virtual {v5}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getPayPrice()Ljava/lang/String;

    move-result-object v2

    const/16 v18, 0x5

    aput-object v2, v11, v18

    .line 353
    invoke-virtual {v5}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getShipStatus()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v11, v3

    const-string v2, "<p><strong>>>> %s</strong></p><p></p><p>%s</p><p>%s</p><p>%s - %s%s</p><p><span>%s</span></p>"

    .line 346
    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-virtual {v5}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getOrderId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_29

    new-array v2, v3, [Ljava/lang/Object;

    .line 356
    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 357
    invoke-static {v3, v14}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    aput-object v3, v2, v11

    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 358
    invoke-static {v3, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getRechargeTime()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v11

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 359
    invoke-virtual {v5}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getGiftName()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x2

    aput-object v3, v2, v8

    .line 360
    invoke-virtual {v5}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getCurrency()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x3

    aput-object v3, v2, v8

    .line 361
    invoke-virtual {v5}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getPayPrice()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    .line 362
    invoke-virtual {v5}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->getShipStatus()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v18

    const-string v3, "<p><strong>>>> %s</strong></p><p></p><p>%s</p><p>%s - %s%s</p><p><span>%s</span></p>"

    .line 356
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 364
    :cond_29
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    invoke-virtual {v2, v10, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->setHtml(Ljava/lang/String;)V

    goto :goto_d

    :cond_2a
    move-object/from16 p2, v2

    .line 368
    :goto_d
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->img:Lcom/tgs/aics/utils/RoundedImageView;

    if-eqz v2, :cond_2b

    .line 369
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->img:Lcom/tgs/aics/utils/RoundedImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/tgs/aics/utils/RoundedImageView;->setVisibility(I)V

    goto :goto_e

    :cond_2b
    const/16 v3, 0x8

    .line 370
    :goto_e
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2c

    .line 371
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    :cond_2c
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mediaAuditTip:Landroid/widget/TextView;

    if-eqz v2, :cond_2d

    .line 373
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mediaAuditTip:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    :cond_2d
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_36

    .line 377
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 378
    iget-object v3, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 379
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_13

    :cond_2e
    :goto_f
    move-object/from16 p2, v2

    goto/16 :goto_13

    :cond_2f
    :goto_10
    move-object/from16 p2, v2

    .line 198
    iget-object v5, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    if-eqz v5, :cond_33

    .line 199
    iget-object v5, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->setVisibility(I)V

    const-string v5, "\n"

    .line 200
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "go_to_evaluate"

    .line 201
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v8, "</a>"

    if-eqz v5, :cond_30

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v11, "tgs_aics_evaluate_dialog_title"

    invoke-static {v5, v11}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</p>\n<a href=\"aics://comment\">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v11, "tgs_aics_go_to_evaluate"

    invoke-static {v5, v11}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    :cond_30
    const-string v5, "go_to_upload_client_log"

    .line 203
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 204
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->isFormCommitted()Z

    move-result v3

    const-string v5, "tgs_aics_upload_log_and_help_us_optimize"

    if-eqz v3, :cond_31

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</p>\n<p>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v8, "tgs_aics_sent"

    invoke-static {v5, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    .line 207
    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</p>\n<a href=\"aics://log_upload\">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v11, "tgs_aics_click_to_send"

    invoke-static {v5, v11}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 209
    :cond_32
    :goto_11
    iget-object v5, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    invoke-virtual {v3, v10, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/adapter/MessageRecyclerAdapter;)V

    invoke-virtual {v5, v3, v6}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->setHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;)V

    .line 222
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    new-instance v5, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v4}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/adapter/MessageRecyclerAdapter;Lcom/tgs/aics/bean/Message;)V

    invoke-virtual {v3, v5}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;->setOnClickATagListener(Lcom/tgs/aics/thirdtool/htmltextview/OnClickATagListener;)V

    .line 242
    :cond_33
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->img:Lcom/tgs/aics/utils/RoundedImageView;

    if-eqz v3, :cond_34

    .line 243
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->img:Lcom/tgs/aics/utils/RoundedImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/tgs/aics/utils/RoundedImageView;->setVisibility(I)V

    goto :goto_12

    :cond_34
    const/16 v5, 0x8

    .line 244
    :goto_12
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_35

    .line 245
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    :cond_35
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_36

    .line 249
    iget-object v3, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 250
    iget-object v5, v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v9}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 251
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    :cond_36
    :goto_13
    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->PIC:Lcom/tgs/aics/bean/Message$MessageContentType;

    move-object/from16 v3, p2

    if-eq v3, v2, :cond_37

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->VIDEO:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-eq v3, v2, :cond_37

    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mediaAuditTip:Landroid/widget/TextView;

    if-eqz v2, :cond_37

    .line 385
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mediaAuditTip:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    :cond_37
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3c

    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendProgressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_3c

    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->loadFailIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_3c

    .line 389
    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getSendStatus()Lcom/tgs/aics/bean/Message$MessageSendStatus;

    move-result-object v2

    if-nez v2, :cond_38

    .line 390
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_14

    .line 392
    :cond_38
    sget-object v2, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$1;->$SwitchMap$com$tgs$aics$bean$Message$MessageSendStatus:[I

    invoke-virtual {v4}, Lcom/tgs/aics/bean/Message;->getSendStatus()Lcom/tgs/aics/bean/Message$MessageSendStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tgs/aics/bean/Message$MessageSendStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v7, :cond_3b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_39

    goto :goto_14

    .line 400
    :cond_39
    invoke-direct/range {p0 .. p1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->showSendingStatus(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;)V

    goto :goto_14

    .line 397
    :cond_3a
    invoke-direct/range {p0 .. p1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->showSendFailStatus(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;)V

    goto :goto_14

    .line 394
    :cond_3b
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 406
    :cond_3c
    :goto_14
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->loadFailIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_3d

    .line 407
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->loadFailIcon:Landroid/widget/ImageView;

    new-instance v3, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v4}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/tgs/aics/adapter/MessageRecyclerAdapter;Lcom/tgs/aics/bean/Message;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    :cond_3d
    :goto_15
    iget-object v2, v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    if-eqz v2, :cond_3e

    .line 425
    invoke-virtual {v1, v4}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->selectText(Lcom/tgs/aics/bean/Message;)V

    :cond_3e
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;
    .locals 3

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v1, "tgs_aics_item_outcoming_message"

    invoke-static {p1, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v1, "tgs_aics_item_system_message"

    invoke-static {p1, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v1, "tgs_aics_item_incoming_message"

    invoke-static {p1, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 89
    :goto_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;

    iget-object v1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;-><init>(Lcom/tgs/aics/adapter/MessageRecyclerAdapter;Landroid/view/View;ILandroid/content/Context;)V

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/Message;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 527
    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->messages:Ljava/util/List;

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method
