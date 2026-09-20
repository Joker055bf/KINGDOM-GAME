.class public final enum Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;

.field public static final enum INIT_APPLICATION_FAILURE:Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;

    const-string v1, "INIT_APPLICATION_FAILURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;->INIT_APPLICATION_FAILURE:Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;

    aput-object v0, v1, v2

    sput-object v1, Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;->$VALUES:[Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;
    .locals 1

    const-class v0, Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;

    return-object p0
.end method

.method public static values()[Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;
    .locals 1

    sget-object v0, Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;->$VALUES:[Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;

    invoke-virtual {v0}, [Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flexionmobile/fdk/InitErrorResult$ResponseCode;

    return-object v0
.end method
