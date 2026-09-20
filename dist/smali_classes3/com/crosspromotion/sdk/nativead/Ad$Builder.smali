.class public Lcom/crosspromotion/sdk/nativead/Ad$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crosspromotion/sdk/nativead/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCTA:Ljava/lang/String;

.field private mContent:Landroid/graphics/Bitmap;

.field private mDescription:Ljava/lang/String;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/crosspromotion/sdk/nativead/Ad$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/crosspromotion/sdk/nativead/Ad$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/crosspromotion/sdk/nativead/Ad$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->mCTA:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/crosspromotion/sdk/nativead/Ad$Builder;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->mContent:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/crosspromotion/sdk/nativead/Ad$Builder;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/crosspromotion/sdk/nativead/Ad;
    .locals 2

    new-instance v0, Lcom/crosspromotion/sdk/nativead/Ad;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/crosspromotion/sdk/nativead/Ad;-><init>(Lcom/crosspromotion/sdk/nativead/Ad$Builder;Lcom/crosspromotion/sdk/nativead/Ad$1;)V

    return-object v0
.end method

.method public content(Landroid/graphics/Bitmap;)Lcom/crosspromotion/sdk/nativead/Ad$Builder;
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->mContent:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public cta(Ljava/lang/String;)Lcom/crosspromotion/sdk/nativead/Ad$Builder;
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->mCTA:Ljava/lang/String;

    return-object p0
.end method

.method public description(Ljava/lang/String;)Lcom/crosspromotion/sdk/nativead/Ad$Builder;
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public icon(Landroid/graphics/Bitmap;)Lcom/crosspromotion/sdk/nativead/Ad$Builder;
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/crosspromotion/sdk/nativead/Ad$Builder;
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
