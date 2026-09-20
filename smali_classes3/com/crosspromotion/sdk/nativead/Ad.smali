.class public final Lcom/crosspromotion/sdk/nativead/Ad;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crosspromotion/sdk/nativead/Ad$Builder;
    }
.end annotation


# instance fields
.field private final mCTA:Ljava/lang/String;

.field private final mContent:Landroid/graphics/Bitmap;

.field private final mDescription:Ljava/lang/String;

.field private final mIcon:Landroid/graphics/Bitmap;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/crosspromotion/sdk/nativead/Ad$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->access$000(Lcom/crosspromotion/sdk/nativead/Ad$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crosspromotion/sdk/nativead/Ad;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->access$100(Lcom/crosspromotion/sdk/nativead/Ad$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crosspromotion/sdk/nativead/Ad;->mDescription:Ljava/lang/String;

    invoke-static {p1}, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->access$200(Lcom/crosspromotion/sdk/nativead/Ad$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crosspromotion/sdk/nativead/Ad;->mCTA:Ljava/lang/String;

    invoke-static {p1}, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->access$300(Lcom/crosspromotion/sdk/nativead/Ad$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/crosspromotion/sdk/nativead/Ad;->mContent:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->access$400(Lcom/crosspromotion/sdk/nativead/Ad$Builder;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/crosspromotion/sdk/nativead/Ad;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/crosspromotion/sdk/nativead/Ad$Builder;Lcom/crosspromotion/sdk/nativead/Ad$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/nativead/Ad;-><init>(Lcom/crosspromotion/sdk/nativead/Ad$Builder;)V

    return-void
.end method


# virtual methods
.method public getCTA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/nativead/Ad;->mCTA:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/nativead/Ad;->mContent:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/nativead/Ad;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/nativead/Ad;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/nativead/Ad;->mTitle:Ljava/lang/String;

    return-object v0
.end method
