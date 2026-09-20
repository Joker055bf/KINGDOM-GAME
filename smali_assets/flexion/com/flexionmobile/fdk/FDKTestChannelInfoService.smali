.class public Lcom/flexionmobile/fdk/FDKTestChannelInfoService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/ChannelInfoServiceInternal;


# static fields
.field private static final TEST_MODE_CHANNEL_NAME:Ljava/lang/String; = "test_mode"

.field private static final TEST_MODE_STORE_PAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ctmapp://storepage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/flexionmobile/fdk/FDKTestChannelInfoService;->TEST_MODE_STORE_PAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentChannelInfo(Landroid/content/Context;)Lcom/flexionmobile/fdk/ChannelInfo;
    .locals 3

    new-instance p1, Lcom/flexionmobile/fdk/ChannelInfo;

    sget-object v0, Lcom/flexionmobile/fdk/FDKTestChannelInfoService;->TEST_MODE_STORE_PAGE_URI:Landroid/net/Uri;

    const-string v1, "test_mode"

    const/4 v2, 0x1

    invoke-direct {p1, v1, v0, v2}, Lcom/flexionmobile/fdk/ChannelInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Z)V

    return-object p1
.end method
