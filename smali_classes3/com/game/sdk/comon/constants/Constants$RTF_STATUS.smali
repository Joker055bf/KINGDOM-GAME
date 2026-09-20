.class public final enum Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/constants/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RTF_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;

.field public static final enum AUTHENING:Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;

.field public static final enum DONE:Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;

    const-string v1, "AUTHENING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;->AUTHENING:Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;

    .line 36
    new-instance v1, Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;

    const-string v3, "DONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;->DONE:Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 34
    sput-object v3, Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;->$VALUES:[Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;
    .locals 1

    .line 34
    const-class v0, Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;
    .locals 1

    .line 34
    sget-object v0, Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;->$VALUES:[Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;

    invoke-virtual {v0}, [Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/game/sdk/comon/constants/Constants$RTF_STATUS;

    return-object v0
.end method
