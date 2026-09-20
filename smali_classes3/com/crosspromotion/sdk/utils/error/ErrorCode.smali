.class public Lcom/crosspromotion/sdk/utils/error/ErrorCode;
.super Ljava/lang/Object;


# static fields
.field public static final CODE_BID_INTERNAL_ERROR:I = 0x196

.field public static final CODE_BID_NETWORK_ERROR:I = 0x192

.field public static final CODE_BID_NO_BID:I = 0x195

.field public static final CODE_BID_SDK_NOT_INIT:I = 0x191

.field public static final CODE_BID_SERVER_ERROR:I = 0x194

.field public static final CODE_BID_TIMEOUT:I = 0x193

.field public static final CODE_LOAD_BANNER_UNKNOWN_EXCEPTION:I = 0xdd

.field public static final CODE_LOAD_BEFORE_UNKNOWN_ERROR:I = 0xd9

.field public static final CODE_LOAD_DESTROYED:I = 0xdc

.field public static final CODE_LOAD_DOWNLOAD_EXCEPTION:I = 0xd6

.field public static final CODE_LOAD_DOWNLOAD_FAILED:I = 0xd5

.field public static final CODE_LOAD_FREQUENCY_ERROR:I = 0xce

.field public static final CODE_LOAD_GDPR_REFUSE:I = 0xca

.field public static final CODE_LOAD_NETWORK_ERROR:I = 0xcf

.field public static final CODE_LOAD_NOT_INITIALIZED:I = 0xc9

.field public static final CODE_LOAD_NO_FILL:I = 0xd1

.field public static final CODE_LOAD_PARSE_FAILED:I = 0xd3

.field public static final CODE_LOAD_PLACEMENT_AD_TYPE_INCORRECT:I = 0xcd

.field public static final CODE_LOAD_PLACEMENT_EMPTY:I = 0xcb

.field public static final CODE_LOAD_PLACEMENT_IS_SHOWING:I = 0xd7

.field public static final CODE_LOAD_PLACEMENT_NOT_FOUND:I = 0xcc

.field public static final CODE_LOAD_RESOURCE_ERROR:I = 0xd8

.field public static final CODE_LOAD_SERVER_ERROR:I = 0xd0

.field public static final CODE_LOAD_TIMEOUT:I = 0xd2

.field public static final CODE_LOAD_UNKNOWN_ACTIVITY:I = 0xdb

.field public static final CODE_LOAD_UNKNOWN_EXCEPTION:I = 0xd4

.field public static final CODE_SHOW_FAIL_NOT_READY:I = 0x131

.field public static final CODE_SHOW_INVALID_ARGUMENT:I = 0x134

.field public static final CODE_SHOW_NOT_INITIALIZED:I = 0x130

.field public static final CODE_SHOW_PLACEMENT_AD_TYPE_INCORRECT:I = 0x12f

.field public static final CODE_SHOW_PLACEMENT_EMPTY:I = 0x12d

.field public static final CODE_SHOW_PLACEMENT_NOT_FOUND:I = 0x12e

.field public static final CODE_SHOW_RESOURCE_ERROR:I = 0x132

.field public static final CODE_SHOW_UNKNOWN_EXCEPTION:I = 0x133

.field private static final MSG_BID_INTERNAL_ERROR:Ljava/lang/String; = "Internal Error"

.field private static final MSG_BID_NO_BID:Ljava/lang/String; = "NoBid"

.field private static final MSG_BID_SDK_NETWORK:Ljava/lang/String; = "Network is currently unavailable"

.field private static final MSG_BID_SDK_NOT_INIT:Ljava/lang/String; = "SDK Uninitialized"

.field private static final MSG_BID_SERVER_ERROR:Ljava/lang/String; = "Bid Server Error"

.field private static final MSG_BID_TIMEOUT:Ljava/lang/String; = "Bid Timeout"

.field private static final MSG_LOAD_BANNER_UNKNOWN_EXCEPTION:Ljava/lang/String; = "Load failed: unknown exception occurred"

.field private static final MSG_LOAD_BEFORE_UNKNOWN_ERROR:Ljava/lang/String; = "Load failed: unknown exception occurred"

.field private static final MSG_LOAD_DESTROYED:Ljava/lang/String; = "Load failed: ad has bean destroyed"

.field private static final MSG_LOAD_DOWNLOAD_EXCEPTION:Ljava/lang/String; = "Load failed: unknown exception occurred"

.field private static final MSG_LOAD_DOWNLOAD_FAILED:Ljava/lang/String; = "Load failed: assets download failed"

.field private static final MSG_LOAD_FREQUENCY_ERROR:Ljava/lang/String; = "Load failed: no ad fill"

.field private static final MSG_LOAD_GDPR_REFUSE:Ljava/lang/String; = "Load failed: GDPR refuse"

