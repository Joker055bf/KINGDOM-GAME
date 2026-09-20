.class public Lcom/tgs/aics/adapter/FormListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FormListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/adapter/FormListAdapter$DescTextViewHolder;,
        Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;,
        Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;,
        Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;,
        Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;
    }
.end annotation


# instance fields
.field private final FORM_REQUEST_STORAGE:I

.field private final IMAGE_ITEM_PATH_SEPARATOR:Ljava/lang/String;

.field private currentFormListBeanItem:Lcom/tgs/aics/bean/FormListBean$Item;

.field private currentPictureViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

.field public dataSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/FormListBean$Item;",
            ">;"
        }
    .end annotation
.end field

.field private gridLayoutColumnCount:I

.field public mContext:Landroid/content/Context;

.field private mFocusPosition:I

.field private final picListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final picMaxCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final pickMultipleMedia:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/PickVisualMediaRequest;",
            ">;"
        }
    .end annotation
.end field

.field private pictureViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

.field private selectedPicList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/activity/result/ActivityResultLauncher;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/PickVisualMediaRequest;",
            ">;I)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mFocusPosition:I

    const/4 v0, 0x4

    .line 61
    iput v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->gridLayoutColumnCount:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->dataSources:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->IMAGE_ITEM_PATH_SEPARATOR:Ljava/lang/String;

    .line 77
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->picMaxCountMap:Ljava/util/Map;

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->picListMap:Ljava/util/Map;

    .line 79
    iput-object p3, p0, Lcom/tgs/aics/adapter/FormListAdapter;->pickMultipleMedia:Landroidx/activity/result/ActivityResultLauncher;

    .line 80
    iput p4, p0, Lcom/tgs/aics/adapter/FormListAdapter;->FORM_REQUEST_STORAGE:I

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/adapter/FormListAdapter;Ljava/lang/String;I)Z
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/adapter/FormListAdapter;->isOnlyPointNumber(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private displayImage(Lcom/ypx/imagepicker/bean/ImageItem;Landroid/widget/ImageView;)V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object p1, p1, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private getViewTypeWith(Lcom/tgs/aics/bean/FormListBean$Item;I)Landroid/view/View;
    .locals 8

    .line 111
    sget-object v0, Lcom/tgs/aics/adapter/FormListAdapter$3;->$SwitchMap$com$tgs$aics$bean$FieldType:[I

    iget-object v1, p1, Lcom/tgs/aics/bean/FormListBean$Item;->type:Lcom/tgs/aics/bean/FieldType;

    invoke-virtual {v1}, Lcom/tgs/aics/bean/FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "tgs_aics_form_required_fields"

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    .line 292
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 273
    :pswitch_0
    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->picMaxCountMap:Ljava/util/Map;

    iget-object v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->fieldId:Ljava/lang/String;

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    const-string v0, "tgs_aics_form_picture_item"

    invoke-static {p2, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 276
    new-instance v0, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    invoke-direct {v0, p2}, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->pictureViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    .line 278
    iget-object v0, v0, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;->mustT:Landroid/widget/TextView;

    iget-boolean v5, p1, Lcom/tgs/aics/bean/FormListBean$Item;->required:Z

    if-eqz v5, :cond_0

    move v4, v6

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->pictureViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    iget-object v0, v0, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;->titleT:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-boolean v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->pictureViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    iget-object v0, v0, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;->errorT:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->pictureViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    iget-object v0, v0, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;->errorT:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->pictureViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    iget-object v0, v0, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;->errorT:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->pictureViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    invoke-direct {p0, v0, p1}, Lcom/tgs/aics/adapter/FormListAdapter;->refreshGridLayout(Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Lcom/tgs/aics/bean/FormListBean$Item;)V

    return-object p2

    .line 254
    :pswitch_1
    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    const-string v0, "tgs_aics_form_select_item"

    invoke-static {p2, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 255
    new-instance v0, Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;

    invoke-direct {v0, p2}, Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;-><init>(Landroid/view/View;)V

    .line 257
    iget-object v5, v0, Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;->mustT:Landroid/widget/TextView;

    iget-boolean v7, p1, Lcom/tgs/aics/bean/FormListBean$Item;->required:Z

    if-eqz v7, :cond_2

    move v4, v6

    :cond_2
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v4, v0, Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;->titleT:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v4, v0, Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;->contentT:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/tgs/aics/bean/FormListBean$Item;->placeholder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v4, v0, Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;->contentT:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-boolean v4, p1, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    if-eqz v4, :cond_3

    .line 263
    iget-object v2, v0, Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;->errorT:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object p1, v0, Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;->errorT:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 266
    :cond_3
    iget-object p1, v0, Lcom/tgs/aics/adapter/FormListAdapter$SelectViewHolder;->errorT:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object p2

    .line 201
    :pswitch_2
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "tgs_aics_form_multiinput_item"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 202
    new-instance v1, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;

    invoke-direct {v1, v0}, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;-><init>(Landroid/view/View;)V

    .line 204
    iget-object v2, v1, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->mustT:Landroid/widget/TextView;

    iget-boolean v3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->required:Z

    if-eqz v3, :cond_4

    move v4, v6

    :cond_4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v2, v1, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->titleT:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v2, v1, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->inputT:Landroid/widget/EditText;

    iget-object v3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->placeholder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v2, v1, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->inputT:Landroid/widget/EditText;

    iget-object v3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v2, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 209
    iget-object v2, v1, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->inputT:Landroid/widget/EditText;

    iget-object v3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 210
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/tgs/aics/adapter/FormListAdapter;->textAreaErrorShowLogic(Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;)V

    .line 211
    iget-object v2, v1, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->inputT:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 213
    iget-object p2, v1, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->inputT:Landroid/widget/EditText;

    new-instance v2, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v1}, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/adapter/FormListAdapter;Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;)V

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 224
    iget-object p2, v1, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->inputT:Landroid/widget/EditText;

    new-instance v2, Lcom/tgs/aics/adapter/FormListAdapter$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/tgs/aics/adapter/FormListAdapter$2;-><init>(Lcom/tgs/aics/adapter/FormListAdapter;Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;)V

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v0

    .line 130
    :pswitch_3
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "tgs_aics_form_singleinput_item"

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;

    invoke-direct {v1, v0}, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;-><init>(Landroid/view/View;)V

    .line 133
    iget-object v2, v1, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->mustT:Landroid/widget/TextView;

    iget-boolean v5, p1, Lcom/tgs/aics/bean/FormListBean$Item;->required:Z

    if-eqz v5, :cond_6

    move v4, v6

    :cond_6
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v2, v1, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->titleT:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v2, v1, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    iget-object v4, p1, Lcom/tgs/aics/bean/FormListBean$Item;->placeholder:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, p1, Lcom/tgs/aics/bean/FormListBean$Item;->type:Lcom/tgs/aics/bean/FieldType;

    sget-object v4, Lcom/tgs/aics/bean/FieldType;->FieldTypeNumberInput:Lcom/tgs/aics/bean/FieldType;

    if-ne v2, v4, :cond_8

    .line 137
    iget v2, p1, Lcom/tgs/aics/bean/FormListBean$Item;->numberFormat:I

    if-nez v2, :cond_7

    .line 138
    iget-object v2, v1, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    .line 140
    :cond_7
    iget-object v2, v1, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    const/16 v3, 0x3002

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    .line 143
    :cond_8
    iget-object v2, v1, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 145
    :goto_2
    iget-object v2, v1, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    iget-object v3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 147
    iget-object v2, v1, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    iget-object v3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 148
    :cond_9
    invoke-direct {p0, p1, v1}, Lcom/tgs/aics/adapter/FormListAdapter;->inputErrorShowLogic(Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;)V

    .line 149
    iget-object v2, v1, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 151
    iget-object p2, v1, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    new-instance v2, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v1}, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/adapter/FormListAdapter;Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;)V

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 162
    iget-object p2, v1, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->inputT:Landroid/widget/EditText;

    new-instance v2, Lcom/tgs/aics/adapter/FormListAdapter$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/tgs/aics/adapter/FormListAdapter$1;-><init>(Lcom/tgs/aics/adapter/FormListAdapter;Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;)V

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v0

    .line 113
    :pswitch_4
    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    const-string v0, "tgs_aics_form_text_item"

    invoke-static {p2, v0}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 114
    new-instance v0, Lcom/tgs/aics/adapter/FormListAdapter$DescTextViewHolder;

    invoke-direct {v0, p2}, Lcom/tgs/aics/adapter/FormListAdapter$DescTextViewHolder;-><init>(Landroid/view/View;)V

    .line 116
    iget-object v1, v0, Lcom/tgs/aics/adapter/FormListAdapter$DescTextViewHolder;->mustT:Landroid/widget/TextView;

    iget-boolean v2, p1, Lcom/tgs/aics/bean/FormListBean$Item;->required:Z

    if-eqz v2, :cond_a

    move v4, v6

    :cond_a
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v1, v0, Lcom/tgs/aics/adapter/FormListAdapter$DescTextViewHolder;->titleT:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, v0, Lcom/tgs/aics/adapter/FormListAdapter$DescTextViewHolder;->contentT:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/tgs/aics/bean/FormListBean$Item;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p1, Lcom/tgs/aics/bean/FormListBean$Item;->href:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 120
    iget-object v0, v0, Lcom/tgs/aics/adapter/FormListAdapter$DescTextViewHolder;->contentT:Landroid/widget/TextView;

    new-instance v1, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/adapter/FormListAdapter;Lcom/tgs/aics/bean/FormListBean$Item;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private inputErrorShowLogic(Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;)V
    .locals 8

    .line 303
    iget-boolean v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p2, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->errorT:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "tgs_aics_form_required_fields"

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object p1, p2, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->errorT:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 307
    :cond_0
    iget-object v0, p2, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->errorT:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->regExpression:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "tgs_aics_form_incorrect_format"

    if-nez v0, :cond_2

    .line 311
    iget-object v0, p2, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->errorT:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    iget-object v5, p1, Lcom/tgs/aics/bean/FormListBean$Item;->regExpression:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 313
    iget-object v5, p2, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->errorT:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v0, :cond_2

    return-void

    .line 318
    :cond_2
    iget v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->min:I

    if-lez v0, :cond_3

    iget-object v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->min:I

    if-ge v0, v3, :cond_3

    .line 319
    iget-object v0, p2, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->errorT:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object p1, p2, Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;->errorT:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private isOnlyPointNumber(Ljava/lang/String;I)Z
    .locals 2

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^\\d+\\.?\\d{0,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "}$"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 298
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private refreshGridLayout(Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Lcom/tgs/aics/bean/FormListBean$Item;)V
    .locals 12

    .line 366
    iget-object v0, p1, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;->gridLayout:Landroid/widget/GridLayout;

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    iget-object v0, p1, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;->gridLayout:Landroid/widget/GridLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 371
    iget-object v0, p1, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 372
    iget-object v0, p1, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;->gridLayout:Landroid/widget/GridLayout;

    iget v2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->gridLayoutColumnCount:I

    invoke-virtual {v0, v2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 373
    iget-object v0, p2, Lcom/tgs/aics/bean/FormListBean$Item;->fieldId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tgs/aics/adapter/FormListAdapter;->getPicListById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 375
    iget-object v2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/tgs/aics/utils/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/tgs/aics/utils/ConstantUtil;->isReverseLandscape:Z

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v4, 0x41f00000    # 30.0f

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 v4, 0x42a00000    # 80.0f

    :goto_1
    invoke-static {v3, v4}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/tgs/aics/adapter/FormListAdapter;->gridLayoutColumnCount:I

    div-int/2addr v2, v3

    .line 376
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 377
    iget-object v2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->picMaxCountMap:Ljava/util/Map;

    iget-object v4, p2, Lcom/tgs/aics/bean/FormListBean$Item;->fieldId:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x0

    const-string v5, "tgs_aics_a_layout_pic_select"

    const/high16 v6, 0x40a00000    # 5.0f

    if-lt v0, v2, :cond_3

    .line 378
    iget-object v2, p1, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->setVisibility(I)V

    :goto_2
    if-ge v1, v0, :cond_5

    .line 380
    iget-object v2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v7, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 381
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-object v7, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v8

    iget-object v9, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v9

    iget-object v10, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 383
    invoke-direct {p0, v2, v1, p1, p2}, Lcom/tgs/aics/adapter/FormListAdapter;->setPicItemClick(Landroid/widget/RelativeLayout;ILcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Lcom/tgs/aics/bean/FormListBean$Item;)V

    .line 384
    iget-object v7, p1, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v7, v2}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 387
    :cond_3
    iget-object v2, p1, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 388
    new-instance v2, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 389
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v7, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "tgs_aics_add_pic"

    invoke-static {v7, v8}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 392
    iget-object v7, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v8

    iget-object v9, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v9

    iget-object v10, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 393
    new-instance v7, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, p1, p2}, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/adapter/FormListAdapter;Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Lcom/tgs/aics/bean/FormListBean$Item;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    if-ge v1, v0, :cond_4

    .line 395
    iget-object v7, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iget-object v8, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/tgs/aics/utils/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 396
    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object v8, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v8

    iget-object v9, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v9

    iget-object v10, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v10

    iget-object v11, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v6}, Lcom/tgs/aics/utils/Utils;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 398
    invoke-direct {p0, v7, v1, p1, p2}, Lcom/tgs/aics/adapter/FormListAdapter;->setPicItemClick(Landroid/widget/RelativeLayout;ILcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Lcom/tgs/aics/bean/FormListBean$Item;)V

    .line 399
    iget-object v8, p1, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {v8, v7}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 401
    :cond_4
    iget-object p1, p1, Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;->gridLayout:Landroid/widget/GridLayout;

    invoke-virtual {p1, v2}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private setPicItemClick(Landroid/widget/RelativeLayout;ILcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Lcom/tgs/aics/bean/FormListBean$Item;)V
    .locals 9

    .line 467
    iget-object v0, p4, Lcom/tgs/aics/bean/FormListBean$Item;->fieldId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tgs/aics/adapter/FormListAdapter;->getPicListById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 469
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 470
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 471
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-direct {p0, v1, v7}, Lcom/tgs/aics/adapter/FormListAdapter;->displayImage(Lcom/ypx/imagepicker/bean/ImageItem;Landroid/widget/ImageView;)V

    .line 472
    new-instance v8, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/tgs/aics/adapter/FormListAdapter;Ljava/util/ArrayList;ILcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;)V

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    new-instance p1, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v0, p2}, Lcom/tgs/aics/adapter/FormListAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/tgs/aics/adapter/FormListAdapter;Ljava/util/ArrayList;I)V

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private textAreaErrorShowLogic(Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;)V
    .locals 8

    .line 327
    iget-boolean v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p2, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->errorT:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "tgs_aics_form_required_fields"

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object p1, p2, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->errorT:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 331
    :cond_0
    iget-object v0, p2, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->errorT:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    iget-object v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->regExpression:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "tgs_aics_form_incorrect_format"

    if-nez v0, :cond_2

    .line 334
    iget-object v0, p2, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->errorT:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    iget-object v5, p1, Lcom/tgs/aics/bean/FormListBean$Item;->regExpression:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 336
    iget-object v5, p2, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->errorT:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v0, :cond_2

    return-void

    .line 341
    :cond_2
    iget v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->min:I

    if-lez v0, :cond_3

    iget-object v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->min:I

    if-ge v0, v3, :cond_3

    .line 342
    iget-object v0, p2, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->errorT:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object p1, p2, Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;->errorT:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getAllPicList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    iget-object v1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->picListMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 353
    iget-object v3, p0, Lcom/tgs/aics/adapter/FormListAdapter;->picListMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 355
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ypx/imagepicker/bean/ImageItem;

    .line 356
    new-instance v5, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-direct {v5}, Lcom/ypx/imagepicker/bean/ImageItem;-><init>()V

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tgs/aics/adapter/FormListAdapter;->IMAGE_ITEM_PATH_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/ypx/imagepicker/bean/ImageItem;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/ypx/imagepicker/bean/ImageItem;->setPath(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->dataSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentFormListBeanItem()Lcom/tgs/aics/bean/FormListBean$Item;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->currentFormListBeanItem:Lcom/tgs/aics/bean/FormListBean$Item;

    return-object v0
.end method

.method public getCurrentPictureViewHolder()Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->currentPictureViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->dataSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPicListById(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->picListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 408
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 100
    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->dataSources:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tgs/aics/bean/FormListBean$Item;

    invoke-direct {p0, p2, p1}, Lcom/tgs/aics/adapter/FormListAdapter;->getViewTypeWith(Lcom/tgs/aics/bean/FormListBean$Item;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public imgPick(Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Lcom/tgs/aics/bean/FormListBean$Item;)V
    .locals 2

    .line 450
    iput-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->currentPictureViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    .line 451
    iput-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->currentFormListBeanItem:Lcom/tgs/aics/bean/FormListBean$Item;

    .line 452
    iget-object p1, p2, Lcom/tgs/aics/bean/FormListBean$Item;->fieldId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tgs/aics/adapter/FormListAdapter;->getPicListById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->selectedPicList:Ljava/util/ArrayList;

    .line 454
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 456
    iget-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->FORM_REQUEST_STORAGE:I

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 458
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->pickMultipleMedia:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    invoke-direct {v0}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    .line 459
    iget-object p2, p2, Lcom/tgs/aics/bean/FormListBean$Item;->type:Lcom/tgs/aics/bean/FieldType;

    sget-object v1, Lcom/tgs/aics/bean/FieldType;->FieldTypeVideo:Lcom/tgs/aics/bean/FieldType;

    if-ne p2, v1, :cond_1

    .line 460
    sget-object p2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VideoOnly;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VideoOnly;

    goto :goto_0

    .line 461
    :cond_1
    sget-object p2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    .line 459
    :goto_0
    invoke-virtual {v0, p2}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object p2

    .line 462
    invoke-virtual {p2}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object p2

    .line 458
    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public imgSelectCallback(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->currentPictureViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->currentFormListBeanItem:Lcom/tgs/aics/bean/FormListBean$Item;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tgs/aics/adapter/FormListAdapter;->selectedPicList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    .line 418
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ypx/imagepicker/bean/ImageItem;

    .line 419
    iget-object v3, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Lcom/ypx/imagepicker/bean/ImageItem;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/tgs/aics/utils/Utils;->getFileSizeInBytes(Landroid/content/Context;Ljava/io/File;)J

    move-result-wide v3

    .line 420
    invoke-static {v3, v4}, Lcom/tgs/aics/utils/Utils;->isFileSizeGreaterThan100MB(J)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 426
    :cond_1
    iget-object v3, p0, Lcom/tgs/aics/adapter/FormListAdapter;->selectedPicList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->currentFormListBeanItem:Lcom/tgs/aics/bean/FormListBean$Item;

    iput-boolean v0, p1, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    .line 430
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/FormListAdapter;->notifyDataSetChanged()V

    .line 433
    iget-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->picListMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->currentFormListBeanItem:Lcom/tgs/aics/bean/FormListBean$Item;

    iget-object v2, v2, Lcom/tgs/aics/bean/FormListBean$Item;->fieldId:Ljava/lang/String;

    iget-object v3, p0, Lcom/tgs/aics/adapter/FormListAdapter;->selectedPicList:Ljava/util/ArrayList;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->currentPictureViewHolder:Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;

    iget-object v2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->currentFormListBeanItem:Lcom/tgs/aics/bean/FormListBean$Item;

    invoke-direct {p0, p1, v2}, Lcom/tgs/aics/adapter/FormListAdapter;->refreshGridLayout(Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Lcom/tgs/aics/bean/FormListBean$Item;)V

    if-eqz v1, :cond_3

    .line 437
    iget-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "tgs_aics_pic_or_video_over_size"

    invoke-static {p1, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method synthetic lambda$getViewTypeWith$0$com-tgs-aics-adapter-FormListAdapter(Lcom/tgs/aics/bean/FormListBean$Item;Landroid/view/View;)V
    .locals 2

    .line 121
    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    instance-of v0, p2, Lcom/tgs/aics/ui/activity/FormCreateActivity;

    if-eqz v0, :cond_0

    .line 122
    check-cast p2, Lcom/tgs/aics/ui/activity/FormCreateActivity;

    iget-object p1, p1, Lcom/tgs/aics/bean/FormListBean$Item;->href:Ljava/lang/String;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/tgs/aics/ui/activity/FormCreateActivity;->handleUrlAction(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$getViewTypeWith$1$com-tgs-aics-adapter-FormListAdapter(Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;Landroid/view/View;Z)V
    .locals 0

    .line 152
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p4, :cond_3

    .line 153
    iget p4, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mFocusPosition:I

    if-ne p4, p3, :cond_3

    .line 154
    iget-boolean p3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->required:Z

    if-eqz p3, :cond_2

    .line 155
    iget-object p3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    if-eqz p3, :cond_1

    iget-object p3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    iput-boolean p3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    .line 156
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/adapter/FormListAdapter;->inputErrorShowLogic(Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$SingleInputViewHolder;)V

    goto :goto_2

    .line 158
    :cond_3
    iput p3, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mFocusPosition:I

    :goto_2
    return-void
.end method

.method synthetic lambda$getViewTypeWith$2$com-tgs-aics-adapter-FormListAdapter(Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;Landroid/view/View;Z)V
    .locals 0

    .line 214
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p4, :cond_3

    .line 215
    iget p4, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mFocusPosition:I

    if-ne p4, p3, :cond_3

    .line 216
    iget-boolean p3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->required:Z

    if-eqz p3, :cond_2

    .line 217
    iget-object p3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    if-eqz p3, :cond_1

    iget-object p3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    iput-boolean p3, p1, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    .line 218
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/adapter/FormListAdapter;->textAreaErrorShowLogic(Lcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$MultiInputViewHolder;)V

    goto :goto_2

    .line 220
    :cond_3
    iput p3, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mFocusPosition:I

    :goto_2
    return-void
.end method

.method synthetic lambda$refreshGridLayout$3$com-tgs-aics-adapter-FormListAdapter(Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Lcom/tgs/aics/bean/FormListBean$Item;Landroid/view/View;)V
    .locals 0

    .line 393
    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/adapter/FormListAdapter;->imgPick(Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Lcom/tgs/aics/bean/FormListBean$Item;)V

    return-void
.end method

.method synthetic lambda$setPicItemClick$4$com-tgs-aics-adapter-FormListAdapter(Ljava/util/ArrayList;ILcom/tgs/aics/bean/FormListBean$Item;Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Landroid/view/View;)V
    .locals 0

    .line 473
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 476
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 477
    iput-boolean p2, p3, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    goto :goto_0

    .line 479
    :cond_0
    iget-boolean p2, p3, Lcom/tgs/aics/bean/FormListBean$Item;->required:Z

    iput-boolean p2, p3, Lcom/tgs/aics/bean/FormListBean$Item;->isShowRequiredTip:Z

    .line 480
    :goto_0
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/FormListAdapter;->notifyDataSetChanged()V

    .line 482
    iget-object p2, p0, Lcom/tgs/aics/adapter/FormListAdapter;->picListMap:Ljava/util/Map;

    iget-object p5, p3, Lcom/tgs/aics/bean/FormListBean$Item;->fieldId:Ljava/lang/String;

    invoke-interface {p2, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-direct {p0, p4, p3}, Lcom/tgs/aics/adapter/FormListAdapter;->refreshGridLayout(Lcom/tgs/aics/adapter/FormListAdapter$PictureViewHolder;Lcom/tgs/aics/bean/FormListBean$Item;)V

    return-void
.end method

.method synthetic lambda$setPicItemClick$5$com-tgs-aics-adapter-FormListAdapter(Ljava/util/ArrayList;ILandroid/view/View;)V
    .locals 3

    .line 487
    iget-object p3, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "image_url"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setDataSources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/FormListBean$Item;",
            ">;)V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->dataSources:Ljava/util/List;

    .line 106
    invoke-virtual {p0}, Lcom/tgs/aics/adapter/FormListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setGridLayoutCount(I)V
    .locals 0

    .line 568
    iput p1, p0, Lcom/tgs/aics/adapter/FormListAdapter;->gridLayoutColumnCount:I

    return-void
.end method
