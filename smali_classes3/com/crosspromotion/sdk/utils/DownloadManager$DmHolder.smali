.class final Lcom/crosspromotion/sdk/utils/DownloadManager$DmHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crosspromotion/sdk/utils/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DmHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/crosspromotion/sdk/utils/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/crosspromotion/sdk/utils/DownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/crosspromotion/sdk/utils/DownloadManager;-><init>(Lcom/crosspromotion/sdk/utils/DownloadManager$1;)V

    sput-object v0, Lcom/crosspromotion/sdk/utils/DownloadManager$DmHolder;->INSTANCE:Lcom/crosspromotion/sdk/utils/DownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/crosspromotion/sdk/utils/DownloadManager;
    .locals 1

    sget-object v0, Lcom/crosspromotion/sdk/utils/DownloadManager$DmHolder;->INSTANCE:Lcom/crosspromotion/sdk/utils/DownloadManager;

    return-object v0
.end method