.field private static final MSG_LOAD_NETWORK_ERROR:Ljava/lang/String; = "Load failed: network is currently unavailable"

.field private static final MSG_LOAD_NOT_INITIALIZED:Ljava/lang/String; = "Load failed: SDK not initialized"

.field private static final MSG_LOAD_NO_FILL:Ljava/lang/String; = "Load failed: no ad fill"

.field private static final MSG_LOAD_PARSE_FAILED:Ljava/lang/String; = "Load failed: data parsing failed"

.field private static final MSG_LOAD_PLACEMENT_AD_TYPE_INCORRECT:Ljava/lang/String; = "Load failed: adtype wrong"

.field private static final MSG_LOAD_PLACEMENT_EMPTY:Ljava/lang/String; = "Load failed: placement is empty"

.field private static final MSG_LOAD_PLACEMENT_IS_SHOWING:Ljava/lang/String; = "Load failed: placement is showing"

.field private static final MSG_LOAD_PLACEMENT_NOT_FOUND:Ljava/lang/String; = "Load failed: Placement not found in app"

.field private static final MSG_LOAD_RESOURCE_ERROR:Ljava/lang/String; = "Load failed: resource error"

.field private static final MSG_LOAD_SERVER_ERROR:Ljava/lang/String; = "Load failed: server error"

.field private static final MSG_LOAD_TIMEOUT:Ljava/lang/String; = "Load failed: cache resource timeout"

.field private static final MSG_LOAD_UNKNOWN_ACTIVITY:Ljava/lang/String; = "Load failed: activity is unknown"

.field private static final MSG_LOAD_UNKNOWN_EXCEPTION:Ljava/lang/String; = "Load failed: unknown exception occurred"

.field private static final MSG_SHOW_FAIL_NOT_READY:Ljava/lang/String; = "Show failed: ad not ready"

.field public static final MSG_SHOW_INVALID_ARGUMENT:Ljava/lang/String; = "Show failed: Invalid Argument, "

.field private static final MSG_SHOW_NOT_INITIALIZED:Ljava/lang/String; = "Show failed: SDK not initialized"

.field private static final MSG_SHOW_PLACEMENT_AD_TYPE_INCORRECT:Ljava/lang/String; = "Show failed: adtype wrong"

.field private static final MSG_SHOW_PLACEMENT_EMPTY:Ljava/lang/String; = "Show failed: placement empty"

.field private static final MSG_SHOW_PLACEMENT_NOT_FOUND:Ljava/lang/String; = "Show failed: placement not found in app"

.field private static final MSG_SHOW_RESOURCE_ERROR:Ljava/lang/String; = "Show failed: resource not ready"

.field private static final MSG_SHOW_UNKNOWN_EXCEPTION:Ljava/lang/String; = "Show failed: unknown exception occurred"

.field private static mErrorMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xc9

    const-string v2, "Load failed: SDK not initialized"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xca

    const-string v2, "Load failed: GDPR refuse"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xcb

    const-string v2, "Load failed: placement is empty"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xcc

    const-string v2, "Load failed: Placement not found in app"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xcd

    const-string v2, "Load failed: adtype wrong"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xce

    const-string v2, "Load failed: no ad fill"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xcf

    const-string v3, "Load failed: network is currently unavailable"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xd0

    const-string v3, "Load failed: server error"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xd1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xd2

    const-string v2, "Load failed: cache resource timeout"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xd3

    const-string v2, "Load failed: data parsing failed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xd4

    const-string v2, "Load failed: unknown exception occurred"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xd5

    const-string v3, "Load failed: assets download failed"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xd7

    const-string v3, "Load failed: placement is showing"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xd8

    const-string v3, "Load failed: resource error"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xdb

    const-string v3, "Load failed: activity is unknown"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xdc

    const-string v3, "Load failed: ad has bean destroyed"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0xdd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0x12d

    const-string v2, "Show failed: placement empty"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0x12e

    const-string v2, "Show failed: placement not found in app"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0x12f

    const-string v2, "Show failed: adtype wrong"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0x130

    const-string v2, "Show failed: SDK not initialized"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0x131

    const-string v2, "Show failed: ad not ready"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0x132

    const-string v2, "Show failed: resource not ready"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0x133

    const-string v2, "Show failed: unknown exception occurred"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0x134

    const-string v2, "Show failed: Invalid Argument, "

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0x191

    const-string v2, "SDK Uninitialized"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0x192

    const-string v2, "Network is currently unavailable"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0x193

    const-string v2, "Bid Timeout"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0x194

    const-string v2, "Bid Server Error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0x195

    const-string v2, "NoBid"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    const/16 v1, 0x196

    const-string v2, "Internal Error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getErrorMessage(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/crosspromotion/sdk/utils/error/ErrorCode;->mErrorMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
