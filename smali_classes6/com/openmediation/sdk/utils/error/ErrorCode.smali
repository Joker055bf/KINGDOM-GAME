.class public interface abstract Lcom/openmediation/sdk/utils/error/ErrorCode;
.super Ljava/lang/Object;


# static fields
.field public static final CODE_INIT_EXCEPTION:I = 0x86

.field public static final CODE_INIT_INVALID_REQUEST:I = 0x6f

.field public static final CODE_INIT_NETWORK_ERROR:I = 0x79

.field public static final CODE_INIT_REQUEST_ERROR:I = 0x87

.field public static final CODE_INIT_RESPONSE_CHECK_ERROR:I = 0x84

.field public static final CODE_INIT_RESPONSE_PARSE_ERROR:I = 0x85

.field public static final CODE_INIT_SERVER_ERROR:I = 0x83

.field public static final CODE_INIT_UNKNOWN_INTERNAL_ERROR:I = 0x97

.field public static final CODE_INTERNAL_INIT_EXCEPTION:I = 0xd

.field public static final CODE_INTERNAL_INIT_REQUEST_ERROR:I = 0xe

.field public static final CODE_INTERNAL_INIT_RESPONSE_PARSE_ERROR:I = 0xc

.field public static final CODE_INTERNAL_REQUEST_ACTIVITY:I = 0x5

.field public static final CODE_INTERNAL_REQUEST_APPKEY:I = 0x3

.field public static final CODE_INTERNAL_REQUEST_GDPR:I = 0x7

.field public static final CODE_INTERNAL_REQUEST_PERMISSION:I = 0x8

.field public static final CODE_INTERNAL_REQUEST_PLACEMENTID:I = 0x4

.field public static final CODE_INTERNAL_REQUEST_WEBVIEW:I = 0x6

.field public static final CODE_INTERNAL_RESPONSE_CHECK_ERROR:I = 0xb

.field public static final CODE_INTERNAL_SERVER_ERROR:I = 0x1

.field public static final CODE_INTERNAL_SERVER_FAILED:I = 0x2

.field public static final CODE_INTERNAL_UNKNOWN_ACTIVITY:I = 0x9

.field public static final CODE_INTERNAL_UNKNOWN_OTHER:I = 0xa

.field public static final CODE_LOAD_FAILED_IN_ADAPTER:I = 0xf5

.field public static final CODE_LOAD_INVALID_REQUEST:I = 0xd3

.field public static final CODE_LOAD_NETWORK_ERROR:I = 0xdd

.field public static final CODE_LOAD_NO_AVAILABLE_AD:I = 0xf1

.field public static final CODE_LOAD_SDK_UNINITIALIZED:I = 0xf2

.field public static final CODE_LOAD_SERVER_ERROR:I = 0xe7

.field public static final CODE_LOAD_UNKNOWN_ERROR:I = 0xfb

.field public static final CODE_SHOW_FAILED_IN_ADAPTER:I = 0x159

.field public static final CODE_SHOW_IMPRESSION_NOT_ENABLED:I = 0x191

.field public static final CODE_SHOW_INVALID_ARGUMENT:I = 0x137

.field public static final CODE_SHOW_NO_AD_READY:I = 0x155

.field public static final CODE_SHOW_SCENE_CAPPED:I = 0x157

.field public static final CODE_SHOW_SCENE_NOT_FOUND:I = 0x160

.field public static final CODE_SHOW_SDK_UNINITIALIZED:I = 0x156

.field public static final ERROR_CONTEXT:Ljava/lang/String; = "Context error"

.field public static final ERROR_CREATE_MEDIATION_ADAPTER:Ljava/lang/String; = "Create mediation adapter failed"

.field public static final ERROR_INIT_FAILED:Ljava/lang/String; = "Om SDK init failed"

.field public static final ERROR_LOAD_AD_BUT_DESTROYED:Ljava/lang/String; = "This ad object has been destroyed , please re-init it before load ad"

.field public static final ERROR_LOAD_CAPPED:Ljava/lang/String; = "Load Capped, "

.field public static final ERROR_NOT_INIT:Ljava/lang/String; = "SDK Not init"

.field public static final ERROR_NO_FILL:Ljava/lang/String; = "No Fill, "

.field public static final ERROR_PLACEMENT_EMPTY:Ljava/lang/String; = "Config is not contain this placement"

.field public static final ERROR_PLACEMENT_ID:Ljava/lang/String; = "Placement id is empty"

.field public static final ERROR_PLACEMENT_TYPE:Ljava/lang/String; = "Placement type match error"

.field public static final ERROR_TIMEOUT:Ljava/lang/String; = "Timeout"

.field public static final MSG_INIT_EXCEPTION:Ljava/lang/String; = "Init Unknown Error: "

.field public static final MSG_INIT_INVALID_REQUEST:Ljava/lang/String; = "Init Invalid Request, "

.field public static final MSG_INIT_NETWORK_ERROR:Ljava/lang/String; = "Init Network Error"

.field public static final MSG_INIT_REQUEST_ERROR:Ljava/lang/String; = "Init Request Error: "

.field public static final MSG_INIT_RESPONSE_CHECK_ERROR:Ljava/lang/String; = "Init Error: Response data check error"

.field public static final MSG_INIT_RESPONSE_PARSE_ERROR:Ljava/lang/String; = "Init Error: Response data parse error"

.field public static final MSG_INIT_SERVER_ERROR:Ljava/lang/String; = "Init Server Error, Response Code: "

.field public static final MSG_INIT_UNKNOWN_INTERNAL_ERROR:Ljava/lang/String; = "Init Unknown Internal Error, "

.field public static final MSG_LOAD_FAILED_IN_ADAPTER:Ljava/lang/String; = "Instance Load Failed In Adapter"

.field public static final MSG_LOAD_INVALID_LOADING:Ljava/lang/String; = "Load Invalid Request, Placement is loading"

.field public static final MSG_LOAD_INVALID_SHOWING:Ljava/lang/String; = "Load Invalid Request, Placement is showing"

.field public static final MSG_LOAD_NETWORK_ERROR:Ljava/lang/String; = "Load Network Error"

.field public static final MSG_LOAD_NO_AVAILABLE_AD:Ljava/lang/String; = "Load No Available Ad, "

.field public static final MSG_LOAD_SDK_UNINITIALIZED:Ljava/lang/String; = "Load SDK Uninitialized"

.field public static final MSG_LOAD_SERVER_ERROR:Ljava/lang/String; = "Load Server Error, "

.field public static final MSG_LOAD_UNKNOWN_ERROR:Ljava/lang/String; = "Load Unknown Internal Error"

.field public static final MSG_SHOW_FAILED_IN_ADAPTER:Ljava/lang/String; = "Show Failed In Adapter"

.field public static final MSG_SHOW_IMPRESSION_NOT_ENABLED:Ljava/lang/String; = "Ad revenue measurement is not enabled"

.field public static final MSG_SHOW_INVALID_ARGUMENT:Ljava/lang/String; = "Show Invalid Argument, "

.field public static final MSG_SHOW_NO_AD_READY:Ljava/lang/String; = "No Ad Ready"

.field public static final MSG_SHOW_SCENE_CAPPED:Ljava/lang/String; = "Scene Capped"

.field public static final MSG_SHOW_SCENE_NOT_FOUND:Ljava/lang/String; = "Scene not found"

.field public static final MSG_SHOW_SDK_UNINITIALIZED:Ljava/lang/String; = "SDK Uninitialized"
