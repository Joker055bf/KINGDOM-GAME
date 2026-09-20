.class public Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MessageRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/adapter/MessageRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageRecyclerAdapterViewHolder"
.end annotation


# instance fields
.field public avatar:Landroid/widget/ImageView;

.field public content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

.field private currentSelectedText:Ljava/lang/String;

.field public img:Lcom/tgs/aics/utils/RoundedImageView;

.field public loadFailIcon:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mSelectableTextHelper:Lcom/tgs/aics/selecttext/SelectTextHelper;

.field public mediaAuditTip:Landroid/widget/TextView;

.field public messageTime:Landroid/widget/TextView;

.field public sendProgressBar:Landroid/widget/ProgressBar;

.field public sendStatusLayout:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

.field public txtSystemMessage:Landroid/widget/TextView;

.field public uploadProgressBar:Landroid/widget/ProgressBar;

.field public videoLayout:Landroid/widget/LinearLayout;

.field public videoName:Landroid/widget/TextView;

.field public videoSize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/adapter/MessageRecyclerAdapter;Landroid/view/View;ILandroid/content/Context;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    .line 568
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 570
    iput-object p4, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    const-string p1, "tgs_aics_outcoming_message_avatar"

    .line 574
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->avatar:Landroid/widget/ImageView;

    const-string p1, "tgs_aics_outcoming_message_time"

    .line 575
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    const-string p1, "tgs_aics_outcoming_message_content"

    .line 576
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    const-string p1, "tgs_aics_outcoming_message_img"

    .line 577
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/utils/RoundedImageView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->img:Lcom/tgs/aics/utils/RoundedImageView;

    const-string p1, "tgs_aics_outcoming_message_video_layout"

    .line 578
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoLayout:Landroid/widget/LinearLayout;

    const-string p1, "tgs_aics_outcoming_message_video_name"

    .line 579
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoName:Landroid/widget/TextView;

    const-string p1, "tgs_aics_outcoming_message_video_size"

    .line 580
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoSize:Landroid/widget/TextView;

    const-string p1, "tgs_aics_outcoming_message_send_fail"

    .line 581
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->loadFailIcon:Landroid/widget/ImageView;

    const-string p1, "tgs_aics_outcoming_message_img_send_progress"

    .line 582
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->uploadProgressBar:Landroid/widget/ProgressBar;

    const-string p1, "tgs_aics_outcoming_message_send_status_container"

    .line 583
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendStatusLayout:Landroid/widget/FrameLayout;

    const-string p1, "tgs_aics_outcoming_message_send_progress"

    .line 584
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->sendProgressBar:Landroid/widget/ProgressBar;

    const-string p1, "tgs_aics_outcoming_message_media_audit_tip"

    .line 585
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mediaAuditTip:Landroid/widget/TextView;

    goto/16 :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    const-string p1, "tgs_aics_system_message_textview"

    .line 587
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->txtSystemMessage:Landroid/widget/TextView;

    const-string p1, "tgs_aics_system_message_timestamp"

    .line 588
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    const-string p1, "tgs_aics_incoming_message_avatar"

    .line 591
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->avatar:Landroid/widget/ImageView;

    const-string p1, "tgs_aics_incoming_message_time"

    .line 592
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->messageTime:Landroid/widget/TextView;

    const-string p1, "tgs_aics_incoming_message_content"

    .line 593
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    const-string p1, "tgs_aics_incoming_message_img"

    .line 594
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/utils/RoundedImageView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->img:Lcom/tgs/aics/utils/RoundedImageView;

    const-string p1, "tgs_aics_incoming_message_video_layout"

    .line 595
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoLayout:Landroid/widget/LinearLayout;

    const-string p1, "tgs_aics_incoming_message_video_name"

    .line 596
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoName:Landroid/widget/TextView;

    const-string p1, "tgs_aics_incoming_message_video_size"

    .line 597
    invoke-static {p4, p1}, Lcom/tgs/aics/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->videoSize:Landroid/widget/TextView;

    :goto_0
    return-void
.end method

.method static synthetic access$102(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->currentSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;)Landroid/content/Context;
    .locals 0

    .line 545
    iget-object p0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method synthetic lambda$selectText$0$com-tgs-aics-adapter-MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->currentSelectedText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/Utils;->copy2Clipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mSelectableTextHelper:Lcom/tgs/aics/selecttext/SelectTextHelper;

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->reset()V

    :cond_0
    return-void
.end method

.method public selectText(Lcom/tgs/aics/bean/Message;)V
    .locals 5

    .line 602
    new-instance v0, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;

    iget-object v1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->content:Lcom/tgs/aics/thirdtool/htmltextview/HtmlTextView;

    invoke-direct {v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;-><init>(Landroid/widget/TextView;)V

    const-string v1, "#39A6FF"

    .line 603
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->setCursorHandleColor(I)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;

    move-result-object v0

    const/high16 v1, 0x41b00000    # 22.0f

    .line 604
    invoke-virtual {v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->setCursorHandleSizeInDp(F)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;

    move-result-object v0

    const-string v1, "#4D39A6FF"

    .line 605
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->setSelectedColor(I)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 606
    invoke-virtual {v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->setSelectAll(Z)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;

    move-result-object v0

    .line 607
    invoke-virtual {v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->setScrollShow(Z)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 608
    invoke-virtual {v0, v2}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->setSelectedAllNoPop(Z)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;

    move-result-object v0

    .line 609
    invoke-virtual {v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->setMagnifierShow(Z)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 610
    invoke-virtual {v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->setSelectTextLength(I)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;

    move-result-object v0

    const/16 v1, 0x64

    .line 611
    invoke-virtual {v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->setPopDelay(I)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mContext:Landroid/content/Context;

    const-string v2, "tgs_aics_text_selection_option_copy"

    .line 612
    invoke-static {v1, v2}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->addItem(Ljava/lang/String;Lcom/tgs/aics/selecttext/SelectTextHelper$Builder$OnSeparateItemClickListener;)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 617
    invoke-virtual {v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->setPopSpanCount(I)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mContext:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "tgs_aics_text_select_pop_shape"

    .line 619
    invoke-static {v1, v2, v3}, Lcom/tgs/aics/utils/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mContext:Landroid/content/Context;

    const-string v3, "mipmap"

    const-string v4, "tgs_aics_text_select_pop_arrow"

    .line 620
    invoke-static {v2, v3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 618
    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->setPopStyle(II)Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$Builder;->build()Lcom/tgs/aics/selecttext/SelectTextHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mSelectableTextHelper:Lcom/tgs/aics/selecttext/SelectTextHelper;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->this$0:Lcom/tgs/aics/adapter/MessageRecyclerAdapter;

    invoke-static {v0}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter;->access$000(Lcom/tgs/aics/adapter/MessageRecyclerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mSelectableTextHelper:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v0, p0, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;->mSelectableTextHelper:Lcom/tgs/aics/selecttext/SelectTextHelper;

    new-instance v1, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder$1;-><init>(Lcom/tgs/aics/adapter/MessageRecyclerAdapter$MessageRecyclerAdapterViewHolder;Lcom/tgs/aics/bean/Message;)V

    invoke-virtual {v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->setSelectListener(Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;)V

    :cond_0
    return-void
.end method
