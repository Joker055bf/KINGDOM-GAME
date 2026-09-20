.class public Lcom/tgs/aics/utils/ConstantUtil;
.super Ljava/lang/Object;
.source "ConstantUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/utils/ConstantUtil$InitParams;,
        Lcom/tgs/aics/utils/ConstantUtil$EvaluationSystemStyle;,
        Lcom/tgs/aics/utils/ConstantUtil$MessageErrorCode;
    }
.end annotation


# static fields
.field public static BaseServerTimestamp:J = 0x0L

.field public static final FORM_COMPONENTS_TYPE_DATE:Ljava/lang/String; = "date"

.field public static final FORM_COMPONENTS_TYPE_DATE_RANGE:Ljava/lang/String; = "date_range"

.field public static final FORM_COMPONENTS_TYPE_INPUT:Ljava/lang/String; = "input"

.field public static final FORM_COMPONENTS_TYPE_MULTIPLE_SELECT:Ljava/lang/String; = "multiple_select"

.field public static final FORM_COMPONENTS_TYPE_NUMBER_INPUT:Ljava/lang/String; = "number_input"

.field public static final FORM_COMPONENTS_TYPE_PICTURE:Ljava/lang/String; = "picture"

.field public static final FORM_COMPONENTS_TYPE_SELECT:Ljava/lang/String; = "select"

.field public static final FORM_COMPONENTS_TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final FORM_COMPONENTS_TYPE_TEXTAREA:Ljava/lang/String; = "textarea"

.field public static final FORM_COMPONENTS_TYPE_UPLOAD:Ljava/lang/String; = "upload"

.field public static final FORM_COMPONENTS_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final GAME_NAME_BROADCAST_ACTION:Ljava/lang/String; = "tgs_aics_game_name_update"

.field public static final GET_HISTORY_MESSAGE_COUNT_PER_TIME:I = 0x14

.field public static final GV_NUM_COLUMNS_LANDSCAPE:I = 0x7

.field public static final GV_NUM_COLUMNS_PORTRAIT:I = 0x4

.field public static final HTML_FOOTER:Ljava/lang/String; = "</body></html>"

.field public static final HTML_HEADER:Ljava/lang/String; = "<!DOCTYPE html><html><head><style>p { margin: 0; }</style></head><body>"

.field public static final INTENT_KEY_CONFIG_ID:Ljava/lang/String; = "config_id"

.field public static final INTENT_KEY_PLAYER_ID:Ljava/lang/String; = "player_id"

.field public static final INTENT_KEY_PLAYER_ISSUE:Ljava/lang/String; = "intent_key_player_issue"

.field public static final INTENT_KEY_SERVER_ID:Ljava/lang/String; = "server_id"

.field public static InitialTimestamp:J = 0x0L

.field public static final URL_PREFIX_AICS_COMMENT:Ljava/lang/String; = "aics://comment"

.field public static final URL_PREFIX_AICS_DETAIL:Ljava/lang/String; = "aics://detail"

.field public static final URL_PREFIX_AICS_FILE_UPLOAD:Ljava/lang/String; = "aics://log_upload"

.field public static final URL_PREFIX_AICS_FORM:Ljava/lang/String; = "aics://form"

.field public static final URL_PREFIX_AICS_LIST:Ljava/lang/String; = "aics://list"

.field public static final URL_PREFIX_AICS_QUESTIONNAIRE_CLEAR_ALL_SELECTIONS:Ljava/lang/String; = "aics://questionnaire_clear_all_selections"

.field public static final URL_PREFIX_AICS_QUESTIONNAIRE_VIEW_IMAGE:Ljava/lang/String; = "aics://questionnaire_view_image//"

.field public static final URL_PREFIX_AICS_RECHARGE_QUERY:Ljava/lang/String; = "aics://recharge_record_query"

.field public static clientId:Ljava/lang/String; = ""

.field public static context:Landroid/content/Context; = null

.field public static customDefineParams:Lcom/tgs/aics/bean/CustomDefineParams; = null

.field public static deviceId:Ljava/lang/String; = null

.field public static gameCSAvatar:Landroid/graphics/drawable/Drawable; = null

.field public static gameNameFromServer:Ljava/lang/String; = ""

.field public static gameUnreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener; = null

.field public static getMessageListener:Lcom/tgs/aics/listener/IGetMessageListener; = null

.field public static isDomestic:Z = false

.field public static isLandscape:Z = false

.field public static isReverseLandscape:Z = false

.field public static isShowNavigationBar:Z = false

.field public static newEvaluationSystemBean:Lcom/tgs/aics/bean/NewEvaluationSystemBean;

.field public static questionnaireSubmitListener:Lcom/tgs/aics/listener/IQuestionnaireSubmitListener;

.field public static tmpStashFormMessageId:Ljava/lang/String;

.field public static tmpStashMessageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tgs/aics/bean/Message;",
            ">;"
        }
    .end annotation
.end field

.field public static unreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener;

.field public static webSocketService:Lcom/tgs/aics/websocket/WebSocketService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    const-string v0, ""

    .line 129
    sput-object v0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashFormMessageId:Ljava/lang/String;

    .line 138
    sput-object v0, Lcom/tgs/aics/utils/ConstantUtil;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUniqueId()Ljava/lang/String;
    .locals 3

    .line 141
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->playerId:Ljava/lang/String;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil;->deviceId:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
