.class public Lcom/mobgame/gui/MobGameImageGaleryActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MobGameImageGaleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;,
        Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;,
        Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;
    }
.end annotation


# instance fields
.field private arrPath:[Ljava/lang/String;

.field private btnCancel:Landroid/widget/ImageButton;

.field private btnSelect:Landroid/widget/ImageButton;

.field private count:I

.field private countSelected:I

.field private grdImages:Landroid/widget/GridView;

.field private ids:[I

.field private imageAdapter:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

.field private limitSelect:I

.field private thumbnailsselection:[Z

.field private tvHeader:Landroid/widget/TextView;

.field private tvNumberSelected:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->countSelected:I

    const/4 v0, 0x3

    .line 40
    iput v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->limitSelect:I

    return-void
.end method

.method static synthetic access$000(Lcom/mobgame/gui/MobGameImageGaleryActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->countSelected:I

    return p0
.end method

.method static synthetic access$008(Lcom/mobgame/gui/MobGameImageGaleryActivity;)I
    .locals 2

    .line 29
    iget v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->countSelected:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->countSelected:I

    return v0
.end method

.method static synthetic access$010(Lcom/mobgame/gui/MobGameImageGaleryActivity;)I
    .locals 2

    .line 29
    iget v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->countSelected:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->countSelected:I

    return v0
.end method

.method static synthetic access$100(Lcom/mobgame/gui/MobGameImageGaleryActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->limitSelect:I

    return p0
.end method

.method static synthetic access$200(Lcom/mobgame/gui/MobGameImageGaleryActivity;)[Z
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->thumbnailsselection:[Z

    return-object p0
.end method

.method static synthetic access$300(Lcom/mobgame/gui/MobGameImageGaleryActivity;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->tvNumberSelected:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mobgame/gui/MobGameImageGaleryActivity;)[Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->arrPath:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mobgame/gui/MobGameImageGaleryActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->count:I

    return p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->setResult(I)V

    .line 156
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "_id"

    const-string v1, "_data"

    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget p1, Lcom/mobgame/R$layout;->activity_mob_game_image_galery:I

    invoke-virtual {p0, p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "bundle"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "limit"

    .line 48
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->limitSelect:I

    .line 50
    :cond_0
    sget p1, Lcom/mobgame/R$id;->grdImages:I

    invoke-virtual {p0, p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->grdImages:Landroid/widget/GridView;

    .line 51
    sget p1, Lcom/mobgame/R$id;->btnSelect:I

    invoke-virtual {p0, p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->btnSelect:Landroid/widget/ImageButton;

    .line 52
    sget p1, Lcom/mobgame/R$id;->btn_cancel_galery:I

    invoke-virtual {p0, p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->btnCancel:Landroid/widget/ImageButton;

    .line 53
    sget p1, Lcom/mobgame/R$id;->tvNumberSelected:I

    invoke-virtual {p0, p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->tvNumberSelected:Landroid/widget/TextView;

    .line 54
    sget p1, Lcom/mobgame/R$id;->tvHeader:I

    invoke-virtual {p0, p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->tvHeader:Landroid/widget/TextView;

    .line 57
    :try_start_0
    sget v2, Lcom/mobgame/R$string;->images_selected:I

    invoke-static {p0, v2}, Lcom/mobgame/utils/Res;->string(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "datetaken"

    .line 60
    filled-new-array {v1, v0, p1}, [Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual {p0}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "datetaken DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 66
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->count:I

    .line 67
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->arrPath:[Ljava/lang/String;

    .line 68
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->ids:[I

    .line 69
    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->thumbnailsselection:[Z

    .line 70
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 71
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    .line 72
    :goto_0
    iget v3, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->count:I

    if-ge v2, v3, :cond_1

    .line 73
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 74
    iget-object v3, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->arrPath:[Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 75
    iget-object v3, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->ids:[I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->tvNumberSelected:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->countSelected:I

    add-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->limitSelect:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    new-instance v1, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;-><init>(Lcom/mobgame/gui/MobGameImageGaleryActivity;)V

    invoke-direct {v0, p0, p0, v1}, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;-><init>(Lcom/mobgame/gui/MobGameImageGaleryActivity;Landroid/content/Context;Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;)V

    iput-object v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->imageAdapter:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    .line 109
    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->grdImages:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 113
    iget-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->btnSelect:Landroid/widget/ImageButton;

    new-instance v0, Lcom/mobgame/gui/MobGameImageGaleryActivity$2;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/MobGameImageGaleryActivity$2;-><init>(Lcom/mobgame/gui/MobGameImageGaleryActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity;->btnCancel:Landroid/widget/ImageButton;

    new-instance v0, Lcom/mobgame/gui/MobGameImageGaleryActivity$3;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/MobGameImageGaleryActivity$3;-><init>(Lcom/mobgame/gui/MobGameImageGaleryActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
