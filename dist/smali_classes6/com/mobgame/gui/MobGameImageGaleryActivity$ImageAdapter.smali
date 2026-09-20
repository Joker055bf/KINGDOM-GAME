.class public Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "MobGameImageGaleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobgame/gui/MobGameImageGaleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;


# direct methods
.method public constructor <init>(Lcom/mobgame/gui/MobGameImageGaleryActivity;Landroid/content/Context;Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;)V
    .locals 1

    .line 165
    iput-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    .line 166
    invoke-virtual {p1, v0}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 167
    iput-object p2, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->context:Landroid/content/Context;

    .line 168
    iput-object p3, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->listener:Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;

    return-void
.end method

.method static synthetic access$600(Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;)Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->listener:Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$500(Lcom/mobgame/gui/MobGameImageGaleryActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->getItem(I)Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->getItem(I)Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    .line 186
    :try_start_0
    check-cast p3, Landroid/widget/GridView;

    .line 187
    invoke-virtual {p3}, Landroid/widget/GridView;->getRequestedColumnWidth()I

    move-result p3

    .line 188
    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    mul-int/lit8 p3, p3, 0x2

    :cond_0
    if-nez p2, :cond_1

    .line 192
    new-instance p2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;

    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-direct {p2, v1}, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;-><init>(Lcom/mobgame/gui/MobGameImageGaleryActivity;)V

    .line 193
    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/mobgame/R$layout;->image_galery_item:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 194
    sget v2, Lcom/mobgame/R$id;->imgThumb:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->imgThumb:Landroid/widget/ImageView;

    .line 195
    sget v2, Lcom/mobgame/R$id;->chkImage:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->chkImage:Landroid/widget/CheckBox;

    .line 196
    iget-object v2, p2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->imgThumb:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 197
    iget-object v2, p2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->imgThumb:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 199
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;

    move-object v1, p2

    move-object p2, p3

    .line 203
    :goto_0
    iget-object p3, p2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->chkImage:Landroid/widget/CheckBox;

    invoke-virtual {p3, p1}, Landroid/widget/CheckBox;->setId(I)V

    .line 204
    iget-object p3, p2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->imgThumb:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 205
    iget-object p3, p2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->chkImage:Landroid/widget/CheckBox;

    new-instance v2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$1;

    invoke-direct {v2, p0}, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$1;-><init>(Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;)V

    invoke-virtual {p3, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object p3, p2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->imgThumb:Landroid/widget/ImageView;

    new-instance v2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;-><init>(Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;)V

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance p3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {p3}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/request/RequestOptions;

    .line 245
    iget-object v2, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v3}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$400(Lcom/mobgame/gui/MobGameImageGaleryActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 246
    invoke-virtual {v2, p3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    iget-object v2, p2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->imgThumb:Landroid/widget/ImageView;

    .line 247
    invoke-virtual {p3, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 249
    iget-object p3, p2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->chkImage:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v2}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$200(Lcom/mobgame/gui/MobGameImageGaleryActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, p1

    invoke-virtual {p3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 250
    iput p1, p2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    iget-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget p2, Lcom/mobgame/R$layout;->image_galery_item:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
