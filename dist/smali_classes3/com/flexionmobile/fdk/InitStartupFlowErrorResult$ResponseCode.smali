.class public final enum Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

.field public static final enum ERROR:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

.field public static final enum FLOW_ACTIVITY_NOT_FOUND:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

.field public static final enum FLOW_NOT_INITIALIZED:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

.field public static final enum FLOW_NOT_STARTED:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

.field public static final enum TIMED_OUT:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    const-string v1, "FLOW_NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;->FLOW_NOT_INITIALIZED:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    new-instance v1, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    const-string v3, "FLOW_NOT_STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;->FLOW_NOT_STARTED:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    new-instance v3, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    const-string v5, "TIMED_OUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;->TIMED_OUT:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    new-instance v5, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    const-string v7, "FLOW_ACTIVITY_NOT_FOUND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;->FLOW_ACTIVITY_NOT_FOUND:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    new-instance v7, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;->ERROR:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;->$VALUES:[Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;
    .locals 1

    const-class v0, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    return-object p0
.end method

.method public static values()[Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;
    .locals 1

    sget-object v0, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;->$VALUES:[Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    invoke-virtual {v0}, [Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    return-object v0
.end method
