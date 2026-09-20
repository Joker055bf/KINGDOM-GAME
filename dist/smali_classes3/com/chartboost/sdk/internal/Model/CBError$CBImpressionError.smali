.class public final enum Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/internal/Model/CBError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBImpressionError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum ACTIVITY_MISSING_IN_MANIFEST:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum ASSET_MISSING:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum ASSET_PREFETCH_IN_PROGRESS:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum EMPTY_LOCAL_VIDEO_LIST:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum END_POINT_DISABLED:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum ERROR_CREATING_VIEW:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum HARDWARE_ACCELERATION_DISABLED:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum INCOMPATIBLE_API_VERSION:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum INTERNAL:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum INTERNET_UNAVAILABLE_AT_CACHE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum INTERNET_UNAVAILABLE_AT_SHOW:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum INVALID_LOCATION:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum INVALID_RESPONSE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum NETWORK_FAILURE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum NO_AD_FOUND:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum NO_HOST_ACTIVITY:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum PENDING_IMPRESSION_ERROR:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum SESSION_NOT_STARTED:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum TOO_MANY_CONNECTIONS:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum USER_CANCELLATION:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum VIDEO_ID_MISSING:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum VIDEO_UNAVAILABLE_FOR_CURRENT_ORIENTATION:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum WEB_VIEW_CLIENT_RECEIVED_ERROR:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum WEB_VIEW_PAGE_LOAD_TIMEOUT:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

.field public static final enum WRONG_ORIENTATION:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;


# instance fields
.field private adID:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 35

    .line 1
    new-instance v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 5
    new-instance v1, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v3, "INTERNET_UNAVAILABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 9
    new-instance v3, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v5, "TOO_MANY_CONNECTIONS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->TOO_MANY_CONNECTIONS:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 13
    new-instance v5, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v7, "WRONG_ORIENTATION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->WRONG_ORIENTATION:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 17
    new-instance v7, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v9, "FIRST_SESSION_INTERSTITIALS_DISABLED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 21
    new-instance v9, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v11, "NETWORK_FAILURE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->NETWORK_FAILURE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 25
    new-instance v11, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v13, "NO_AD_FOUND"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 29
    new-instance v13, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v15, "SESSION_NOT_STARTED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 33
    new-instance v15, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v14, "IMPRESSION_ALREADY_VISIBLE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 37
    new-instance v14, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v12, "NO_HOST_ACTIVITY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 41
    new-instance v12, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v10, "USER_CANCELLATION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->USER_CANCELLATION:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 45
    new-instance v10, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v8, "INVALID_LOCATION"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 49
    new-instance v8, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v6, "VIDEO_UNAVAILABLE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 53
    new-instance v6, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v4, "VIDEO_ID_MISSING"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 57
    new-instance v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v2, "ERROR_PLAYING_VIDEO"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 61
    new-instance v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v6, "INVALID_RESPONSE"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 65
    new-instance v6, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v4, "ASSETS_DOWNLOAD_FAILURE"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 69
    new-instance v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v2, "ERROR_CREATING_VIEW"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 73
    new-instance v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v6, "ERROR_DISPLAYING_VIEW"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 77
    new-instance v6, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v4, "INCOMPATIBLE_API_VERSION"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->INCOMPATIBLE_API_VERSION:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 81
    new-instance v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v2, "ERROR_LOADING_WEB_VIEW"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 85
    new-instance v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v6, "ASSET_PREFETCH_IN_PROGRESS"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->ASSET_PREFETCH_IN_PROGRESS:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 89
    new-instance v6, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v4, "ACTIVITY_MISSING_IN_MANIFEST"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->ACTIVITY_MISSING_IN_MANIFEST:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 93
    new-instance v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v4, "EMPTY_LOCAL_VIDEO_LIST"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->EMPTY_LOCAL_VIDEO_LIST:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 97
    new-instance v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v6, "END_POINT_DISABLED"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 101
    new-instance v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v6, "HARDWARE_ACCELERATION_DISABLED"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->HARDWARE_ACCELERATION_DISABLED:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 105
    new-instance v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v6, "PENDING_IMPRESSION_ERROR"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->PENDING_IMPRESSION_ERROR:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 109
    new-instance v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v6, "VIDEO_UNAVAILABLE_FOR_CURRENT_ORIENTATION"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE_FOR_CURRENT_ORIENTATION:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 113
    new-instance v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v6, "ASSET_MISSING"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->ASSET_MISSING:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 117
    new-instance v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v6, "WEB_VIEW_PAGE_LOAD_TIMEOUT"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->WEB_VIEW_PAGE_LOAD_TIMEOUT:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 121
    new-instance v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v6, "WEB_VIEW_CLIENT_RECEIVED_ERROR"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->WEB_VIEW_CLIENT_RECEIVED_ERROR:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 125
    new-instance v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v6, "INTERNET_UNAVAILABLE_AT_SHOW"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE_AT_SHOW:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    .line 129
    new-instance v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const-string v6, "INTERNET_UNAVAILABLE_AT_CACHE"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE_AT_CACHE:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const/16 v2, 0x21

    new-array v2, v2, [Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v31, v2, v0

    const/16 v0, 0x1d

    aput-object v32, v2, v0

    const/16 v0, 0x1e

    aput-object v33, v2, v0

    const/16 v0, 0x1f

    aput-object v34, v2, v0

    const/16 v0, 0x20

    aput-object v4, v2, v0

    .line 130
    sput-object v2, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->$VALUES:[Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, ""

    .line 135
    iput-object p1, p0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->adID:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;
    .locals 1

    .line 1
    const-class v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;
    .locals 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->$VALUES:[Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    return-object v0
.end method


# virtual methods
.method public getAdId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->adID:Ljava/lang/String;

    return-object v0
.end method

.method public setAdId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->adID:Ljava/lang/String;

    return-object p1
.end method
